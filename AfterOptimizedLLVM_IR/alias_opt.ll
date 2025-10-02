; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/alias.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_node = type { i8*, %struct.alias_node*, %struct.alias_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@nargc = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".forward\00", align 1
@alias.t_dom = internal global [512 x i8] zeroinitializer, align 16
@alias.t_unam = internal global [512 x i8] zeroinitializer, align 16
@nargv = internal global [500 x i8*] zeroinitializer, align 16
@v_search.loaded = internal global i32 0, align 4
@aliases = internal global %struct.alias_node { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), %struct.alias_node* null, %struct.alias_node* null }, align 8
@aliasfile = external dso_local global i8*, align 8
@debug = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"load_alias open('%s') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"load_alias '%s' includes file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"load_alias for '%s' failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @alias(i32* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alias_node*, align 8
  %10 = alloca %struct.alias_node, align 8
  %11 = alloca %struct.alias_node*, align 8
  %12 = alloca %struct.alias_node, align 8
  %13 = alloca %struct.alias_node*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.alias_node*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [512 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [512 x i8], align 16
  %22 = alloca [512 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.alias_node*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store %struct.alias_node* %10, %struct.alias_node** %9, align 8
  store %struct.alias_node* %12, %struct.alias_node** %11, align 8
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  store i8* %27, i8** %8, align 8
  %28 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %29, align 8
  %30 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %31 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %30, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  call void @add_horz(%struct.alias_node* noundef %38, i8* noundef %43)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32, !llvm.loop !4

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %310, %261, %254, %242, %201, %190, %106, %47
  %49 = load i32, i32* @nargc, align 4
  %50 = icmp slt i32 %49, 500
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %53 = call %struct.alias_node* @pop(%struct.alias_node* noundef %52)
  store %struct.alias_node* %53, %struct.alias_node** %13, align 8
  %54 = icmp ne %struct.alias_node* %53, null
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %311

57:                                               ; preds = %55
  %58 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %59 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* noundef %60, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 9)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %65 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 9
  store i8* %67, i8** %20, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %106

72:                                               ; preds = %63
  %73 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = call %struct.alias_node* @h_search(%struct.alias_node* noundef %73, i8* noundef %74)
  %76 = icmp eq %struct.alias_node* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %79 = load i8*, i8** %20, align 8
  call void @add_horz(%struct.alias_node* noundef %78, i8* noundef %79)
  %80 = load i8*, i8** %20, align 8
  %81 = call i32 @stat(i8* noundef %80, %struct.stat* noundef %19) #4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 32768
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i8*, i8** %20, align 8
  %90 = call noalias %struct._IO_FILE* @fopen(i8* noundef %89, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %90, %struct._IO_FILE** %14, align 8
  %91 = icmp ne %struct._IO_FILE* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %98, %92
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %96 = call i8* @fgets(i8* noundef %94, i32 noundef 512, %struct._IO_FILE* noundef %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %101 = call i32 @recipients(%struct.alias_node* noundef %99, i8* noundef %100)
  br label %93, !llvm.loop !6

102:                                              ; preds = %93
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %104 = call i32 @fclose(%struct._IO_FILE* noundef %103)
  br label %105

105:                                              ; preds = %102, %88, %83, %77
  br label %106

106:                                              ; preds = %105, %72, %63
  br label %48, !llvm.loop !7

107:                                              ; preds = %57
  %108 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %109 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %113 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %110, i8* noundef %111, i8* noundef %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %265

116:                                              ; preds = %107
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 92
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  br label %126

123:                                              ; preds = %116
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i8* [ %122, %121 ], [ %125, %123 ]
  store i8* %127, i8** %8, align 8
  %128 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %129 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @strcpy(i8* noundef %130, i8* noundef %131) #4
  %133 = load i8*, i8** %8, align 8
  %134 = call %struct.alias_node* @v_search(i8* noundef %133)
  store %struct.alias_node* %134, %struct.alias_node** %15, align 8
  %135 = icmp ne %struct.alias_node* %134, null
  br i1 %135, label %136, label %192

136:                                              ; preds = %126
  store i32 0, i32* %24, align 4
  %137 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  store %struct.alias_node* %137, %struct.alias_node** %25, align 8
  %138 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %139 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %138, i32 0, i32 1
  %140 = load %struct.alias_node*, %struct.alias_node** %139, align 8
  store %struct.alias_node* %140, %struct.alias_node** %15, align 8
  br label %141

141:                                              ; preds = %181, %136
  %142 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %143 = icmp ne %struct.alias_node* %142, null
  br i1 %143, label %144, label %185

144:                                              ; preds = %141
  %145 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %146 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %21, i64 0, i64 0
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %150 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %147, i8* noundef %148, i8* noundef %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %144
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %154 = load i8, i8* %153, align 16
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 92
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  br label %162

159:                                              ; preds = %152
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  br label %162

162:                                              ; preds = %159, %157
  %163 = phi i8* [ %158, %157 ], [ %161, %159 ]
  store i8* %163, i8** %23, align 8
  %164 = load i8*, i8** %23, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %164, i8* noundef %165)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 1, i32* %24, align 4
  br label %174

169:                                              ; preds = %162
  %170 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %171 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %172 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  call void @add_horz(%struct.alias_node* noundef %170, i8* noundef %173)
  br label %174

174:                                              ; preds = %169, %168
  br label %180

175:                                              ; preds = %144
  %176 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %177 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %178 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  call void @add_horz(%struct.alias_node* noundef %176, i8* noundef %179)
  br label %180

180:                                              ; preds = %175, %174
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %183 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %182, i32 0, i32 1
  %184 = load %struct.alias_node*, %struct.alias_node** %183, align 8
  store %struct.alias_node* %184, %struct.alias_node** %15, align 8
  br label %141, !llvm.loop !8

185:                                              ; preds = %141
  %186 = load %struct.alias_node*, %struct.alias_node** %25, align 8
  %187 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %186, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %187, align 8
  %188 = load i32, i32* %24, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %48, !llvm.loop !7

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %191, %126
  %193 = load i8*, i8** %8, align 8
  %194 = call i8* (i8*, ...) bitcast (i8* (...)* @tilde to i8* (i8*, ...)*)(i8* noundef %193)
  store i8* %194, i8** %16, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %245

196:                                              ; preds = %192
  %197 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = call %struct.alias_node* @h_search(%struct.alias_node* noundef %197, i8* noundef %198)
  %200 = icmp ne %struct.alias_node* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %48, !llvm.loop !7

202:                                              ; preds = %196
  %203 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %204 = load i8*, i8** %16, align 8
  call void @add_horz(%struct.alias_node* noundef %203, i8* noundef %204)
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %206 = load i8*, i8** %16, align 8
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %205, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %206, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #4
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %209 = call i32 @stat(i8* noundef %208, %struct.stat* noundef %19) #4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, 61440
  %215 = icmp eq i32 %214, 32768
  br i1 %215, label %216, label %244

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 292
  %220 = icmp eq i32 %219, 292
  br i1 %220, label %221, label %244

221:                                              ; preds = %216
  %222 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %223 = call noalias %struct._IO_FILE* @fopen(i8* noundef %222, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %223, %struct._IO_FILE** %14, align 8
  %224 = icmp ne %struct._IO_FILE* %223, null
  br i1 %224, label %225, label %244

225:                                              ; preds = %221
  store i32 0, i32* %18, align 4
  br label %226

226:                                              ; preds = %231, %225
  %227 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %229 = call i8* @fgets(i8* noundef %227, i32 noundef 512, %struct._IO_FILE* noundef %228)
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %233 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %234 = call i32 @recipients(%struct.alias_node* noundef %232, i8* noundef %233)
  %235 = load i32, i32* %18, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %18, align 4
  br label %226, !llvm.loop !9

237:                                              ; preds = %226
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %239 = call i32 @fclose(%struct._IO_FILE* noundef %238)
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %48, !llvm.loop !7

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243, %221, %216, %211, %202
  br label %245

245:                                              ; preds = %244, %192
  %246 = load i8*, i8** %8, align 8
  %247 = call i8* (i8*, ...) bitcast (i8* (...)* @res_fname to i8* (i8*, ...)*)(i8* noundef %246)
  store i8* %247, i8** %26, align 8
  %248 = load i8*, i8** %26, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %264

250:                                              ; preds = %245
  %251 = load i8*, i8** %26, align 8
  %252 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %251, i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_dom, i64 0, i64 0), i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %256 = load i8*, i8** %26, align 8
  call void @add_horz(%struct.alias_node* noundef %255, i8* noundef %256)
  br label %48, !llvm.loop !7

257:                                              ; preds = %250
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 @strcmp(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0), i8* noundef %258) #5
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  call void @add_horz(%struct.alias_node* noundef %262, i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0))
  br label %48, !llvm.loop !7

