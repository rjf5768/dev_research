; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gentwf.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gentwf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [7 x i8] c"%s.pin\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.twf\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0Anet %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s %s %d %s %d %s %d %s %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"    pin   %s  nodes   \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"    equiv %s  nodes   \00", align 1
@xNodules = external dso_local global %struct.nodbox*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@rectArray = external dso_local global %struct.rect*, align 8
@eArray = external dso_local global %struct.ebox*, align 8
@yNodules = external dso_local global %struct.nodbox*, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Pin: %s has location outside the range\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"of the edge: %d %d to which it was assigned\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"by an amount: %d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@TWsignal = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A\0A\0A\0A\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%d  %d  at  %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gentwf() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca [12 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.flare*, align 8
  %26 = alloca %struct.flare*, align 8
  %27 = alloca %struct.flare*, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %29 = load i8*, i8** @cktName, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %29) #4
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %32 = call noalias %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** %2, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %34 = load i8*, i8** @cktName, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %34) #4
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %37 = call noalias %struct._IO_FILE* @fopen(i8* noundef %36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %37, %struct._IO_FILE** %1, align 8
  br label %38

38:                                               ; preds = %579, %0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %580

43:                                               ; preds = %38
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef %52)
  br label %579

54:                                               ; preds = %43
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %56 = call i32 @strcmp(i8* noundef %55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %578

58:                                               ; preds = %54
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* noundef %60, i8* noundef %61, i32* noundef %11, i8* noundef %62, i32* noundef %12, i8* noundef %63, i32* noundef %13, i8* noundef %64, i32* noundef %14)
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* noundef %70)
  br label %76

72:                                               ; preds = %58
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* noundef %74)
  br label %76

76:                                               ; preds = %72, %68
  store i32 1000000, i32* %20, align 4
  %77 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %77, i64 %79
  %81 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %80, i32 0, i32 0
  %82 = load %struct.flare*, %struct.flare** %81, align 8
  store %struct.flare* %82, %struct.flare** %25, align 8
  br label %83

83:                                               ; preds = %168, %76
  %84 = load %struct.flare*, %struct.flare** %25, align 8
  %85 = icmp ne %struct.flare* %84, null
  br i1 %85, label %86, label %172

86:                                               ; preds = %83
  %87 = load %struct.flare*, %struct.flare** %25, align 8
  %88 = getelementptr inbounds %struct.flare, %struct.flare* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %21, align 4
  %90 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %90, i64 %92
  %94 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %96, %97
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  br label %109

104:                                              ; preds = %86
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi i32 [ %103, %100 ], [ %108, %104 ]
  %111 = load i32, i32* %20, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %167

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %116 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %117 = load %struct.flare*, %struct.flare** %25, align 8
  %118 = getelementptr inbounds %struct.flare, %struct.flare* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ebox, %struct.ebox* %116, i64 %122
  %124 = getelementptr inbounds %struct.ebox, %struct.ebox* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.rect, %struct.rect* %115, i64 %126
  %128 = getelementptr inbounds %struct.rect, %struct.rect* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %114, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %113
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %134 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %135 = load %struct.flare*, %struct.flare** %25, align 8
  %136 = getelementptr inbounds %struct.flare, %struct.flare* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.ebox, %struct.ebox* %134, i64 %140
  %142 = getelementptr inbounds %struct.ebox, %struct.ebox* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.rect, %struct.rect* %133, i64 %144
  %146 = getelementptr inbounds %struct.rect, %struct.rect* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %132, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %131
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %155, %156
  br label %163

158:                                              ; preds = %149
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sub nsw i32 0, %161
  br label %163

163:                                              ; preds = %158, %154
  %164 = phi i32 [ %157, %154 ], [ %162, %158 ]
  store i32 %164, i32* %20, align 4
  %165 = load %struct.flare*, %struct.flare** %25, align 8
  store %struct.flare* %165, %struct.flare** %27, align 8
  store i32 1, i32* %17, align 4
  br label %166

166:                                              ; preds = %163, %131, %113
  br label %167

