; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grdcell.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grdcell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.bustbox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ecount = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@A = external dso_local global %struct.bustbox*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"padside\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@netarray = external dso_local global %struct.dimbox**, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@pinnames = external dso_local global i8**, align 8
@maxterm = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"asplb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"aspub\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"group\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @grdcell(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca [1024 x i8], align 16
  %31 = alloca %struct.cellbox*, align 8
  %32 = alloca %struct.termbox*, align 8
  %33 = alloca %struct.termbox*, align 8
  %34 = alloca %struct.netbox*, align 8
  %35 = alloca %struct.netbox*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @gpass2(%struct._IO_FILE* noundef %36)
  store i32 0, i32* %25, align 4
  store i32 0, i32* @ecount, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %719, %1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %720

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %44 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %200

46:                                               ; preds = %42
  %47 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %47, i64 %50
  %52 = load %struct.cellbox*, %struct.cellbox** %51, align 8
  store %struct.cellbox* %52, %struct.cellbox** %31, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %24)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %75, %46
  %62 = load i32, i32* %11, align 4
  %63 = icmp sle i32 %62, 30
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %65, i64 %67
  %69 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %70, i64 %72
  %74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %61, !llvm.loop !4

78:                                               ; preds = %61
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %82)
  store i32 1, i32* %15, align 4
  br label %84

84:                                               ; preds = %110, %78
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %18, i32* noundef %19)
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %93 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %94 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %93, i64 0
  %95 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %92, i64 %98
  %100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %99, i32 0, i32 0
  store i32 %91, i32* %100, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %103 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %104 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %103, i64 0
  %105 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i64 %107
  %109 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %108, i32 0, i32 1
  store i32 %101, i32* %109, align 4
  br label %110

110:                                              ; preds = %88
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %84, !llvm.loop !6

113:                                              ; preds = %84
  store i32 1, i32* %11, align 4
  br label %114

114:                                              ; preds = %167, %113
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %117 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %116, i64 0
  %118 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %115, %119
  br i1 %120, label %121, label %170

121:                                              ; preds = %114
  %122 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %122, i64 %124
  %126 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  %128 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %128, i64 %130
  %132 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %19, align 4
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %19, align 4
  store i32 %140, i32* %23, align 4
  br label %166

141:                                              ; preds = %121
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %22, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %21, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %21, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* %19, align 4
  store i32 %164, i32* %23, align 4
  br label %165

165:                                              ; preds = %163, %159
  br label %166

166:                                              ; preds = %165, %136
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %114, !llvm.loop !7

170:                                              ; preds = %114
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %20, align 4
  %173 = add nsw i32 %171, %172
  %174 = sdiv i32 %173, 2
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %21, align 4
  %177 = add nsw i32 %175, %176
  %178 = sdiv i32 %177, 2
  store i32 %178, i32* %7, align 4
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %182, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %17)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %187 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %187)
  store i32 1, i32* %16, align 4
  br label %189

189:                                              ; preds = %196, %170
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %194, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18)
  br label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %189, !llvm.loop !8

199:                                              ; preds = %189
  br label %719

200:                                              ; preds = %42
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %202 = call i32 @strcmp(i8* noundef %201, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %337

204:                                              ; preds = %200
  %205 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %205, i64 %208
  %210 = load %struct.cellbox*, %struct.cellbox** %209, align 8
  store %struct.cellbox* %210, %struct.cellbox** %31, align 8
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %211, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %24)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %214 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %213, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %214)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %216, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %217)
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %233, %204
  %220 = load i32, i32* %11, align 4
  %221 = icmp sle i32 %220, 30
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %223, i64 %225
  %227 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  %228 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %228, i64 %230
  %232 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  br label %233

233:                                              ; preds = %222
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %219, !llvm.loop !9

236:                                              ; preds = %219
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %237, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %241 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %239, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %240)
  store i32 1, i32* %15, align 4
  br label %242

242:                                              ; preds = %268, %236
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %242
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %247, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %18, i32* noundef %19)
  %249 = load i32, i32* %18, align 4
  %250 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %251 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %252 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 0
  %253 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %250, i64 %256
  %258 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %257, i32 0, i32 0
  store i32 %249, i32* %258, align 4
  %259 = load i32, i32* %19, align 4
  %260 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %261 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %262 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %261, i64 0
  %263 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %260, i64 %265
  %267 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %266, i32 0, i32 1
  store i32 %259, i32* %267, align 4
  br label %268

