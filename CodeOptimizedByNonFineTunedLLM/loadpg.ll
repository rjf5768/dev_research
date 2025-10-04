; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadpg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pinlist = external dso_local global %struct.quad*, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"pin number: %d of net: %d was supposed to \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"lie between nodes: %d and %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"However, the graph doesn't have an edge \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"between these two nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pin number: %d of net: %d \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"specified to lie between nodes: %d and %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"is not within the scope of this channel\0A\00", align 1
@numnodes = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8
@pnodeArray = external dso_local global %struct.pnode*, align 8
@gtrace = external dso_local global i16**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @loadpg(i32 noundef %0, i32 noundef %1) #0 {
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
  %19 = alloca %struct.quad*, align 8
  %20 = alloca %struct.gnode*, align 8
  %21 = alloca %struct.gnode*, align 8
  %22 = alloca %struct.gnode*, align 8
  %23 = alloca %struct.gnode*, align 8
  %24 = alloca %struct.list2*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %25 = load %struct.quad*, %struct.quad** @pinlist, align 8
  store %struct.quad* %25, %struct.quad** %19, align 8
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %543, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %546

30:                                               ; preds = %26
  %31 = load %struct.quad*, %struct.quad** %19, align 8
  %32 = getelementptr inbounds %struct.quad, %struct.quad* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.quad*, %struct.quad** %19, align 8
  %35 = getelementptr inbounds %struct.quad, %struct.quad* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.quad*, %struct.quad** %19, align 8
  %38 = getelementptr inbounds %struct.quad, %struct.quad* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.quad*, %struct.quad** %19, align 8
  %41 = getelementptr inbounds %struct.quad, %struct.quad* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @identify2(i32* noundef %6, i32* noundef %7, i32 noundef %43, i32* noundef %14, i32* noundef %15, %struct.gnode** noundef %20)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %30
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %49, i32 noundef %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef %53, i32 noundef %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 0) #4
  unreachable

60:                                               ; preds = %30
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef %65, i32 noundef %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef %69, i32 noundef %70)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 0) #4
  unreachable

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.gnode*, %struct.gnode** %20, align 8
  %80 = getelementptr inbounds %struct.gnode, %struct.gnode* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @numnodes, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @numnodes, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = load %struct.gnode*, %struct.gnode** %20, align 8
  %91 = getelementptr inbounds %struct.gnode, %struct.gnode* %90, i32 0, i32 2
  store i32 1000000000, i32* %91, align 8
  %92 = load %struct.gnode*, %struct.gnode** %20, align 8
  %93 = getelementptr inbounds %struct.gnode, %struct.gnode* %92, i32 0, i32 3
  store i32 1000000000, i32* %93, align 4
  %94 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.gnode*, %struct.gnode** %94, i64 %96
  %98 = load %struct.gnode*, %struct.gnode** %97, align 8
  store %struct.gnode* %98, %struct.gnode** %20, align 8
  br label %99

99:                                               ; preds = %105, %89
  %100 = load %struct.gnode*, %struct.gnode** %20, align 8
  %101 = getelementptr inbounds %struct.gnode, %struct.gnode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.gnode*, %struct.gnode** %20, align 8
  %107 = getelementptr inbounds %struct.gnode, %struct.gnode* %106, i32 0, i32 7
  %108 = load %struct.gnode*, %struct.gnode** %107, align 8
  store %struct.gnode* %108, %struct.gnode** %20, align 8
  br label %99, !llvm.loop !4

109:                                              ; preds = %99
  %110 = load %struct.gnode*, %struct.gnode** %20, align 8
  %111 = getelementptr inbounds %struct.gnode, %struct.gnode* %110, i32 0, i32 2
  store i32 1000000000, i32* %111, align 8
  %112 = load %struct.gnode*, %struct.gnode** %20, align 8
  %113 = getelementptr inbounds %struct.gnode, %struct.gnode* %112, i32 0, i32 3
  store i32 1000000000, i32* %113, align 4
  br label %215

114:                                              ; preds = %85, %75
  %115 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.gnode*, %struct.gnode** %115, i64 %117
  %119 = load %struct.gnode*, %struct.gnode** %118, align 8
  %120 = load %struct.gnode*, %struct.gnode** %20, align 8
  %121 = icmp eq %struct.gnode* %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load %struct.gnode*, %struct.gnode** %20, align 8
  %124 = getelementptr inbounds %struct.gnode, %struct.gnode* %123, i32 0, i32 7
  %125 = load %struct.gnode*, %struct.gnode** %124, align 8
  %126 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.gnode*, %struct.gnode** %126, i64 %128
  store %struct.gnode* %125, %struct.gnode** %129, align 8
  %130 = load %struct.gnode*, %struct.gnode** %20, align 8
  %131 = bitcast %struct.gnode* %130 to i8*
  call void @free(i8* noundef %131) #5
  br label %156

132:                                              ; preds = %114
  %133 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.gnode*, %struct.gnode** %133, i64 %135
  %137 = load %struct.gnode*, %struct.gnode** %136, align 8
  store %struct.gnode* %137, %struct.gnode** %21, align 8
  br label %138

138:                                              ; preds = %144, %132
  %139 = load %struct.gnode*, %struct.gnode** %21, align 8
  %140 = getelementptr inbounds %struct.gnode, %struct.gnode* %139, i32 0, i32 7
  %141 = load %struct.gnode*, %struct.gnode** %140, align 8
  %142 = load %struct.gnode*, %struct.gnode** %20, align 8
  %143 = icmp ne %struct.gnode* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.gnode*, %struct.gnode** %21, align 8
  %146 = getelementptr inbounds %struct.gnode, %struct.gnode* %145, i32 0, i32 7
  %147 = load %struct.gnode*, %struct.gnode** %146, align 8
  store %struct.gnode* %147, %struct.gnode** %21, align 8
  br label %138, !llvm.loop !6