167:                                              ; preds = %166, %109
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.flare*, %struct.flare** %25, align 8
  %170 = getelementptr inbounds %struct.flare, %struct.flare* %169, i32 0, i32 2
  %171 = load %struct.flare*, %struct.flare** %170, align 8
  store %struct.flare* %171, %struct.flare** %25, align 8
  br label %83, !llvm.loop !4

172:                                              ; preds = %83
  %173 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %173, i64 %175
  %177 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %176, i32 0, i32 1
  %178 = load %struct.flare*, %struct.flare** %177, align 8
  store %struct.flare* %178, %struct.flare** %26, align 8
  br label %179

179:                                              ; preds = %264, %172
  %180 = load %struct.flare*, %struct.flare** %26, align 8
  %181 = icmp ne %struct.flare* %180, null
  br i1 %181, label %182, label %268

182:                                              ; preds = %179
  %183 = load %struct.flare*, %struct.flare** %26, align 8
  %184 = getelementptr inbounds %struct.flare, %struct.flare* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %21, align 4
  %186 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %186, i64 %188
  %190 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %192, %193
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %182
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 %197, %198
  br label %205

200:                                              ; preds = %182
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sub nsw i32 %201, %202
  %204 = sub nsw i32 0, %203
  br label %205

205:                                              ; preds = %200, %196
  %206 = phi i32 [ %199, %196 ], [ %204, %200 ]
  %207 = load i32, i32* %20, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %263

209:                                              ; preds = %205
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %212 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %213 = load %struct.flare*, %struct.flare** %26, align 8
  %214 = getelementptr inbounds %struct.flare, %struct.flare* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ebox, %struct.ebox* %212, i64 %218
  %220 = getelementptr inbounds %struct.ebox, %struct.ebox* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.rect, %struct.rect* %211, i64 %222
  %224 = getelementptr inbounds %struct.rect, %struct.rect* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp sle i32 %210, %225
  br i1 %226, label %227, label %262

227:                                              ; preds = %209
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %230 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %231 = load %struct.flare*, %struct.flare** %26, align 8
  %232 = getelementptr inbounds %struct.flare, %struct.flare* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ebox, %struct.ebox* %230, i64 %236
  %238 = getelementptr inbounds %struct.ebox, %struct.ebox* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.rect, %struct.rect* %229, i64 %240
  %242 = getelementptr inbounds %struct.rect, %struct.rect* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sge i32 %228, %243
  br i1 %244, label %245, label %262

245:                                              ; preds = %227
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %11, align 4
  %248 = sub nsw i32 %246, %247
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* %11, align 4
  %253 = sub nsw i32 %251, %252
  br label %259

254:                                              ; preds = %245
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %11, align 4
  %257 = sub nsw i32 %255, %256
  %258 = sub nsw i32 0, %257
  br label %259

259:                                              ; preds = %254, %250
  %260 = phi i32 [ %253, %250 ], [ %258, %254 ]
  store i32 %260, i32* %20, align 4
  %261 = load %struct.flare*, %struct.flare** %26, align 8
  store %struct.flare* %261, %struct.flare** %27, align 8
  store i32 1, i32* %17, align 4
  br label %262

262:                                              ; preds = %259, %227, %209
  br label %263

263:                                              ; preds = %262, %205
  br label %264

264:                                              ; preds = %263
  %265 = load %struct.flare*, %struct.flare** %26, align 8
  %266 = getelementptr inbounds %struct.flare, %struct.flare* %265, i32 0, i32 2
  %267 = load %struct.flare*, %struct.flare** %266, align 8
  store %struct.flare* %267, %struct.flare** %26, align 8
  br label %179, !llvm.loop !6

268:                                              ; preds = %179
  %269 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %269, i64 %271
  %273 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %272, i32 0, i32 0
  %274 = load %struct.flare*, %struct.flare** %273, align 8
  store %struct.flare* %274, %struct.flare** %25, align 8
  br label %275

275:                                              ; preds = %360, %268
  %276 = load %struct.flare*, %struct.flare** %25, align 8
  %277 = icmp ne %struct.flare* %276, null
  br i1 %277, label %278, label %364

