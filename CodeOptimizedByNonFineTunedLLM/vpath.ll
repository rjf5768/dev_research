; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/vpath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpath = type { %struct.vpath*, i8*, i8*, i32, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type opaque
%struct.dep = type opaque
%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }

@vpaths = internal global %struct.vpath* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"$(VPATH)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@general_vpath = internal global %struct.vpath* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\0A# VPATH Search Paths\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vpath %s \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"# No `vpath' search paths.\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A# %u `vpath' search paths.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\0A# No general (`VPATH' variable) search path.\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"\0A# General (`VPATH' variable) search path:\0A# \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @build_vpath_lists() #0 {
  %1 = alloca %struct.vpath*, align 8
  %2 = alloca %struct.vpath*, align 8
  %3 = alloca %struct.vpath*, align 8
  %4 = alloca i8*, align 8
  store %struct.vpath* null, %struct.vpath** %1, align 8
  %5 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %5, %struct.vpath** %2, align 8
  br label %6

6:                                                ; preds = %17, %0
  %7 = load %struct.vpath*, %struct.vpath** %2, align 8
  %8 = icmp ne %struct.vpath* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.vpath*, %struct.vpath** %2, align 8
  %11 = getelementptr inbounds %struct.vpath, %struct.vpath* %10, i32 0, i32 0
  %12 = load %struct.vpath*, %struct.vpath** %11, align 8
  store %struct.vpath* %12, %struct.vpath** %3, align 8
  %13 = load %struct.vpath*, %struct.vpath** %1, align 8
  %14 = load %struct.vpath*, %struct.vpath** %2, align 8
  %15 = getelementptr inbounds %struct.vpath, %struct.vpath* %14, i32 0, i32 0
  store %struct.vpath* %13, %struct.vpath** %15, align 8
  %16 = load %struct.vpath*, %struct.vpath** %2, align 8
  store %struct.vpath* %16, %struct.vpath** %1, align 8
  br label %17

17:                                               ; preds = %9
  %18 = load %struct.vpath*, %struct.vpath** %3, align 8
  store %struct.vpath* %18, %struct.vpath** %2, align 8
  br label %6, !llvm.loop !4

19:                                               ; preds = %6
  %20 = load %struct.vpath*, %struct.vpath** %1, align 8
  store %struct.vpath* %20, %struct.vpath** @vpaths, align 8
  %21 = call i8* (i8*, ...) bitcast (i8* (...)* @variable_expand to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  call void @construct_vpath_list(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef %27)
  %28 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %29 = icmp eq %struct.vpath* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.vpath* null, %struct.vpath** @general_vpath, align 8
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %32, %struct.vpath** @general_vpath, align 8
  %33 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %34 = getelementptr inbounds %struct.vpath, %struct.vpath* %33, i32 0, i32 0
  %35 = load %struct.vpath*, %struct.vpath** %34, align 8
  store %struct.vpath* %35, %struct.vpath** @vpaths, align 8
  br label %36

36:                                               ; preds = %31, %30
  br label %37

37:                                               ; preds = %36, %19
  ret void
}