148:                                              ; preds = %138
  %149 = load %struct.gnode*, %struct.gnode** %20, align 8
  %150 = getelementptr inbounds %struct.gnode, %struct.gnode* %149, i32 0, i32 7
  %151 = load %struct.gnode*, %struct.gnode** %150, align 8
  %152 = load %struct.gnode*, %struct.gnode** %21, align 8
  %153 = getelementptr inbounds %struct.gnode, %struct.gnode* %152, i32 0, i32 7
  store %struct.gnode* %151, %struct.gnode** %153, align 8
  %154 = load %struct.gnode*, %struct.gnode** %20, align 8
  %155 = bitcast %struct.gnode* %154 to i8*
  call void @free(i8* noundef %155) #5
  br label %156

156:                                              ; preds = %148, %122
  %157 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.gnode*, %struct.gnode** %157, i64 %159
  %161 = load %struct.gnode*, %struct.gnode** %160, align 8
  %162 = getelementptr inbounds %struct.gnode, %struct.gnode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %156
  %167 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.gnode*, %struct.gnode** %167, i64 %169
  %171 = load %struct.gnode*, %struct.gnode** %170, align 8
  store %struct.gnode* %171, %struct.gnode** %20, align 8
  %172 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.gnode*, %struct.gnode** %172, i64 %174
  %176 = load %struct.gnode*, %struct.gnode** %175, align 8
  %177 = getelementptr inbounds %struct.gnode, %struct.gnode* %176, i32 0, i32 7
  %178 = load %struct.gnode*, %struct.gnode** %177, align 8
  %179 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.gnode*, %struct.gnode** %179, i64 %181
  store %struct.gnode* %178, %struct.gnode** %182, align 8
  %183 = load %struct.gnode*, %struct.gnode** %20, align 8
  %184 = bitcast %struct.gnode* %183 to i8*
  call void @free(i8* noundef %184) #5
  br label %214

185:                                              ; preds = %156
  %186 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.gnode*, %struct.gnode** %186, i64 %188
  %190 = load %struct.gnode*, %struct.gnode** %189, align 8
  store %struct.gnode* %190, %struct.gnode** %21, align 8
  br label %191

191:                                              ; preds = %199, %185
  %192 = load %struct.gnode*, %struct.gnode** %21, align 8
  %193 = getelementptr inbounds %struct.gnode, %struct.gnode* %192, i32 0, i32 7
  %194 = load %struct.gnode*, %struct.gnode** %193, align 8
  %195 = getelementptr inbounds %struct.gnode, %struct.gnode* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load %struct.gnode*, %struct.gnode** %21, align 8
  %201 = getelementptr inbounds %struct.gnode, %struct.gnode* %200, i32 0, i32 7
  %202 = load %struct.gnode*, %struct.gnode** %201, align 8
  store %struct.gnode* %202, %struct.gnode** %21, align 8
  br label %191, !llvm.loop !7

203:                                              ; preds = %191
  %204 = load %struct.gnode*, %struct.gnode** %21, align 8
  %205 = getelementptr inbounds %struct.gnode, %struct.gnode* %204, i32 0, i32 7
  %206 = load %struct.gnode*, %struct.gnode** %205, align 8
  store %struct.gnode* %206, %struct.gnode** %20, align 8
  %207 = load %struct.gnode*, %struct.gnode** %20, align 8
  %208 = getelementptr inbounds %struct.gnode, %struct.gnode* %207, i32 0, i32 7
  %209 = load %struct.gnode*, %struct.gnode** %208, align 8
  %210 = load %struct.gnode*, %struct.gnode** %21, align 8
  %211 = getelementptr inbounds %struct.gnode, %struct.gnode* %210, i32 0, i32 7
  store %struct.gnode* %209, %struct.gnode** %211, align 8
  %212 = load %struct.gnode*, %struct.gnode** %20, align 8
  %213 = bitcast %struct.gnode* %212 to i8*
  call void @free(i8* noundef %213) #5
  br label %214

214:                                              ; preds = %203, %166
  br label %215

215:                                              ; preds = %214, %109
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @numnodes, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load i32, i32* %5, align 4
  store i32 %222, i32* %13, align 4
  %223 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.pnode, %struct.pnode* %223, i64 %225
  %227 = getelementptr inbounds %struct.pnode, %struct.pnode* %226, i32 0, i32 0
  store i32 0, i32* %227, align 8
  br label %264

228:                                              ; preds = %215
  %229 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.pnode, %struct.pnode* %229, i64 %231
  %233 = getelementptr inbounds %struct.pnode, %struct.pnode* %232, i32 0, i32 2
  %234 = load %struct.list2*, %struct.list2** %233, align 8
  store %struct.list2* %234, %struct.list2** %24, align 8
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.pnode, %struct.pnode* %236, i64 %238
  %240 = getelementptr inbounds %struct.pnode, %struct.pnode* %239, i32 0, i32 0
  store i32 %235, i32* %240, align 8
  %241 = call noalias i8* @malloc(i64 noundef 16) #5
  %242 = bitcast i8* %241 to %struct.list2*
  %243 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.pnode, %struct.pnode* %243, i64 %245
  %247 = getelementptr inbounds %struct.pnode, %struct.pnode* %246, i32 0, i32 2
  store %struct.list2* %242, %struct.list2** %247, align 8
  %248 = load %struct.list2*, %struct.list2** %24, align 8
  %249 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.pnode, %struct.pnode* %249, i64 %251
  %253 = getelementptr inbounds %struct.pnode, %struct.pnode* %252, i32 0, i32 2
  %254 = load %struct.list2*, %struct.list2** %253, align 8
  %255 = getelementptr inbounds %struct.list2, %struct.list2* %254, i32 0, i32 1
  store %struct.list2* %248, %struct.list2** %255, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.pnode, %struct.pnode* %257, i64 %259
  %261 = getelementptr inbounds %struct.pnode, %struct.pnode* %260, i32 0, i32 2
  %262 = load %struct.list2*, %struct.list2** %261, align 8
  %263 = getelementptr inbounds %struct.list2, %struct.list2* %262, i32 0, i32 0
  store i32 %256, i32* %263, align 8
  br label %264