278:                                              ; preds = %275
  %279 = load %struct.flare*, %struct.flare** %25, align 8
  %280 = getelementptr inbounds %struct.flare, %struct.flare* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %21, align 4
  %282 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %283 = load i32, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %282, i64 %284
  %286 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %22, align 4
  %288 = load i32, i32* %22, align 4
  %289 = load i32, i32* %12, align 4
  %290 = sub nsw i32 %288, %289
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %278
  %293 = load i32, i32* %22, align 4
  %294 = load i32, i32* %12, align 4
  %295 = sub nsw i32 %293, %294
  br label %301

296:                                              ; preds = %278
  %297 = load i32, i32* %22, align 4
  %298 = load i32, i32* %12, align 4
  %299 = sub nsw i32 %297, %298
  %300 = sub nsw i32 0, %299
  br label %301

301:                                              ; preds = %296, %292
  %302 = phi i32 [ %295, %292 ], [ %300, %296 ]
  %303 = load i32, i32* %20, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %359

305:                                              ; preds = %301
  %306 = load i32, i32* %11, align 4
  %307 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %308 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %309 = load %struct.flare*, %struct.flare** %25, align 8
  %310 = getelementptr inbounds %struct.flare, %struct.flare* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ebox, %struct.ebox* %308, i64 %314
  %316 = getelementptr inbounds %struct.ebox, %struct.ebox* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.rect, %struct.rect* %307, i64 %318
  %320 = getelementptr inbounds %struct.rect, %struct.rect* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp sle i32 %306, %321
  br i1 %322, label %323, label %358

323:                                              ; preds = %305
  %324 = load i32, i32* %11, align 4
  %325 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %326 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %327 = load %struct.flare*, %struct.flare** %25, align 8
  %328 = getelementptr inbounds %struct.flare, %struct.flare* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.ebox, %struct.ebox* %326, i64 %332
  %334 = getelementptr inbounds %struct.ebox, %struct.ebox* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.rect, %struct.rect* %325, i64 %336
  %338 = getelementptr inbounds %struct.rect, %struct.rect* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp sge i32 %324, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %323
  %342 = load i32, i32* %22, align 4
  %343 = load i32, i32* %12, align 4
  %344 = sub nsw i32 %342, %343
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = load i32, i32* %22, align 4
  %348 = load i32, i32* %12, align 4
  %349 = sub nsw i32 %347, %348
  br label %355

350:                                              ; preds = %341
  %351 = load i32, i32* %22, align 4
  %352 = load i32, i32* %12, align 4
  %353 = sub nsw i32 %351, %352
  %354 = sub nsw i32 0, %353
  br label %355

355:                                              ; preds = %350, %346
  %356 = phi i32 [ %349, %346 ], [ %354, %350 ]
  store i32 %356, i32* %20, align 4
  %357 = load %struct.flare*, %struct.flare** %25, align 8
  store %struct.flare* %357, %struct.flare** %27, align 8
  store i32 2, i32* %17, align 4
  br label %358

358:                                              ; preds = %355, %323, %305
  br label %359

359:                                              ; preds = %358, %301
  br label %360

360:                                              ; preds = %359
  %361 = load %struct.flare*, %struct.flare** %25, align 8
  %362 = getelementptr inbounds %struct.flare, %struct.flare* %361, i32 0, i32 2
  %363 = load %struct.flare*, %struct.flare** %362, align 8
  store %struct.flare* %363, %struct.flare** %25, align 8
  br label %275, !llvm.loop !7

364:                                              ; preds = %275
  %365 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %365, i64 %367
  %369 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %368, i32 0, i32 1
  %370 = load %struct.flare*, %struct.flare** %369, align 8
  store %struct.flare* %370, %struct.flare** %26, align 8
  br label %371

371:                                              ; preds = %456, %364
  %372 = load %struct.flare*, %struct.flare** %26, align 8
  %373 = icmp ne %struct.flare* %372, null
  br i1 %373, label %374, label %460