declare dso_local i8* @variable_expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @construct_vpath_list(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vpath*, align 8
  %12 = alloca %struct.vpath*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vpath*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strlen(i8* noundef %20) #5
  %22 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %19, i64 noundef %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* (i8*, ...) bitcast (i8* (...)* @find_percent to i8* (i8*, ...)*)(i8* noundef %23)
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %127

28:                                               ; preds = %25
  %29 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %29, %struct.vpath** %12, align 8
  %30 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %30, %struct.vpath** %11, align 8
  br label %31

31:                                               ; preds = %116, %28
  %32 = load %struct.vpath*, %struct.vpath** %11, align 8
  %33 = icmp ne %struct.vpath* %32, null
  br i1 %33, label %34, label %121

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.vpath*, %struct.vpath** %11, align 8
  %42 = getelementptr inbounds %struct.vpath, %struct.vpath* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %40, %37
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load %struct.vpath*, %struct.vpath** %11, align 8
  %52 = getelementptr inbounds %struct.vpath, %struct.vpath* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.vpath*, %struct.vpath** %11, align 8
  %55 = getelementptr inbounds %struct.vpath, %struct.vpath* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %53 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = icmp eq i64 %50, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %45, %40
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.vpath*, %struct.vpath** %11, align 8
  %64 = getelementptr inbounds %struct.vpath, %struct.vpath* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %62, %65
  br i1 %66, label %91, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load %struct.vpath*, %struct.vpath** %11, align 8
  %72 = getelementptr inbounds %struct.vpath, %struct.vpath* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %67
  %78 = load i8*, i8** %3, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load %struct.vpath*, %struct.vpath** %11, align 8
  %86 = getelementptr inbounds %struct.vpath, %struct.vpath* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = call i32 @strcmp(i8* noundef %84, i8* noundef %88) #5
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %82, %77, %61, %34
  %92 = load %struct.vpath*, %struct.vpath** %12, align 8
  %93 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %94 = icmp eq %struct.vpath* %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.vpath*, %struct.vpath** %11, align 8
  %97 = getelementptr inbounds %struct.vpath, %struct.vpath* %96, i32 0, i32 0
  %98 = load %struct.vpath*, %struct.vpath** %97, align 8
  store %struct.vpath* %98, %struct.vpath** @vpaths, align 8
  br label %105

99:                                               ; preds = %91
  %100 = load %struct.vpath*, %struct.vpath** %11, align 8
  %101 = getelementptr inbounds %struct.vpath, %struct.vpath* %100, i32 0, i32 0
  %102 = load %struct.vpath*, %struct.vpath** %101, align 8
  %103 = load %struct.vpath*, %struct.vpath** %12, align 8
  %104 = getelementptr inbounds %struct.vpath, %struct.vpath* %103, i32 0, i32 0
  store %struct.vpath* %102, %struct.vpath** %104, align 8
  br label %105

105:                                              ; preds = %99, %95
  %106 = load %struct.vpath*, %struct.vpath** %11, align 8
  %107 = getelementptr inbounds %struct.vpath, %struct.vpath* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  call void @free(i8* noundef %108) #6
  %109 = load %struct.vpath*, %struct.vpath** %11, align 8
  %110 = getelementptr inbounds %struct.vpath, %struct.vpath* %109, i32 0, i32 4
  %111 = load i8**, i8*** %110, align 8
  %112 = bitcast i8** %111 to i8*
  call void @free(i8* noundef %112) #6
  %113 = load %struct.vpath*, %struct.vpath** %11, align 8
  %114 = bitcast %struct.vpath* %113 to i8*
  call void @free(i8* noundef %114) #6
  br label %115

115:                                              ; preds = %105, %82, %67, %45
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.vpath*, %struct.vpath** %11, align 8
  store %struct.vpath* %117, %struct.vpath** %12, align 8
  %118 = load %struct.vpath*, %struct.vpath** %11, align 8
  %119 = getelementptr inbounds %struct.vpath, %struct.vpath* %118, i32 0, i32 0
  %120 = load %struct.vpath*, %struct.vpath** %119, align 8
  store %struct.vpath* %120, %struct.vpath** %11, align 8
  br label %31, !llvm.loop !6

121:                                              ; preds = %31
  %122 = load i8*, i8** %3, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %125) #6
  br label %126

126:                                              ; preds = %124, %121
  br label %304

127:                                              ; preds = %25
  %128 = load i8*, i8** %4, align 8
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %134, %127
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 58
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  br label %129, !llvm.loop !7

137:                                              ; preds = %129
  store i32 2, i32* %9, align 4
  br label %138

138:                                              ; preds = %152, %137
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %6, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 58
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %138, !llvm.loop !8

153:                                              ; preds = %138
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef %156)
  %158 = bitcast i8* %157 to i8**
  store i8** %158, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %159 = load i8*, i8** %4, align 8
  store i8* %159, i8** %6, align 8
  br label %160