264:                                              ; preds = %228, %221
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %10, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %10, align 4
  %268 = call noalias i8* @malloc(i64 noundef 40) #5
  %269 = bitcast i8* %268 to %struct.gnode*
  %270 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.gnode*, %struct.gnode** %270, i64 %272
  store %struct.gnode* %269, %struct.gnode** %273, align 8
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.gnode*, %struct.gnode** %275, i64 %277
  %279 = load %struct.gnode*, %struct.gnode** %278, align 8
  %280 = getelementptr inbounds %struct.gnode, %struct.gnode* %279, i32 0, i32 0
  store i32 %274, i32* %280, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.gnode*, %struct.gnode** %282, i64 %284
  %286 = load %struct.gnode*, %struct.gnode** %285, align 8
  %287 = getelementptr inbounds %struct.gnode, %struct.gnode* %286, i32 0, i32 2
  store i32 %281, i32* %287, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.gnode*, %struct.gnode** %289, i64 %291
  %293 = load %struct.gnode*, %struct.gnode** %292, align 8
  %294 = getelementptr inbounds %struct.gnode, %struct.gnode* %293, i32 0, i32 1
  store i32 %288, i32* %294, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.gnode*, %struct.gnode** %296, i64 %298
  %300 = load %struct.gnode*, %struct.gnode** %299, align 8
  %301 = getelementptr inbounds %struct.gnode, %struct.gnode* %300, i32 0, i32 3
  store i32 %295, i32* %301, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.gnode*, %struct.gnode** %303, i64 %305
  %307 = load %struct.gnode*, %struct.gnode** %306, align 8
  %308 = getelementptr inbounds %struct.gnode, %struct.gnode* %307, i32 0, i32 4
  store i32 %302, i32* %308, align 8
  %309 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.gnode*, %struct.gnode** %309, i64 %311
  %313 = load %struct.gnode*, %struct.gnode** %312, align 8
  %314 = getelementptr inbounds %struct.gnode, %struct.gnode* %313, i32 0, i32 5
  store i32 0, i32* %314, align 4
  %315 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.gnode*, %struct.gnode** %315, i64 %317
  %319 = load %struct.gnode*, %struct.gnode** %318, align 8
  %320 = getelementptr inbounds %struct.gnode, %struct.gnode* %319, i32 0, i32 6
  store i32 0, i32* %320, align 8
  %321 = call noalias i8* @malloc(i64 noundef 40) #5
  %322 = bitcast i8* %321 to %struct.gnode*
  %323 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.gnode*, %struct.gnode** %323, i64 %325
  %327 = load %struct.gnode*, %struct.gnode** %326, align 8
  %328 = getelementptr inbounds %struct.gnode, %struct.gnode* %327, i32 0, i32 7
  store %struct.gnode* %322, %struct.gnode** %328, align 8
  %329 = load i32, i32* %7, align 4
  %330 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.gnode*, %struct.gnode** %330, i64 %332
  %334 = load %struct.gnode*, %struct.gnode** %333, align 8
  %335 = getelementptr inbounds %struct.gnode, %struct.gnode* %334, i32 0, i32 7
  %336 = load %struct.gnode*, %struct.gnode** %335, align 8
  %337 = getelementptr inbounds %struct.gnode, %struct.gnode* %336, i32 0, i32 0
  store i32 %329, i32* %337, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %10, align 4
  %340 = sub nsw i32 %338, %339
  %341 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.gnode*, %struct.gnode** %341, i64 %343
  %345 = load %struct.gnode*, %struct.gnode** %344, align 8
  %346 = getelementptr inbounds %struct.gnode, %struct.gnode* %345, i32 0, i32 7
  %347 = load %struct.gnode*, %struct.gnode** %346, align 8
  %348 = getelementptr inbounds %struct.gnode, %struct.gnode* %347, i32 0, i32 2
  store i32 %340, i32* %348, align 8
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* %10, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.gnode*, %struct.gnode** %352, i64 %354
  %356 = load %struct.gnode*, %struct.gnode** %355, align 8
  %357 = getelementptr inbounds %struct.gnode, %struct.gnode* %356, i32 0, i32 7
  %358 = load %struct.gnode*, %struct.gnode** %357, align 8
  %359 = getelementptr inbounds %struct.gnode, %struct.gnode* %358, i32 0, i32 1
  store i32 %351, i32* %359, align 4
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* %10, align 4
  %362 = sub nsw i32 %360, %361
  %363 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.gnode*, %struct.gnode** %363, i64 %365
  %367 = load %struct.gnode*, %struct.gnode** %366, align 8
  %368 = getelementptr inbounds %struct.gnode, %struct.gnode* %367, i32 0, i32 7
  %369 = load %struct.gnode*, %struct.gnode** %368, align 8
  %370 = getelementptr inbounds %struct.gnode, %struct.gnode* %369, i32 0, i32 3
  store i32 %362, i32* %370, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.gnode*, %struct.gnode** %372, i64 %374
  %376 = load %struct.gnode*, %struct.gnode** %375, align 8
  %377 = getelementptr inbounds %struct.gnode, %struct.gnode* %376, i32 0, i32 7
  %378 = load %struct.gnode*, %struct.gnode** %377, align 8
  %379 = getelementptr inbounds %struct.gnode, %struct.gnode* %378, i32 0, i32 4
  store i32 %371, i32* %379, align 8
  %380 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.gnode*, %struct.gnode** %380, i64 %382
  %384 = load %struct.gnode*, %struct.gnode** %383, align 8
  %385 = getelementptr inbounds %struct.gnode, %struct.gnode* %384, i32 0, i32 7
  %386 = load %struct.gnode*, %struct.gnode** %385, align 8
  %387 = getelementptr inbounds %struct.gnode, %struct.gnode* %386, i32 0, i32 5
  store i32 0, i32* %387, align 4
  %388 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.gnode*, %struct.gnode** %388, i64 %390
  %392 = load %struct.gnode*, %struct.gnode** %391, align 8
  %393 = getelementptr inbounds %struct.gnode, %struct.gnode* %392, i32 0, i32 7
  %394 = load %struct.gnode*, %struct.gnode** %393, align 8
  %395 = getelementptr inbounds %struct.gnode, %struct.gnode* %394, i32 0, i32 6
  store i32 0, i32* %395, align 8
  %396 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.gnode*, %struct.gnode** %396, i64 %398
  %400 = load %struct.gnode*, %struct.gnode** %399, align 8
  %401 = getelementptr inbounds %struct.gnode, %struct.gnode* %400, i32 0, i32 7
  %402 = load %struct.gnode*, %struct.gnode** %401, align 8
  %403 = getelementptr inbounds %struct.gnode, %struct.gnode* %402, i32 0, i32 7
  store %struct.gnode* null, %struct.gnode** %403, align 8
  %404 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.gnode*, %struct.gnode** %404, i64 %406
  %408 = load %struct.gnode*, %struct.gnode** %407, align 8
  store %struct.gnode* %408, %struct.gnode** %20, align 8
  %409 = call noalias i8* @malloc(i64 noundef 40) #5
  %410 = bitcast i8* %409 to %struct.gnode*
  %411 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %412 = load i32, i32* %6, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.gnode*, %struct.gnode** %411, i64 %413
  store %struct.gnode* %410, %struct.gnode** %414, align 8
  %415 = load %struct.gnode*, %struct.gnode** %20, align 8
  %416 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.gnode*, %struct.gnode** %416, i64 %418
  %420 = load %struct.gnode*, %struct.gnode** %419, align 8
  %421 = getelementptr inbounds %struct.gnode, %struct.gnode* %420, i32 0, i32 7
  store %struct.gnode* %415, %struct.gnode** %421, align 8
  %422 = load i32, i32* %8, align 4
  %423 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %424 = load i32, i32* %6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.gnode*, %struct.gnode** %423, i64 %425
  %427 = load %struct.gnode*, %struct.gnode** %426, align 8
  %428 = getelementptr inbounds %struct.gnode, %struct.gnode* %427, i32 0, i32 0
  store i32 %422, i32* %428, align 8
  %429 = load i32, i32* %10, align 4
  %430 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.gnode*, %struct.gnode** %430, i64 %432
  %434 = load %struct.gnode*, %struct.gnode** %433, align 8
  %435 = getelementptr inbounds %struct.gnode, %struct.gnode* %434, i32 0, i32 1
  store i32 %429, i32* %435, align 4
  %436 = load i32, i32* %10, align 4
  %437 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %438 = load i32, i32* %6, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.gnode*, %struct.gnode** %437, i64 %439
  %441 = load %struct.gnode*, %struct.gnode** %440, align 8
  %442 = getelementptr inbounds %struct.gnode, %struct.gnode* %441, i32 0, i32 2
  store i32 %436, i32* %442, align 8
  %443 = load i32, i32* %10, align 4
  %444 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %445 = load i32, i32* %6, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.gnode*, %struct.gnode** %444, i64 %446
  %448 = load %struct.gnode*, %struct.gnode** %447, align 8
  %449 = getelementptr inbounds %struct.gnode, %struct.gnode* %448, i32 0, i32 3
  store i32 %443, i32* %449, align 4
  %450 = load i32, i32* %12, align 4
  %451 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %452 = load i32, i32* %6, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.gnode*, %struct.gnode** %451, i64 %453
  %455 = load %struct.gnode*, %struct.gnode** %454, align 8
  %456 = getelementptr inbounds %struct.gnode, %struct.gnode* %455, i32 0, i32 4
  store i32 %450, i32* %456, align 8
  %457 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %458 = load i32, i32* %6, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.gnode*, %struct.gnode** %457, i64 %459
  %461 = load %struct.gnode*, %struct.gnode** %460, align 8
  %462 = getelementptr inbounds %struct.gnode, %struct.gnode* %461, i32 0, i32 5
  store i32 0, i32* %462, align 4
  %463 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %464 = load i32, i32* %6, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.gnode*, %struct.gnode** %463, i64 %465
  %467 = load %struct.gnode*, %struct.gnode** %466, align 8
  %468 = getelementptr inbounds %struct.gnode, %struct.gnode* %467, i32 0, i32 6
  store i32 0, i32* %468, align 8
  %469 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %470 = load i32, i32* %7, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.gnode*, %struct.gnode** %469, i64 %471
  %473 = load %struct.gnode*, %struct.gnode** %472, align 8
  store %struct.gnode* %473, %struct.gnode** %20, align 8
  %474 = call noalias i8* @malloc(i64 noundef 40) #5
  %475 = bitcast i8* %474 to %struct.gnode*
  %476 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.gnode*, %struct.gnode** %476, i64 %478
  store %struct.gnode* %475, %struct.gnode** %479, align 8
  %480 = load %struct.gnode*, %struct.gnode** %20, align 8
  %481 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %482 = load i32, i32* %7, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.gnode*, %struct.gnode** %481, i64 %483
  %485 = load %struct.gnode*, %struct.gnode** %484, align 8
  %486 = getelementptr inbounds %struct.gnode, %struct.gnode* %485, i32 0, i32 7
  store %struct.gnode* %480, %struct.gnode** %486, align 8
  %487 = load i32, i32* %8, align 4
  %488 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.gnode*, %struct.gnode** %488, i64 %490
  %492 = load %struct.gnode*, %struct.gnode** %491, align 8
  %493 = getelementptr inbounds %struct.gnode, %struct.gnode* %492, i32 0, i32 0
  store i32 %487, i32* %493, align 8
  %494 = load i32, i32* %11, align 4
  %495 = load i32, i32* %10, align 4
  %496 = sub nsw i32 %494, %495
  %497 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %498 = load i32, i32* %7, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.gnode*, %struct.gnode** %497, i64 %499
  %501 = load %struct.gnode*, %struct.gnode** %500, align 8
  %502 = getelementptr inbounds %struct.gnode, %struct.gnode* %501, i32 0, i32 1
  store i32 %496, i32* %502, align 4
  %503 = load i32, i32* %11, align 4
  %504 = load i32, i32* %10, align 4
  %505 = sub nsw i32 %503, %504
  %506 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %507 = load i32, i32* %7, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.gnode*, %struct.gnode** %506, i64 %508
  %510 = load %struct.gnode*, %struct.gnode** %509, align 8
  %511 = getelementptr inbounds %struct.gnode, %struct.gnode* %510, i32 0, i32 2
  store i32 %505, i32* %511, align 8
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* %10, align 4
  %514 = sub nsw i32 %512, %513
  %515 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %516 = load i32, i32* %7, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.gnode*, %struct.gnode** %515, i64 %517
  %519 = load %struct.gnode*, %struct.gnode** %518, align 8
  %520 = getelementptr inbounds %struct.gnode, %struct.gnode* %519, i32 0, i32 3
  store i32 %514, i32* %520, align 4
  %521 = load i32, i32* %12, align 4
  %522 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %523 = load i32, i32* %7, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.gnode*, %struct.gnode** %522, i64 %524
  %526 = load %struct.gnode*, %struct.gnode** %525, align 8
  %527 = getelementptr inbounds %struct.gnode, %struct.gnode* %526, i32 0, i32 4
  store i32 %521, i32* %527, align 8
  %528 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %529 = load i32, i32* %7, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.gnode*, %struct.gnode** %528, i64 %530
  %532 = load %struct.gnode*, %struct.gnode** %531, align 8
  %533 = getelementptr inbounds %struct.gnode, %struct.gnode* %532, i32 0, i32 5
  store i32 0, i32* %533, align 4
  %534 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %535 = load i32, i32* %7, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.gnode*, %struct.gnode** %534, i64 %536
  %538 = load %struct.gnode*, %struct.gnode** %537, align 8
  %539 = getelementptr inbounds %struct.gnode, %struct.gnode* %538, i32 0, i32 6
  store i32 0, i32* %539, align 8
  %540 = load %struct.quad*, %struct.quad** %19, align 8
  %541 = getelementptr inbounds %struct.quad, %struct.quad* %540, i32 0, i32 4
  %542 = load %struct.quad*, %struct.quad** %541, align 8
  store %struct.quad* %542, %struct.quad** %19, align 8
  br label %543