374:                                              ; preds = %371
  %375 = load %struct.flare*, %struct.flare** %26, align 8
  %376 = getelementptr inbounds %struct.flare, %struct.flare* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  store i32 %377, i32* %21, align 4
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %379 = load i32, i32* %21, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %380
  %382 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %22, align 4
  %384 = load i32, i32* %22, align 4
  %385 = load i32, i32* %12, align 4
  %386 = sub nsw i32 %384, %385
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %374
  %389 = load i32, i32* %22, align 4
  %390 = load i32, i32* %12, align 4
  %391 = sub nsw i32 %389, %390
  br label %397

392:                                              ; preds = %374
  %393 = load i32, i32* %22, align 4
  %394 = load i32, i32* %12, align 4
  %395 = sub nsw i32 %393, %394
  %396 = sub nsw i32 0, %395
  br label %397

397:                                              ; preds = %392, %388
  %398 = phi i32 [ %391, %388 ], [ %396, %392 ]
  %399 = load i32, i32* %20, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %455

401:                                              ; preds = %397
  %402 = load i32, i32* %11, align 4
  %403 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %404 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %405 = load %struct.flare*, %struct.flare** %26, align 8
  %406 = getelementptr inbounds %struct.flare, %struct.flare* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.ebox, %struct.ebox* %404, i64 %410
  %412 = getelementptr inbounds %struct.ebox, %struct.ebox* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.rect, %struct.rect* %403, i64 %414
  %416 = getelementptr inbounds %struct.rect, %struct.rect* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = icmp sle i32 %402, %417
  br i1 %418, label %419, label %454

419:                                              ; preds = %401
  %420 = load i32, i32* %11, align 4
  %421 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %422 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %423 = load %struct.flare*, %struct.flare** %26, align 8
  %424 = getelementptr inbounds %struct.flare, %struct.flare* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.ebox, %struct.ebox* %422, i64 %428
  %430 = getelementptr inbounds %struct.ebox, %struct.ebox* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.rect, %struct.rect* %421, i64 %432
  %434 = getelementptr inbounds %struct.rect, %struct.rect* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = icmp sge i32 %420, %435
  br i1 %436, label %437, label %454

437:                                              ; preds = %419
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* %12, align 4
  %440 = sub nsw i32 %438, %439
  %441 = icmp sge i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = load i32, i32* %22, align 4
  %444 = load i32, i32* %12, align 4
  %445 = sub nsw i32 %443, %444
  br label %451

446:                                              ; preds = %437
  %447 = load i32, i32* %22, align 4
  %448 = load i32, i32* %12, align 4
  %449 = sub nsw i32 %447, %448
  %450 = sub nsw i32 0, %449
  br label %451

451:                                              ; preds = %446, %442
  %452 = phi i32 [ %445, %442 ], [ %450, %446 ]
  store i32 %452, i32* %20, align 4
  %453 = load %struct.flare*, %struct.flare** %26, align 8
  store %struct.flare* %453, %struct.flare** %27, align 8
  store i32 2, i32* %17, align 4
  br label %454

454:                                              ; preds = %451, %419, %401
  br label %455

455:                                              ; preds = %454, %397
  br label %456

456:                                              ; preds = %455
  %457 = load %struct.flare*, %struct.flare** %26, align 8
  %458 = getelementptr inbounds %struct.flare, %struct.flare* %457, i32 0, i32 2
  %459 = load %struct.flare*, %struct.flare** %458, align 8
  store %struct.flare* %459, %struct.flare** %26, align 8
  br label %371, !llvm.loop !8

460:                                              ; preds = %371
  store i32 0, i32* %23, align 4
  br label %461

461:                                              ; preds = %470, %460
  %462 = load %struct.flare*, %struct.flare** %27, align 8
  %463 = getelementptr inbounds %struct.flare, %struct.flare* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %23, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %23, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %464, i64 %467
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %16, align 4
  br label %470

470:                                              ; preds = %461
  %471 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %472 = load i32, i32* %16, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.ebox, %struct.ebox* %471, i64 %473
  %475 = getelementptr inbounds %struct.ebox, %struct.ebox* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %461, label %478, !llvm.loop !9