268:                                              ; preds = %246
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %15, align 4
  br label %242, !llvm.loop !10

271:                                              ; preds = %242
  store i32 1, i32* %11, align 4
  br label %272

272:                                              ; preds = %325, %271
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %275 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %274, i64 0
  %276 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp sle i32 %273, %277
  br i1 %278, label %279, label %328

279:                                              ; preds = %272
  %280 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %280, i64 %282
  %284 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %18, align 4
  %286 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %286, i64 %288
  %290 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %299

294:                                              ; preds = %279
  %295 = load i32, i32* %18, align 4
  store i32 %295, i32* %20, align 4
  %296 = load i32, i32* %19, align 4
  store i32 %296, i32* %21, align 4
  %297 = load i32, i32* %18, align 4
  store i32 %297, i32* %22, align 4
  %298 = load i32, i32* %19, align 4
  store i32 %298, i32* %23, align 4
  br label %324

299:                                              ; preds = %279
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %20, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = load i32, i32* %18, align 4
  store i32 %304, i32* %20, align 4
  br label %305

305:                                              ; preds = %303, %299
  %306 = load i32, i32* %18, align 4
  %307 = load i32, i32* %22, align 4
  %308 = icmp sgt i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load i32, i32* %18, align 4
  store i32 %310, i32* %22, align 4
  br label %311

311:                                              ; preds = %309, %305
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* %21, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = load i32, i32* %19, align 4
  store i32 %316, i32* %21, align 4
  br label %317

317:                                              ; preds = %315, %311
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %23, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = load i32, i32* %19, align 4
  store i32 %322, i32* %23, align 4
  br label %323

323:                                              ; preds = %321, %317
  br label %324

324:                                              ; preds = %323, %294
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %11, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %11, align 4
  br label %272, !llvm.loop !11

328:                                              ; preds = %272
  %329 = load i32, i32* %22, align 4
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %329, %330
  %332 = sdiv i32 %331, 2
  store i32 %332, i32* %6, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %21, align 4
  %335 = add nsw i32 %333, %334
  %336 = sdiv i32 %335, 2
  store i32 %336, i32* %7, align 4
  br label %718

337:                                              ; preds = %200
  %338 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %339 = call i32 @strcmp(i8* noundef %338, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %366

341:                                              ; preds = %337
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %343 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %344 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %342, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %343)
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %347 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %345, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %346)
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %349 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %348, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5)
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %351 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %350, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %17)
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %353 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %354 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %352, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %353)
  store i32 1, i32* %16, align 4
  br label %355

355:                                              ; preds = %362, %341
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* %17, align 4
  %358 = icmp sle i32 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %355
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %361 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %360, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18)
  br label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %16, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %16, align 4
  br label %355, !llvm.loop !12

365:                                              ; preds = %355
  br label %717

366:                                              ; preds = %337
  %367 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %368 = call i32 @strcmp(i8* noundef %367, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %366
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %372 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %371, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double* noundef %29)
  br label %716

373:                                              ; preds = %366
  %374 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %375 = call i32 @strcmp(i8* noundef %374, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %429

377:                                              ; preds = %373
  %378 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %379 = load i32, i32* %4, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %4, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %378, i64 %381
  %383 = load %struct.cellbox*, %struct.cellbox** %382, align 8
  store %struct.cellbox* %383, %struct.cellbox** %31, align 8
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %385 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %384, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %24)
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %387 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %388 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %386, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %387)
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %390 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %391 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %389, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %390)
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %393 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %392, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %396 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %394, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %395)
  store i32 1, i32* %15, align 4
  br label %397

397:                                              ; preds = %404, %377
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %14, align 4
  %400 = icmp sle i32 %398, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %397
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %403 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %402, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %18, i32* noundef %19)
  br label %404

404:                                              ; preds = %401
  %405 = load i32, i32* %15, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %15, align 4
  br label %397, !llvm.loop !13

407:                                              ; preds = %397
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %409 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %410 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %408, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %409)
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %412 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %411, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5)
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %414 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %413, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %17)
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %416 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %417 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %415, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %416)
  store i32 1, i32* %16, align 4
  br label %418