543:                                              ; preds = %264
  %544 = load i32, i32* %5, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %5, align 4
  br label %26, !llvm.loop !8

546:                                              ; preds = %26
  store i32 1, i32* %5, align 4
  br label %547

547:                                              ; preds = %718, %546
  %548 = load i32, i32* %5, align 4
  %549 = load i32, i32* %4, align 4
  %550 = icmp sle i32 %548, %549
  br i1 %550, label %551, label %721

551:                                              ; preds = %547
  %552 = load i32, i32* %5, align 4
  %553 = load i32, i32* @numnodes, align 4
  %554 = add nsw i32 %552, %553
  store i32 %554, i32* %17, align 4
  %555 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %556 = load i32, i32* %17, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.gnode*, %struct.gnode** %555, i64 %557
  %559 = load %struct.gnode*, %struct.gnode** %558, align 8
  store %struct.gnode* %559, %struct.gnode** %20, align 8
  br label %560

560:                                              ; preds = %715, %551
  %561 = load %struct.gnode*, %struct.gnode** %20, align 8
  %562 = icmp ne %struct.gnode* %561, null
  br i1 %562, label %563, label %717

563:                                              ; preds = %560
  %564 = load %struct.gnode*, %struct.gnode** %20, align 8
  %565 = getelementptr inbounds %struct.gnode, %struct.gnode* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  store i32 %566, i32* %18, align 4
  %567 = load i32, i32* %18, align 4
  %568 = load i32, i32* @numnodes, align 4
  %569 = sub nsw i32 %567, %568
  store i32 %569, i32* %16, align 4
  %570 = load i32, i32* %18, align 4
  %571 = load i32, i32* @numnodes, align 4
  %572 = icmp sle i32 %570, %571
  br i1 %572, label %577, label %573