478:                                              ; preds = %470
  %479 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %480 = load i32, i32* %16, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.ebox, %struct.ebox* %479, i64 %481
  %483 = getelementptr inbounds %struct.ebox, %struct.ebox* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  store i32 %484, i32* %18, align 4
  %485 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %486 = load i32, i32* %16, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.ebox, %struct.ebox* %485, i64 %487
  %489 = getelementptr inbounds %struct.ebox, %struct.ebox* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  store i32 %490, i32* %19, align 4
  %491 = load i32, i32* %17, align 4
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %493, label %515

493:                                              ; preds = %478
  %494 = load i32, i32* %12, align 4
  %495 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %496 = load i32, i32* %18, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.rect, %struct.rect* %495, i64 %497
  %499 = getelementptr inbounds %struct.rect, %struct.rect* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = sub nsw i32 %494, %500
  store i32 %501, i32* %15, align 4
  %502 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %503 = load i32, i32* %19, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.rect, %struct.rect* %502, i64 %504
  %506 = getelementptr inbounds %struct.rect, %struct.rect* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %509 = load i32, i32* %18, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.rect, %struct.rect* %508, i64 %510
  %512 = getelementptr inbounds %struct.rect, %struct.rect* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = sub nsw i32 %507, %513
  store i32 %514, i32* %24, align 4
  br label %537

515:                                              ; preds = %478
  %516 = load i32, i32* %11, align 4
  %517 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %518 = load i32, i32* %18, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.rect, %struct.rect* %517, i64 %519
  %521 = getelementptr inbounds %struct.rect, %struct.rect* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %516, %522
  store i32 %523, i32* %15, align 4
  %524 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %525 = load i32, i32* %19, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.rect, %struct.rect* %524, i64 %526
  %528 = getelementptr inbounds %struct.rect, %struct.rect* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %531 = load i32, i32* %18, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.rect, %struct.rect* %530, i64 %532
  %534 = getelementptr inbounds %struct.rect, %struct.rect* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = sub nsw i32 %529, %535
  store i32 %536, i32* %24, align 4
  br label %537

537:                                              ; preds = %515, %493
  %538 = load i32, i32* %15, align 4
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %552

540:                                              ; preds = %537
  %541 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %542 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %543 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* noundef %542)
  %544 = load i32, i32* %18, align 4
  %545 = load i32, i32* %19, align 4
  %546 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 noundef %544, i32 noundef %545)
  %547 = load i32, i32* %15, align 4
  %548 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef %547)
  %549 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %551 = call i32 @fflush(%struct._IO_FILE* noundef %550)
  store i32 0, i32* %15, align 4
  store i32 1, i32* @TWsignal, align 4
  br label %572

552:                                              ; preds = %537
  %553 = load i32, i32* %15, align 4
  %554 = load i32, i32* %24, align 4
  %555 = icmp sgt i32 %553, %554
  br i1 %555, label %556, label %571

556:                                              ; preds = %552
  %557 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %558 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %559 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* noundef %558)
  %560 = load i32, i32* %18, align 4
  %561 = load i32, i32* %19, align 4
  %562 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 noundef %560, i32 noundef %561)
  %563 = load i32, i32* %15, align 4
  %564 = load i32, i32* %24, align 4
  %565 = sub nsw i32 %563, %564
  %566 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 noundef %565)
  %567 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %569 = call i32 @fflush(%struct._IO_FILE* noundef %568)
  %570 = load i32, i32* %24, align 4
  store i32 %570, i32* %15, align 4
  store i32 1, i32* @TWsignal, align 4
  br label %571

571:                                              ; preds = %556, %552
  br label %572

572:                                              ; preds = %571, %540
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %574 = load i32, i32* %18, align 4
  %575 = load i32, i32* %19, align 4
  %576 = load i32, i32* %15, align 4
  %577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %573, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 noundef %574, i32 noundef %575, i32 noundef %576)
  br label %578

578:                                              ; preds = %572, %54
  br label %579

579:                                              ; preds = %578, %47
  br label %38, !llvm.loop !10

580:                                              ; preds = %38
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %582 = call i32 @fclose(%struct._IO_FILE* noundef %581)
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %584 = call i32 @fclose(%struct._IO_FILE* noundef %583)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