160:                                              ; preds = %255, %230, %153
  %161 = load i8*, i8** %6, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %256

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %178, %165
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 58
  br label %176

176:                                              ; preds = %171, %166
  %177 = phi i1 [ false, %166 ], [ %175, %171 ]
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %6, align 8
  br label %166, !llvm.loop !9

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %256

187:                                              ; preds = %181
  %188 = load i8*, i8** %6, align 8
  store i8* %188, i8** %13, align 8
  br label %189

189:                                              ; preds = %201, %187
  %190 = load i8*, i8** %6, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load i8*, i8** %6, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 58
  br label %199

199:                                              ; preds = %194, %189
  %200 = phi i1 [ false, %189 ], [ %198, %194 ]
  br i1 %200, label %201, label %204

201:                                              ; preds = %199
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %6, align 8
  br label %189, !llvm.loop !10

204:                                              ; preds = %199
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ugt i32 %211, 1
  br i1 %212, label %213, label %222

213:                                              ; preds = %204
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 47
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32, i32* %14, align 4
  %221 = add i32 %220, -1
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %219, %213, %204
  %223 = load i32, i32* %14, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i8*, i8** %13, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 46
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %160, !llvm.loop !11

231:                                              ; preds = %225, %222
  %232 = load i8*, i8** %13, align 8
  %233 = load i32, i32* %14, align 4
  %234 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef %232, i32 noundef %233)
  store i8* %234, i8** %13, align 8
  %235 = load i8*, i8** %13, align 8
  %236 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef %235, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %231
  %239 = load i8*, i8** %13, align 8
  %240 = call i8* (i8*, ...) bitcast (i8* (...)* @dir_name to i8* (i8*, ...)*)(i8* noundef %239)
  %241 = load i8**, i8*** %7, align 8
  %242 = load i32, i32* %5, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %5, align 4
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds i8*, i8** %241, i64 %244
  store i8* %240, i8** %245, align 8
  %246 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %246) #6
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp ugt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = load i32, i32* %14, align 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %250, %238
  br label %255

253:                                              ; preds = %231
  %254 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %254) #6
  br label %255

255:                                              ; preds = %253, %252
  br label %160, !llvm.loop !11

256:                                              ; preds = %186, %160
  %257 = load i32, i32* %5, align 4
  %258 = icmp ugt i32 %257, 0
  br i1 %258, label %259, label %301

259:                                              ; preds = %256
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* %9, align 4
  %262 = sub i32 %261, 1
  %263 = icmp ult i32 %260, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load i8**, i8*** %7, align 8
  %266 = bitcast i8** %265 to i8*
  %267 = load i32, i32* %5, align 4
  %268 = add i32 %267, 1
  %269 = zext i32 %268 to i64
  %270 = mul i64 %269, 8
  %271 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %266, i64 noundef %270)
  %272 = bitcast i8* %271 to i8**
  store i8** %272, i8*** %7, align 8
  br label %273

273:                                              ; preds = %264, %259
  %274 = load i8**, i8*** %7, align 8
  %275 = load i32, i32* %5, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  store i8* null, i8** %277, align 8
  %278 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 48)
  %279 = bitcast i8* %278 to %struct.vpath*
  store %struct.vpath* %279, %struct.vpath** %15, align 8
  %280 = load i8**, i8*** %7, align 8
  %281 = load %struct.vpath*, %struct.vpath** %15, align 8
  %282 = getelementptr inbounds %struct.vpath, %struct.vpath* %281, i32 0, i32 4
  store i8** %280, i8*** %282, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.vpath*, %struct.vpath** %15, align 8
  %285 = getelementptr inbounds %struct.vpath, %struct.vpath* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 8
  %286 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %287 = load %struct.vpath*, %struct.vpath** %15, align 8
  %288 = getelementptr inbounds %struct.vpath, %struct.vpath* %287, i32 0, i32 0
  store %struct.vpath* %286, %struct.vpath** %288, align 8
  %289 = load %struct.vpath*, %struct.vpath** %15, align 8
  store %struct.vpath* %289, %struct.vpath** @vpaths, align 8
  %290 = load i8*, i8** %3, align 8
  %291 = load %struct.vpath*, %struct.vpath** %15, align 8
  %292 = getelementptr inbounds %struct.vpath, %struct.vpath* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  %293 = load i8*, i8** %10, align 8
  %294 = load %struct.vpath*, %struct.vpath** %15, align 8
  %295 = getelementptr inbounds %struct.vpath, %struct.vpath* %294, i32 0, i32 2
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** %3, align 8
  %297 = call i64 @strlen(i8* noundef %296) #5
  %298 = trunc i64 %297 to i32
  %299 = load %struct.vpath*, %struct.vpath** %15, align 8
  %300 = getelementptr inbounds %struct.vpath, %struct.vpath* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 8
  br label %304