573:                                              ; preds = %563
  %574 = load i32, i32* %16, align 4
  %575 = load i32, i32* %5, align 4
  %576 = icmp slt i32 %574, %575
  br i1 %576, label %577, label %578

577:                                              ; preds = %573, %563
  br label %706

578:                                              ; preds = %573
  %579 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %580 = load i32, i32* %5, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.pnode, %struct.pnode* %579, i64 %581
  %583 = getelementptr inbounds %struct.pnode, %struct.pnode* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %610

586:                                              ; preds = %578
  %587 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %588 = load i32, i32* %16, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.pnode, %struct.pnode* %587, i64 %589
  %591 = getelementptr inbounds %struct.pnode, %struct.pnode* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %610

594:                                              ; preds = %586
  %595 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %596 = load i32, i32* %5, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.pnode, %struct.pnode* %595, i64 %597
  %599 = getelementptr inbounds %struct.pnode, %struct.pnode* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %602 = load i32, i32* %16, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.pnode, %struct.pnode* %601, i64 %603
  %605 = getelementptr inbounds %struct.pnode, %struct.pnode* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = icmp ne i32 %600, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %594
  br label %706

609:                                              ; preds = %594
  br label %659

610:                                              ; preds = %586, %578
  %611 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %612 = load i32, i32* %5, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.pnode, %struct.pnode* %611, i64 %613
  %615 = getelementptr inbounds %struct.pnode, %struct.pnode* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %627