418:                                              ; preds = %425, %407
  %419 = load i32, i32* %16, align 4
  %420 = load i32, i32* %17, align 4
  %421 = icmp sle i32 %419, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %418
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %424 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %423, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18)
  br label %425

425:                                              ; preds = %422
  %426 = load i32, i32* %16, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %16, align 4
  br label %418, !llvm.loop !14

428:                                              ; preds = %418
  br label %715

429:                                              ; preds = %373
  %430 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %431 = call i32 @strcmp(i8* noundef %430, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %522

433:                                              ; preds = %429
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %435 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %434, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %435)
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %438 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %439 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %437, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %438)
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %441 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %442 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %440, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %441)
  %443 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %444 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %443, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %444)
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %447 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %446, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %8, i32* noundef %9)
  %448 = load i32, i32* %25, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %25, align 4
  %450 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %451 = call i32 @hashfind(i8* noundef %450)
  store i32 %451, i32* %26, align 4
  %452 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %453 = load i32, i32* %26, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %452, i64 %454
  %456 = load %struct.dimbox*, %struct.dimbox** %455, align 8
  %457 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %456, i32 0, i32 0
  %458 = load %struct.netbox*, %struct.netbox** %457, align 8
  store %struct.netbox* %458, %struct.netbox** %34, align 8
  br label %459

459:                                              ; preds = %467, %433
  %460 = load %struct.netbox*, %struct.netbox** %34, align 8
  %461 = getelementptr inbounds %struct.netbox, %struct.netbox* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* %25, align 4
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  br label %471

466:                                              ; preds = %459
  br label %467

467:                                              ; preds = %466
  %468 = load %struct.netbox*, %struct.netbox** %34, align 8
  %469 = getelementptr inbounds %struct.netbox, %struct.netbox* %468, i32 0, i32 0
  %470 = load %struct.netbox*, %struct.netbox** %469, align 8
  store %struct.netbox* %470, %struct.netbox** %34, align 8
  br label %459

471:                                              ; preds = %465
  %472 = load i32, i32* %4, align 4
  %473 = load %struct.netbox*, %struct.netbox** %34, align 8
  %474 = getelementptr inbounds %struct.netbox, %struct.netbox* %473, i32 0, i32 7
  store i32 %472, i32* %474, align 8
  %475 = load %struct.netbox*, %struct.netbox** %34, align 8
  %476 = getelementptr inbounds %struct.netbox, %struct.netbox* %475, i32 0, i32 8
  store i32 1, i32* %476, align 4
  %477 = load %struct.cellbox*, %struct.cellbox** %31, align 8
  %478 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %477, i32 0, i32 10
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %521

481:                                              ; preds = %471
  %482 = load %struct.cellbox*, %struct.cellbox** %31, align 8
  %483 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %482, i32 0, i32 21
  %484 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %483, i64 0, i64 0
  %485 = load %struct.tilebox*, %struct.tilebox** %484, align 8
  %486 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %485, i32 0, i32 17
  %487 = load %struct.termbox*, %struct.termbox** %486, align 8
  store %struct.termbox* %487, %struct.termbox** %32, align 8
  br label %488

488:                                              ; preds = %496, %481
  %489 = load %struct.termbox*, %struct.termbox** %32, align 8
  %490 = getelementptr inbounds %struct.termbox, %struct.termbox* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* %25, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  br label %500

495:                                              ; preds = %488
  br label %496

496:                                              ; preds = %495
  %497 = load %struct.termbox*, %struct.termbox** %32, align 8
  %498 = getelementptr inbounds %struct.termbox, %struct.termbox* %497, i32 0, i32 0
  %499 = load %struct.termbox*, %struct.termbox** %498, align 8
  store %struct.termbox* %499, %struct.termbox** %32, align 8
  br label %488