263:                                              ; preds = %257
  br label %264

264:                                              ; preds = %263, %245
  br label %265

265:                                              ; preds = %264, %115
  %266 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %267 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 92
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %274 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  br label %281

276:                                              ; preds = %265
  %277 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %278 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  br label %281

281:                                              ; preds = %276, %272
  %282 = phi i8* [ %275, %272 ], [ %280, %276 ]
  store i8* %282, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %297, %281
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @nargc, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = load i8*, i8** %8, align 8
  %293 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %291, i8* noundef %292)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  br label %300

296:                                              ; preds = %287
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %283, !llvm.loop !10

300:                                              ; preds = %295, %283
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @nargc, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load i8*, i8** %8, align 8
  %306 = load i32, i32* @nargc, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @nargc, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %308
  store i8* %305, i8** %309, align 8
  br label %310

310:                                              ; preds = %304, %300
  br label %48, !llvm.loop !7

311:                                              ; preds = %55
  %312 = load i32, i32* @nargc, align 4
  %313 = load i32*, i32** %3, align 8
  store i32 %312, i32* %313, align 4
  ret i8** getelementptr inbounds ([500 x i8*], [500 x i8*]* @nargv, i64 0, i64 0)
}

declare dso_local i32 @strncmpic(...) #1

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @islocal(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @strcmpic(...) #1

declare dso_local i8* @tilde(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i8* @res_fname(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @v_search(i8* noundef %0) #0 {
  %2 = alloca %struct.alias_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.alias_node*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.alias_node* @aliases, %struct.alias_node** %4, align 8
  %6 = load i32, i32* @v_search.loaded, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %10 = load i8*, i8** @aliasfile, align 8
  call void @load_alias(%struct.alias_node* noundef %9, i8* noundef %10)
  store i32 1, i32* @v_search.loaded, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %13 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %12, i32 0, i32 2
  %14 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  store %struct.alias_node* %14, %struct.alias_node** %5, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %17 = icmp ne %struct.alias_node* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %20 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %21, i8* noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 2
  %30 = load %struct.alias_node*, %struct.alias_node** %29, align 8
  store %struct.alias_node* %30, %struct.alias_node** %5, align 8
  br label %15, !llvm.loop !11

31:                                               ; preds = %25, %15
  %32 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %33 = icmp eq %struct.alias_node* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.alias_node* null, %struct.alias_node** %2, align 8
  br label %37

35:                                               ; preds = %31
  %36 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  store %struct.alias_node* %36, %struct.alias_node** %2, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  ret %struct.alias_node* %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @h_search(%struct.alias_node* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %7 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i32 0, i32 1
  %8 = load %struct.alias_node*, %struct.alias_node** %7, align 8
  store %struct.alias_node* %8, %struct.alias_node** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %11 = icmp ne %struct.alias_node* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %14 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %15, i8* noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %23 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %22, i32 0, i32 1
  %24 = load %struct.alias_node*, %struct.alias_node** %23, align 8
  store %struct.alias_node* %24, %struct.alias_node** %5, align 8
  br label %9, !llvm.loop !12

25:                                               ; preds = %19, %9
  %26 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  ret %struct.alias_node* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_alias(%struct.alias_node* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.alias_node*, align 8
  %7 = alloca %struct.alias_node*, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca i8*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call noalias %struct._IO_FILE* @fopen(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %5, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @debug, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* noundef %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %156

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %123, %109, %61, %41, %24
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %28 = call i8* @fgets(i8* noundef %26, i32 noundef 512, %struct._IO_FILE* noundef %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %127

30:                                               ; preds = %25
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 35
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %30
  br label %25, !llvm.loop !13

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strncmp(i8* noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 noundef 9) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 9
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @strchr(i8* noundef %49, i32 noundef 10) #5
  store i8* %50, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i8*, i8** %13, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* @debug, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* noundef %58, i8* noundef %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %63 = load i8*, i8** %10, align 8
  call void @load_alias(%struct.alias_node* noundef %62, i8* noundef %63)
  br label %25, !llvm.loop !13

64:                                               ; preds = %42
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br i1 %68, label %69, label %123

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 9
  br i1 %73, label %74, label %123

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %98, %74
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 32
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 9
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 44
  br label %96

96:                                               ; preds = %91, %86, %81, %76
  %97 = phi i1 [ false, %86 ], [ false, %81 ], [ false, %76 ], [ %95, %91 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  br label %76, !llvm.loop !14

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  store i8 0, i8* %102, align 1
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %107 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %104, i8* noundef %105, i8* noundef %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %25, !llvm.loop !13

110:                                              ; preds = %101
  %111 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %113 = call %struct.alias_node* @add_vert(%struct.alias_node* noundef %111, i8* noundef %112)
  store %struct.alias_node* %113, %struct.alias_node** %7, align 8
  %114 = icmp eq %struct.alias_node* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* @debug, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* noundef %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %156

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %69, %64
  %124 = load %struct.alias_node*, %struct.alias_node** %7, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @recipients(%struct.alias_node* noundef %124, i8* noundef %125)
  br label %25, !llvm.loop !13

127:                                              ; preds = %25
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %129 = call i32 @fclose(%struct._IO_FILE* noundef %128)
  %130 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  store %struct.alias_node* %130, %struct.alias_node** %6, align 8
  br label %131

131:                                              ; preds = %155, %127
  %132 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %133 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %132, i32 0, i32 2
  %134 = load %struct.alias_node*, %struct.alias_node** %133, align 8
  %135 = icmp ne %struct.alias_node* %134, null
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %138 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %137, i32 0, i32 2
  %139 = load %struct.alias_node*, %struct.alias_node** %138, align 8
  %140 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %139, i32 0, i32 1
  %141 = load %struct.alias_node*, %struct.alias_node** %140, align 8
  %142 = icmp eq %struct.alias_node* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %145 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %144, i32 0, i32 2
  %146 = load %struct.alias_node*, %struct.alias_node** %145, align 8
  %147 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %146, i32 0, i32 2
  %148 = load %struct.alias_node*, %struct.alias_node** %147, align 8
  %149 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %150 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %149, i32 0, i32 2
  store %struct.alias_node* %148, %struct.alias_node** %150, align 8
  br label %155

151:                                              ; preds = %136
  %152 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %153 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %152, i32 0, i32 2
  %154 = load %struct.alias_node*, %struct.alias_node** %153, align 8
  store %struct.alias_node* %154, %struct.alias_node** %6, align 8
  br label %155

155:                                              ; preds = %151, %143
  br label %131, !llvm.loop !15

156:                                              ; preds = %23, %121, %131
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @recipients(%struct.alias_node* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alias_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.alias_node* %0, %struct.alias_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  call void @strip_comments(i8* noundef %10)
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br label %31

31:                                               ; preds = %26, %21, %16, %11
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ true, %11 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %11, !llvm.loop !16

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %141, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 35
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i1 [ false, %37 ], [ %47, %43 ]
  br i1 %49, label %50, label %142

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = call i8* @strchr(i8* noundef %58, i32 noundef 34) #5
  store i8* %59, i8** %5, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %144

63:                                               ; preds = %56
  br label %91

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 9
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 44
  br label %85

85:                                               ; preds = %80, %75, %70, %65
  %86 = phi i1 [ false, %75 ], [ false, %70 ], [ false, %65 ], [ %84, %80 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %65, !llvm.loop !17

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  store i8 0, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %103 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %100, i8* noundef %101, i8* noundef %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %107 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %110 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %108, i8* noundef %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105, %99
  %113 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %114 = load i8*, i8** %6, align 8
  call void @add_horz(%struct.alias_node* noundef %113, i8* noundef %114)
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %138, %115
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 9
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 44
  br label %136

136:                                              ; preds = %131, %126, %121, %116
  %137 = phi i1 [ true, %126 ], [ true, %121 ], [ true, %116 ], [ %135, %131 ]
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  br label %116, !llvm.loop !18

141:                                              ; preds = %136
  br label %37, !llvm.loop !19

142:                                              ; preds = %48
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %61
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @strip_comments(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strchr(i8* noundef %5, i32 noundef 40) #5
  store i8* %6, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strchr(i8* noundef %11, i32 noundef 41) #5
  store i8* %12, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  %18 = call i8* @strcpy(i8* noundef %15, i8* noundef %17) #4
  br label %21

19:                                               ; preds = %8
  %20 = load i8*, i8** %3, align 8
  store i8 0, i8* %20, align 1
  br label %22

21:                                               ; preds = %14
  br label %4, !llvm.loop !20

22:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @add_vert(%struct.alias_node* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strchr(i8* noundef %7, i32 noundef 58) #5
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %10, %2
  %13 = call noalias i8* @malloc(i64 noundef 24) #4
  %14 = bitcast i8* %13 to %struct.alias_node*
  store %struct.alias_node* %14, %struct.alias_node** %6, align 8
  %15 = icmp ne %struct.alias_node* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* noundef %17) #5
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call noalias i8* @malloc(i64 noundef %21) #4
  %23 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %24 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %28 = bitcast %struct.alias_node* %27 to i8*
  call void @free(i8* noundef %28) #4
  store %struct.alias_node* null, %struct.alias_node** %6, align 8
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %31 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strcpy(i8* noundef %32, i8* noundef %33) #4
  %35 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %36 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %35, i32 0, i32 2
  %37 = load %struct.alias_node*, %struct.alias_node** %36, align 8
  %38 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %39 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %38, i32 0, i32 2
  store %struct.alias_node* %37, %struct.alias_node** %39, align 8
  %40 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %41 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %40, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %41, align 8
  %42 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %43 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %44 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %43, i32 0, i32 2
  store %struct.alias_node* %42, %struct.alias_node** %44, align 8
  br label %45

45:                                               ; preds = %29, %26
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  ret %struct.alias_node* %47
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_horz(%struct.alias_node* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef 24) #4
  %7 = bitcast i8* %6 to %struct.alias_node*
  store %struct.alias_node* %7, %struct.alias_node** %5, align 8
  %8 = icmp ne %struct.alias_node* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* noundef %10) #5
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call noalias i8* @malloc(i64 noundef %14) #4
  %16 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %21 = bitcast %struct.alias_node* %20 to i8*
  call void @free(i8* noundef %21) #4
  store %struct.alias_node* null, %struct.alias_node** %5, align 8
  br label %38

22:                                               ; preds = %9
  %23 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %24 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strcpy(i8* noundef %25, i8* noundef %26) #4
  %28 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 1
  %30 = load %struct.alias_node*, %struct.alias_node** %29, align 8
  %31 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %32 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %31, i32 0, i32 1
  store %struct.alias_node* %30, %struct.alias_node** %32, align 8
  %33 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %34 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %33, i32 0, i32 2
  store %struct.alias_node* null, %struct.alias_node** %34, align 8
  %35 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %36 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %37 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %36, i32 0, i32 1
  store %struct.alias_node* %35, %struct.alias_node** %37, align 8
  br label %38

38:                                               ; preds = %22, %19
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @pop(%struct.alias_node* noundef %0) #0 {
  %2 = alloca %struct.alias_node*, align 8
  %3 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %2, align 8
  store %struct.alias_node* null, %struct.alias_node** %3, align 8
  %4 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %5 = icmp ne %struct.alias_node* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %8 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i32 0, i32 1
  %9 = load %struct.alias_node*, %struct.alias_node** %8, align 8
  store %struct.alias_node* %9, %struct.alias_node** %3, align 8
  %10 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %11 = icmp ne %struct.alias_node* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %14 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 1
  %15 = load %struct.alias_node*, %struct.alias_node** %14, align 8
  %16 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %16, i32 0, i32 1
  store %struct.alias_node* %15, %struct.alias_node** %17, align 8
  br label %18

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  ret %struct.alias_node* %20
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