618:                                              ; preds = %610
  %619 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %620 = load i32, i32* %16, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.pnode, %struct.pnode* %619, i64 %621
  %623 = getelementptr inbounds %struct.pnode, %struct.pnode* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %627

626:                                              ; preds = %618
  br label %706

627:                                              ; preds = %618, %610
  %628 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %629 = load i32, i32* %5, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.pnode, %struct.pnode* %628, i64 %630
  %632 = getelementptr inbounds %struct.pnode, %struct.pnode* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 8
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %646

635:                                              ; preds = %627
  %636 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %637 = load i32, i32* %5, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.pnode, %struct.pnode* %636, i64 %638
  %640 = getelementptr inbounds %struct.pnode, %struct.pnode* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 8
  %642 = load i32, i32* %16, align 4
  %643 = icmp ne i32 %641, %642
  br i1 %643, label %644, label %645

644:                                              ; preds = %635
  br label %706

645:                                              ; preds = %635
  br label %657

646:                                              ; preds = %627
  %647 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %648 = load i32, i32* %16, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.pnode, %struct.pnode* %647, i64 %649
  %651 = getelementptr inbounds %struct.pnode, %struct.pnode* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* %5, align 4
  %654 = icmp ne i32 %652, %653
  br i1 %654, label %655, label %656

655:                                              ; preds = %646
  br label %706

656:                                              ; preds = %646
  br label %657

657:                                              ; preds = %656, %645
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658, %609
  %660 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %661 = load i32, i32* %17, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.gnode*, %struct.gnode** %660, i64 %662
  %664 = load %struct.gnode*, %struct.gnode** %663, align 8
  store %struct.gnode* %664, %struct.gnode** %22, align 8
  %665 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %666 = load i32, i32* %18, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.gnode*, %struct.gnode** %665, i64 %667
  %669 = load %struct.gnode*, %struct.gnode** %668, align 8
  store %struct.gnode* %669, %struct.gnode** %23, align 8
  %670 = load %struct.gnode*, %struct.gnode** %22, align 8
  store %struct.gnode* %670, %struct.gnode** %20, align 8
  br label %671

671:                                              ; preds = %683, %659
  %672 = load %struct.gnode*, %struct.gnode** %20, align 8
  %673 = icmp ne %struct.gnode* %672, null
  br i1 %673, label %674, label %687

674:                                              ; preds = %671
  %675 = load %struct.gnode*, %struct.gnode** %20, align 8
  %676 = getelementptr inbounds %struct.gnode, %struct.gnode* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 8
  %678 = load i32, i32* %18, align 4
  %679 = icmp eq i32 %677, %678
  br i1 %679, label %680, label %683

680:                                              ; preds = %674
  %681 = load %struct.gnode*, %struct.gnode** %20, align 8
  %682 = getelementptr inbounds %struct.gnode, %struct.gnode* %681, i32 0, i32 3
  store i32 1000000000, i32* %682, align 4
  br label %687

683:                                              ; preds = %674
  %684 = load %struct.gnode*, %struct.gnode** %20, align 8
  %685 = getelementptr inbounds %struct.gnode, %struct.gnode* %684, i32 0, i32 7
  %686 = load %struct.gnode*, %struct.gnode** %685, align 8
  store %struct.gnode* %686, %struct.gnode** %20, align 8
  br label %671, !llvm.loop !9

687:                                              ; preds = %680, %671
  %688 = load %struct.gnode*, %struct.gnode** %23, align 8
  store %struct.gnode* %688, %struct.gnode** %20, align 8
  br label %689

689:                                              ; preds = %701, %687
  %690 = load %struct.gnode*, %struct.gnode** %20, align 8
  %691 = icmp ne %struct.gnode* %690, null
  br i1 %691, label %692, label %705

692:                                              ; preds = %689
  %693 = load %struct.gnode*, %struct.gnode** %20, align 8
  %694 = getelementptr inbounds %struct.gnode, %struct.gnode* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = load i32, i32* %17, align 4
  %697 = icmp eq i32 %695, %696
  br i1 %697, label %698, label %701

698:                                              ; preds = %692
  %699 = load %struct.gnode*, %struct.gnode** %20, align 8
  %700 = getelementptr inbounds %struct.gnode, %struct.gnode* %699, i32 0, i32 3
  store i32 1000000000, i32* %700, align 4
  br label %705

701:                                              ; preds = %692
  %702 = load %struct.gnode*, %struct.gnode** %20, align 8
  %703 = getelementptr inbounds %struct.gnode, %struct.gnode* %702, i32 0, i32 7
  %704 = load %struct.gnode*, %struct.gnode** %703, align 8
  store %struct.gnode* %704, %struct.gnode** %20, align 8
  br label %689, !llvm.loop !10

705:                                              ; preds = %698, %689
  br label %706

706:                                              ; preds = %705, %655, %644, %626, %608, %577
  %707 = load %struct.gnode*, %struct.gnode** %20, align 8
  %708 = icmp ne %struct.gnode* %707, null
  br i1 %708, label %709, label %713