500:                                              ; preds = %494
  %501 = load i32, i32* %8, align 4
  %502 = load i32, i32* %6, align 4
  %503 = sub nsw i32 %501, %502
  %504 = load %struct.termbox*, %struct.termbox** %32, align 8
  %505 = getelementptr inbounds %struct.termbox, %struct.termbox* %504, i32 0, i32 1
  store i32 %503, i32* %505, align 8
  %506 = load i32, i32* %9, align 4
  %507 = load i32, i32* %7, align 4
  %508 = sub nsw i32 %506, %507
  %509 = load %struct.termbox*, %struct.termbox** %32, align 8
  %510 = getelementptr inbounds %struct.termbox, %struct.termbox* %509, i32 0, i32 2
  store i32 %508, i32* %510, align 4
  %511 = load i32, i32* %8, align 4
  %512 = load i32, i32* %6, align 4
  %513 = sub nsw i32 %511, %512
  %514 = load %struct.termbox*, %struct.termbox** %32, align 8
  %515 = getelementptr inbounds %struct.termbox, %struct.termbox* %514, i32 0, i32 3
  store i32 %513, i32* %515, align 8
  %516 = load i32, i32* %9, align 4
  %517 = load i32, i32* %7, align 4
  %518 = sub nsw i32 %516, %517
  %519 = load %struct.termbox*, %struct.termbox** %32, align 8
  %520 = getelementptr inbounds %struct.termbox, %struct.termbox* %519, i32 0, i32 4
  store i32 %518, i32* %520, align 4
  br label %521

521:                                              ; preds = %500, %471
  br label %714