301:                                              ; preds = %256
  %302 = load i8**, i8*** %7, align 8
  %303 = bitcast i8** %302 to i8*
  call void @free(i8* noundef %303) #6
  br label %304

304:                                              ; preds = %126, %301, %273
  ret void
}

declare dso_local i8* @savestring(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i8* @find_percent(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local i8* @xmalloc(...) #1

declare dso_local i32 @dir_file_exists_p(...) #1

declare dso_local i8* @dir_name(...) #1

declare dso_local i8* @xrealloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpath_search(i8** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.vpath*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %12 = icmp eq %struct.vpath* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %15 = icmp eq %struct.vpath* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %13, %10
  %18 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %18, %struct.vpath** %4, align 8
  br label %19

19:                                               ; preds = %41, %17
  %20 = load %struct.vpath*, %struct.vpath** %4, align 8
  %21 = icmp ne %struct.vpath* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.vpath*, %struct.vpath** %4, align 8
  %24 = getelementptr inbounds %struct.vpath, %struct.vpath* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.vpath*, %struct.vpath** %4, align 8
  %27 = getelementptr inbounds %struct.vpath, %struct.vpath* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @pattern_matches to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %25, i8* noundef %28, i8* noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.vpath*, %struct.vpath** %4, align 8
  %35 = load i8**, i8*** %3, align 8
  %36 = call i32 @selective_vpath_search(%struct.vpath* noundef %34, i8** noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %55

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.vpath*, %struct.vpath** %4, align 8
  %43 = getelementptr inbounds %struct.vpath, %struct.vpath* %42, i32 0, i32 0
  %44 = load %struct.vpath*, %struct.vpath** %43, align 8
  store %struct.vpath* %44, %struct.vpath** %4, align 8
  br label %19, !llvm.loop !12

45:                                               ; preds = %19
  %46 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %47 = icmp ne %struct.vpath* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %50 = load i8**, i8*** %3, align 8
  %51 = call i32 @selective_vpath_search(%struct.vpath* noundef %49, i8** noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %48, %45
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %38, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pattern_matches(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_vpath_data_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @puts(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %7 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %7, %struct.vpath** %2, align 8
  br label %8

8:                                                ; preds = %51, %0
  %9 = load %struct.vpath*, %struct.vpath** %2, align 8
  %10 = icmp ne %struct.vpath* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %1, align 4
  %14 = load %struct.vpath*, %struct.vpath** %2, align 8
  %15 = getelementptr inbounds %struct.vpath, %struct.vpath* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* noundef %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %47, %11
  %19 = load %struct.vpath*, %struct.vpath** %2, align 8
  %20 = getelementptr inbounds %struct.vpath, %struct.vpath* %19, i32 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %18
  %28 = load %struct.vpath*, %struct.vpath** %2, align 8
  %29 = getelementptr inbounds %struct.vpath, %struct.vpath* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.vpath*, %struct.vpath** %2, align 8
  %36 = getelementptr inbounds %struct.vpath, %struct.vpath* %35, i32 0, i32 4
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 10, i32 58
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %34, i32 noundef %45)
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %18, !llvm.loop !13

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.vpath*, %struct.vpath** %2, align 8
  %53 = getelementptr inbounds %struct.vpath, %struct.vpath* %52, i32 0, i32 0
  %54 = load %struct.vpath*, %struct.vpath** %53, align 8
  store %struct.vpath* %54, %struct.vpath** %2, align 8
  br label %8, !llvm.loop !14

55:                                               ; preds = %8
  %56 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %57 = icmp eq %struct.vpath* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @puts(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %1, align 4
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %61)
  br label %63

63:                                               ; preds = %60, %58
  %64 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %65 = icmp eq %struct.vpath* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @puts(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %101

68:                                               ; preds = %63
  %69 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %70 = getelementptr inbounds %struct.vpath, %struct.vpath* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  store i8** %71, i8*** %4, align 8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = call i32 @fputs(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %97, %68
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load i8**, i8*** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, null
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 10, i32 58
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %86, i32 noundef %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %74, !llvm.loop !15

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %66
  ret void
}

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @selective_vpath_search(%struct.vpath* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpath*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.file*, align 8
  store %struct.vpath* %0, %struct.vpath** %4, align 8
  store i8** %1, i8*** %5, align 8
  %18 = load %struct.vpath*, %struct.vpath** %4, align 8
  %19 = getelementptr inbounds %struct.vpath, %struct.vpath* %18, i32 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %10, align 8
  %21 = load %struct.vpath*, %struct.vpath** %4, align 8
  %22 = getelementptr inbounds %struct.vpath, %struct.vpath* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %25)
  store %struct.file* %26, %struct.file** %17, align 8
  %27 = load %struct.file*, %struct.file** %17, align 8
  %28 = icmp eq %struct.file* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %17, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 12
  %32 = load i16, i16* %31, align 2
  %33 = lshr i16 %32, 7
  %34 = and i16 %33, 1
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %29, %2
  %39 = phi i1 [ true, %2 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* noundef %42) #5
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strrchr(i8* noundef %46, i32 noundef 47) #5
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i8*, i8** %8, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  br label %58

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i64 [ %56, %50 ], [ 0, %57 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ugt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  br label %69

66:                                               ; preds = %58
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i8* [ %65, %63 ], [ %68, %66 ]
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = add i32 %74, 1
  %76 = load i32, i32* %13, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  %81 = load i32, i32* %15, align 4
  %82 = add i32 %80, %81
  %83 = add i32 %82, 1
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %83, %84
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = alloca i8, i64 %87, align 16
  store i8* %88, i8** %7, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %191, %78
  %90 = load i8**, i8*** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %194

96:                                               ; preds = %89
  %97 = load i8*, i8** %7, align 8
  store i8* %97, i8** %8, align 8
  %98 = load i8**, i8*** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* noundef %102) #5
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %105, i8* align 1 %110, i64 %112, i1 false)
  %113 = load i32, i32* %14, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %96
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %8, align 8
  store i8 47, i8* %120, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %122, i8* align 1 %124, i64 %126, i1 false)
  %127 = load i32, i32* %15, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %119, %96
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = icmp ne i8* %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 -1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 47
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  store i8 47, i8* %142, align 1
  br label %143

143:                                              ; preds = %141, %135, %131
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %13, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %145, i8* align 1 %146, i64 %149, i1 false)
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load i8*, i8** %7, align 8
  %154 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %153)
  %155 = icmp ne %struct.file* %154, null
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %152, %143
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** %8, align 8
  store i8 0, i8* %161, align 1
  %162 = load i32, i32* %15, align 4
  %163 = icmp ugt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef %165, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %191

169:                                              ; preds = %164, %160
  %170 = load i8*, i8** %7, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef %170, i8* noundef %171)
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %169, %157
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i8*, i8** %8, align 8
  store i8 47, i8* %177, align 1
  %178 = load i8*, i8** %7, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8*, i8** %7, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %178, i64 noundef %187)
  %189 = load i8**, i8*** %5, align 8
  store i8* %188, i8** %189, align 8
  store i32 1, i32* %3, align 4
  br label %195

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190, %168
  %192 = load i32, i32* %12, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %89, !llvm.loop !16

194:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %176
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.file* @lookup_file(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