709:                                              ; preds = %706
  %710 = load %struct.gnode*, %struct.gnode** %20, align 8
  %711 = getelementptr inbounds %struct.gnode, %struct.gnode* %710, i32 0, i32 7
  %712 = load %struct.gnode*, %struct.gnode** %711, align 8
  br label %715

713:                                              ; preds = %706
  %714 = load %struct.gnode*, %struct.gnode** %20, align 8
  br label %715

715:                                              ; preds = %713, %709
  %716 = phi %struct.gnode* [ %712, %709 ], [ %714, %713 ]
  store %struct.gnode* %716, %struct.gnode** %20, align 8
  br label %560, !llvm.loop !11

717:                                              ; preds = %560
  br label %718

718:                                              ; preds = %717
  %719 = load i32, i32* %5, align 4
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %5, align 4
  br label %547, !llvm.loop !12

721:                                              ; preds = %547
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @identify2(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4, %struct.gnode** noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gnode**, align 8
  %14 = alloca %struct.gnode*, align 8
  %15 = alloca %struct.gnode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.gnode** %5, %struct.gnode*** %13, align 8
  %22 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gnode*, %struct.gnode** %22, i64 %25
  %27 = load %struct.gnode*, %struct.gnode** %26, align 8
  store %struct.gnode* %27, %struct.gnode** %14, align 8
  store i32 1, i32* %18, align 4
  br label %28

28:                                               ; preds = %47, %6
  %29 = load i32, i32* %18, align 4
  %30 = icmp sle i32 %29, 4
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i16**, i16*** @gtrace, align 8
  %33 = load i32, i32* %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16*, i16** %32, i64 %34
  %36 = load i16*, i16** %35, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 0
  store i16 1, i16* %37, align 2
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = load i16**, i16*** @gtrace, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16*, i16** %41, i64 %43
  %45 = load i16*, i16** %44, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 1
  store i16 %40, i16* %46, align 2
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %18, align 4
  br label %28, !llvm.loop !13

50:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  %51 = load %struct.gnode*, %struct.gnode** %14, align 8
  store %struct.gnode* %51, %struct.gnode** %15, align 8
  br label %52

52:                                               ; preds = %83, %50
  %53 = load %struct.gnode*, %struct.gnode** %15, align 8
  %54 = icmp ne %struct.gnode* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load %struct.gnode*, %struct.gnode** %15, align 8
  %57 = getelementptr inbounds %struct.gnode, %struct.gnode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 1000000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %83

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = load %struct.gnode*, %struct.gnode** %15, align 8
  %65 = getelementptr inbounds %struct.gnode, %struct.gnode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = trunc i32 %66 to i16
  %68 = load i16**, i16*** @gtrace, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16*, i16** %68, i64 %70
  %72 = load i16*, i16** %71, align 8
  %73 = load i16**, i16*** @gtrace, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16*, i16** %73, i64 %75
  %77 = load i16*, i16** %76, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 0
  %79 = load i16, i16* %78, align 2
  %80 = add i16 %79, 1
  store i16 %80, i16* %78, align 2
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds i16, i16* %72, i64 %81
  store i16 %67, i16* %82, align 2
  br label %83

83:                                               ; preds = %61, %60
  %84 = load %struct.gnode*, %struct.gnode** %15, align 8
  %85 = getelementptr inbounds %struct.gnode, %struct.gnode* %84, i32 0, i32 7
  %86 = load %struct.gnode*, %struct.gnode** %85, align 8
  store %struct.gnode* %86, %struct.gnode** %15, align 8
  br label %52, !llvm.loop !14

87:                                               ; preds = %52
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %180, %87
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %183

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %159, %92
  %94 = load i16**, i16*** @gtrace, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16*, i16** %94, i64 %96
  %98 = load i16*, i16** %97, align 8
  %99 = load i16**, i16*** @gtrace, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16*, i16** %99, i64 %101
  %103 = load i16*, i16** %102, align 8
  %104 = getelementptr inbounds i16, i16* %103, i64 0
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds i16, i16* %98, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = load i32, i32* @numnodes, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %179

112:                                              ; preds = %93
  %113 = load i16**, i16*** @gtrace, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16*, i16** %113, i64 %115
  %117 = load i16*, i16** %116, align 8
  %118 = load i16**, i16*** @gtrace, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16*, i16** %118, i64 %120
  %122 = load i16*, i16** %121, align 8
  %123 = getelementptr inbounds i16, i16* %122, i64 0
  %124 = load i16, i16* %123, align 2
  %125 = sext i16 %124 to i32
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %117, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  store i32 %130, i32* %19, align 4
  %131 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %132 = load i16**, i16*** @gtrace, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16*, i16** %132, i64 %134
  %136 = load i16*, i16** %135, align 8
  %137 = load i16**, i16*** @gtrace, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16*, i16** %137, i64 %139
  %141 = load i16*, i16** %140, align 8
  %142 = getelementptr inbounds i16, i16* %141, i64 0
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i64
  %145 = getelementptr inbounds i16, i16* %136, i64 %144
  %146 = load i16, i16* %145, align 2
  %147 = sext i16 %146 to i64
  %148 = getelementptr inbounds %struct.gnode*, %struct.gnode** %131, i64 %147
  %149 = load %struct.gnode*, %struct.gnode** %148, align 8
  store %struct.gnode* %149, %struct.gnode** %15, align 8
  %150 = load %struct.gnode*, %struct.gnode** %15, align 8
  %151 = getelementptr inbounds %struct.gnode, %struct.gnode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %19, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %112
  %156 = load %struct.gnode*, %struct.gnode** %15, align 8
  %157 = getelementptr inbounds %struct.gnode, %struct.gnode* %156, i32 0, i32 7
  %158 = load %struct.gnode*, %struct.gnode** %157, align 8
  store %struct.gnode* %158, %struct.gnode** %15, align 8
  br label %159

159:                                              ; preds = %155, %112
  %160 = load %struct.gnode*, %struct.gnode** %15, align 8
  %161 = getelementptr inbounds %struct.gnode, %struct.gnode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = trunc i32 %162 to i16
  %164 = load i16**, i16*** @gtrace, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16*, i16** %164, i64 %166
  %168 = load i16*, i16** %167, align 8
  %169 = load i16**, i16*** @gtrace, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i16*, i16** %169, i64 %171
  %173 = load i16*, i16** %172, align 8
  %174 = getelementptr inbounds i16, i16* %173, i64 0
  %175 = load i16, i16* %174, align 2
  %176 = add i16 %175, 1
  store i16 %176, i16* %174, align 2
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds i16, i16* %168, i64 %177
  store i16 %163, i16* %178, align 2
  br label %93, !llvm.loop !15

179:                                              ; preds = %93
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %88, !llvm.loop !16

183:                                              ; preds = %88
  store i32 1, i32* %16, align 4
  br label %184

184:                                              ; preds = %210, %183
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %213

188:                                              ; preds = %184
  %189 = load i16**, i16*** @gtrace, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i16*, i16** %189, i64 %191
  %193 = load i16*, i16** %192, align 8
  %194 = load i16**, i16*** @gtrace, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16*, i16** %194, i64 %196
  %198 = load i16*, i16** %197, align 8
  %199 = getelementptr inbounds i16, i16* %198, i64 0
  %200 = load i16, i16* %199, align 2
  %201 = sext i16 %200 to i64
  %202 = getelementptr inbounds i16, i16* %193, i64 %201
  %203 = load i16, i16* %202, align 2
  %204 = sext i16 %203 to i32
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %188
  br label %213

209:                                              ; preds = %188
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %184, !llvm.loop !17

213:                                              ; preds = %208, %184
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 0, i32* %7, align 4
  br label %315

218:                                              ; preds = %213
  store i32 0, i32* %20, align 4
  %219 = load i16**, i16*** @gtrace, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i16*, i16** %219, i64 %221
  %223 = load i16*, i16** %222, align 8
  %224 = getelementptr inbounds i16, i16* %223, i64 0
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  store i32 %226, i32* %21, align 4
  store i32 1, i32* %18, align 4
  br label %227

227:                                              ; preds = %277, %218
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %21, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %280

231:                                              ; preds = %227
  %232 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %233 = load i16**, i16*** @gtrace, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i16*, i16** %233, i64 %235
  %237 = load i16*, i16** %236, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i16, i16* %237, i64 %239
  %241 = load i16, i16* %240, align 2
  %242 = sext i16 %241 to i64
  %243 = getelementptr inbounds %struct.gnode*, %struct.gnode** %232, i64 %242
  %244 = load %struct.gnode*, %struct.gnode** %243, align 8
  store %struct.gnode* %244, %struct.gnode** %15, align 8
  br label %245

245:                                              ; preds = %261, %231
  %246 = load %struct.gnode*, %struct.gnode** %15, align 8
  %247 = getelementptr inbounds %struct.gnode, %struct.gnode* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i16**, i16*** @gtrace, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i16*, i16** %249, i64 %251
  %253 = load i16*, i16** %252, align 8
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i16, i16* %253, i64 %256
  %258 = load i16, i16* %257, align 2
  %259 = sext i16 %258 to i32
  %260 = icmp ne i32 %248, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %245
  %262 = load %struct.gnode*, %struct.gnode** %15, align 8
  %263 = getelementptr inbounds %struct.gnode, %struct.gnode* %262, i32 0, i32 7
  %264 = load %struct.gnode*, %struct.gnode** %263, align 8
  store %struct.gnode* %264, %struct.gnode** %15, align 8
  br label %245, !llvm.loop !18

265:                                              ; preds = %245
  %266 = load i32, i32* %20, align 4
  store i32 %266, i32* %19, align 4
  %267 = load %struct.gnode*, %struct.gnode** %15, align 8
  %268 = getelementptr inbounds %struct.gnode, %struct.gnode* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %20, align 4
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* %10, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %280

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %227, !llvm.loop !19

280:                                              ; preds = %275, %227
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* %21, align 4
  %283 = icmp sge i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  store i32 1, i32* %7, align 4
  br label %315

285:                                              ; preds = %280
  %286 = load i16**, i16*** @gtrace, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i16*, i16** %286, i64 %288
  %290 = load i16*, i16** %289, align 8
  %291 = load i32, i32* %18, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i16, i16* %290, i64 %292
  %294 = load i16, i16* %293, align 2
  %295 = sext i16 %294 to i32
  %296 = load i32*, i32** %8, align 8
  store i32 %295, i32* %296, align 4
  %297 = load i16**, i16*** @gtrace, align 8
  %298 = load i32, i32* %16, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i16*, i16** %297, i64 %299
  %301 = load i16*, i16** %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i16, i16* %301, i64 %304
  %306 = load i16, i16* %305, align 2
  %307 = sext i16 %306 to i32
  %308 = load i32*, i32** %9, align 8
  store i32 %307, i32* %308, align 4
  %309 = load i32, i32* %19, align 4
  %310 = load i32*, i32** %11, align 8
  store i32 %309, i32* %310, align 4
  %311 = load i32, i32* %20, align 4
  %312 = load i32*, i32** %12, align 8
  store i32 %311, i32* %312, align 4
  %313 = load %struct.gnode*, %struct.gnode** %15, align 8
  %314 = load %struct.gnode**, %struct.gnode*** %13, align 8
  store %struct.gnode* %313, %struct.gnode** %314, align 8
  store i32 2, i32* %7, align 4
  br label %315

315:                                              ; preds = %285, %284, %217
  %316 = load i32, i32* %7, align 4
  ret i32 %316
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