522:                                              ; preds = %429
  %523 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %524 = call i32 @strcmp(i8* noundef %523, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %627

526:                                              ; preds = %522
  %527 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %528 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %529 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %527, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %528)
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %531 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %532 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %530, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %531)
  %533 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %534 = call i64 @strlen(i8* noundef %533) #4
  %535 = add i64 %534, 1
  %536 = mul i64 %535, 1
  %537 = call noalias i8* @malloc(i64 noundef %536) #5
  %538 = load i8**, i8*** @pinnames, align 8
  %539 = load i32, i32* @ecount, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* @ecount, align 4
  %541 = load i32, i32* @maxterm, align 4
  %542 = add nsw i32 %540, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i8*, i8** %538, i64 %543
  store i8* %537, i8** %544, align 8
  %545 = load i8**, i8*** @pinnames, align 8
  %546 = load i32, i32* @ecount, align 4
  %547 = load i32, i32* @maxterm, align 4
  %548 = add nsw i32 %546, %547
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i8*, i8** %545, i64 %549
  %551 = load i8*, i8** %550, align 8
  %552 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %553 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %551, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %552) #5
  %554 = load %struct.netbox*, %struct.netbox** %34, align 8
  %555 = getelementptr inbounds %struct.netbox, %struct.netbox* %554, i32 0, i32 0
  %556 = load %struct.netbox*, %struct.netbox** %555, align 8
  store %struct.netbox* %556, %struct.netbox** %35, align 8
  %557 = call noalias i8* @malloc(i64 noundef 48) #5
  %558 = bitcast i8* %557 to %struct.netbox*
  %559 = load %struct.netbox*, %struct.netbox** %34, align 8
  %560 = getelementptr inbounds %struct.netbox, %struct.netbox* %559, i32 0, i32 0
  store %struct.netbox* %558, %struct.netbox** %560, align 8
  store %struct.netbox* %558, %struct.netbox** %34, align 8
  %561 = load %struct.netbox*, %struct.netbox** %35, align 8
  %562 = load %struct.netbox*, %struct.netbox** %34, align 8
  %563 = getelementptr inbounds %struct.netbox, %struct.netbox* %562, i32 0, i32 0
  store %struct.netbox* %561, %struct.netbox** %563, align 8
  %564 = load i32, i32* @ecount, align 4
  %565 = load i32, i32* @maxterm, align 4
  %566 = add nsw i32 %564, %565
  %567 = load %struct.netbox*, %struct.netbox** %34, align 8
  %568 = getelementptr inbounds %struct.netbox, %struct.netbox* %567, i32 0, i32 5
  store i32 %566, i32* %568, align 8
  %569 = load %struct.netbox*, %struct.netbox** %34, align 8
  %570 = getelementptr inbounds %struct.netbox, %struct.netbox* %569, i32 0, i32 1
  store i32 0, i32* %570, align 8
  %571 = load %struct.netbox*, %struct.netbox** %34, align 8
  %572 = getelementptr inbounds %struct.netbox, %struct.netbox* %571, i32 0, i32 2
  store i32 0, i32* %572, align 4
  %573 = load %struct.netbox*, %struct.netbox** %34, align 8
  %574 = getelementptr inbounds %struct.netbox, %struct.netbox* %573, i32 0, i32 3
  store i32 0, i32* %574, align 8
  %575 = load %struct.netbox*, %struct.netbox** %34, align 8
  %576 = getelementptr inbounds %struct.netbox, %struct.netbox* %575, i32 0, i32 4
  store i32 0, i32* %576, align 4
  %577 = load %struct.netbox*, %struct.netbox** %34, align 8
  %578 = getelementptr inbounds %struct.netbox, %struct.netbox* %577, i32 0, i32 6
  store i32 0, i32* %578, align 4
  %579 = load i32, i32* %4, align 4
  %580 = load %struct.netbox*, %struct.netbox** %34, align 8
  %581 = getelementptr inbounds %struct.netbox, %struct.netbox* %580, i32 0, i32 7
  store i32 %579, i32* %581, align 8
  %582 = load %struct.netbox*, %struct.netbox** %34, align 8
  %583 = getelementptr inbounds %struct.netbox, %struct.netbox* %582, i32 0, i32 8
  store i32 0, i32* %583, align 4
  %584 = load %struct.netbox*, %struct.netbox** %34, align 8
  %585 = getelementptr inbounds %struct.netbox, %struct.netbox* %584, i32 0, i32 9
  store i32 0, i32* %585, align 8
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %587 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %586, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %8, i32* noundef %9)
  %588 = load %struct.cellbox*, %struct.cellbox** %31, align 8
  %589 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %588, i32 0, i32 8
  %590 = load i32, i32* %589, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %589, align 4
  %592 = load %struct.termbox*, %struct.termbox** %32, align 8
  %593 = getelementptr inbounds %struct.termbox, %struct.termbox* %592, i32 0, i32 0
  %594 = load %struct.termbox*, %struct.termbox** %593, align 8
  store %struct.termbox* %594, %struct.termbox** %33, align 8
  %595 = call noalias i8* @malloc(i64 noundef 32) #5
  %596 = bitcast i8* %595 to %struct.termbox*
  %597 = load %struct.termbox*, %struct.termbox** %32, align 8
  %598 = getelementptr inbounds %struct.termbox, %struct.termbox* %597, i32 0, i32 0
  store %struct.termbox* %596, %struct.termbox** %598, align 8
  store %struct.termbox* %596, %struct.termbox** %32, align 8
  %599 = load %struct.termbox*, %struct.termbox** %33, align 8
  %600 = load %struct.termbox*, %struct.termbox** %32, align 8
  %601 = getelementptr inbounds %struct.termbox, %struct.termbox* %600, i32 0, i32 0
  store %struct.termbox* %599, %struct.termbox** %601, align 8
  %602 = load i32, i32* @ecount, align 4
  %603 = load i32, i32* @maxterm, align 4
  %604 = add nsw i32 %602, %603
  %605 = load %struct.termbox*, %struct.termbox** %32, align 8
  %606 = getelementptr inbounds %struct.termbox, %struct.termbox* %605, i32 0, i32 5
  store i32 %604, i32* %606, align 8
  %607 = load i32, i32* %8, align 4
  %608 = load i32, i32* %6, align 4
  %609 = sub nsw i32 %607, %608
  %610 = load %struct.termbox*, %struct.termbox** %32, align 8
  %611 = getelementptr inbounds %struct.termbox, %struct.termbox* %610, i32 0, i32 1
  store i32 %609, i32* %611, align 8
  %612 = load i32, i32* %9, align 4
  %613 = load i32, i32* %7, align 4
  %614 = sub nsw i32 %612, %613
  %615 = load %struct.termbox*, %struct.termbox** %32, align 8
  %616 = getelementptr inbounds %struct.termbox, %struct.termbox* %615, i32 0, i32 2
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* %8, align 4
  %618 = load i32, i32* %6, align 4
  %619 = sub nsw i32 %617, %618
  %620 = load %struct.termbox*, %struct.termbox** %32, align 8
  %621 = getelementptr inbounds %struct.termbox, %struct.termbox* %620, i32 0, i32 3
  store i32 %619, i32* %621, align 8
  %622 = load i32, i32* %9, align 4
  %623 = load i32, i32* %7, align 4
  %624 = sub nsw i32 %622, %623
  %625 = load %struct.termbox*, %struct.termbox** %32, align 8
  %626 = getelementptr inbounds %struct.termbox, %struct.termbox* %625, i32 0, i32 4
  store i32 %624, i32* %626, align 4
  br label %713

627:                                              ; preds = %522
  %628 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %629 = call i32 @strcmp(i8* noundef %628, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #4
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %634

631:                                              ; preds = %627
  %632 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %633 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %632, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), double* noundef %28)
  br label %712

634:                                              ; preds = %627
  %635 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %636 = call i32 @strcmp(i8* noundef %635, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #4
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %641

638:                                              ; preds = %634
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %640 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %639, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), double* noundef %27)
  br label %711

641:                                              ; preds = %634
  %642 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %643 = call i32 @strcmp(i8* noundef %642, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #4
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %641
  %646 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %647 = call i32 @strcmp(i8* noundef %646, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #4
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %710

649:                                              ; preds = %645, %641
  %650 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %651 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %650, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %10)
  store i32 1, i32* %3, align 4
  br label %652

652:                                              ; preds = %701, %649
  %653 = load i32, i32* %3, align 4
  %654 = load i32, i32* %10, align 4
  %655 = icmp sle i32 %653, %654
  br i1 %655, label %656, label %704

656:                                              ; preds = %652
  %657 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %658 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %659 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %657, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %658)
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %661 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %662 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %660, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %661)
  %663 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %664 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %665 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %663, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %664)
  %666 = load i32, i32* %25, align 4
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %25, align 4
  %668 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %669 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %670 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %668, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %669)
  %671 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %672 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %673 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %671, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %672)
  %674 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %675 = call i32 @hashfind(i8* noundef %674)
  store i32 %675, i32* %26, align 4
  %676 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %677 = load i32, i32* %26, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %676, i64 %678
  %680 = load %struct.dimbox*, %struct.dimbox** %679, align 8
  %681 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %680, i32 0, i32 0
  %682 = load %struct.netbox*, %struct.netbox** %681, align 8
  store %struct.netbox* %682, %struct.netbox** %34, align 8
  br label %683

683:                                              ; preds = %691, %656
  %684 = load %struct.netbox*, %struct.netbox** %34, align 8
  %685 = getelementptr inbounds %struct.netbox, %struct.netbox* %684, i32 0, i32 5
  %686 = load i32, i32* %685, align 8
  %687 = load i32, i32* %25, align 4
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %690

689:                                              ; preds = %683
  br label %695

690:                                              ; preds = %683
  br label %691

691:                                              ; preds = %690
  %692 = load %struct.netbox*, %struct.netbox** %34, align 8
  %693 = getelementptr inbounds %struct.netbox, %struct.netbox* %692, i32 0, i32 0
  %694 = load %struct.netbox*, %struct.netbox** %693, align 8
  store %struct.netbox* %694, %struct.netbox** %34, align 8
  br label %683

695:                                              ; preds = %689
  %696 = load i32, i32* %4, align 4
  %697 = load %struct.netbox*, %struct.netbox** %34, align 8
  %698 = getelementptr inbounds %struct.netbox, %struct.netbox* %697, i32 0, i32 7
  store i32 %696, i32* %698, align 8
  %699 = load %struct.netbox*, %struct.netbox** %34, align 8
  %700 = getelementptr inbounds %struct.netbox, %struct.netbox* %699, i32 0, i32 8
  store i32 1, i32* %700, align 4
  br label %701

701:                                              ; preds = %695
  %702 = load i32, i32* %3, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %3, align 4
  br label %652, !llvm.loop !15

704:                                              ; preds = %652
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %706 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %705, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %706)
  %708 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %709 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %708, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %12, i32* noundef %13)
  br label %710

710:                                              ; preds = %704, %645
  br label %711

711:                                              ; preds = %710, %638
  br label %712

712:                                              ; preds = %711, %631
  br label %713

713:                                              ; preds = %712, %526
  br label %714

714:                                              ; preds = %713, %521
  br label %715

715:                                              ; preds = %714, %428
  br label %716

716:                                              ; preds = %715, %370
  br label %717

717:                                              ; preds = %716, %365
  br label %718

718:                                              ; preds = %717, %328
  br label %719

719:                                              ; preds = %718, %199
  br label %37, !llvm.loop !16

720:                                              ; preds = %37
  call void @ggenorien()
  ret void
}

declare dso_local void @gpass2(%struct._IO_FILE* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @hashfind(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local void @ggenorien() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
