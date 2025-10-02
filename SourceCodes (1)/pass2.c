; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [33 x i8] c"ERROR: Illegal text record = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: Program does not fit in memory. Aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: Undefined global %s. Program not loaded.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = dso_local global i32 0, align 4
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PASS2(i8* noundef %0, %struct.SYMBOL_TABLE_ENTRY** noundef %1, i32* noundef %2, i32* noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [9 x i8], align 1
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %1, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 0, i32* %14, align 4
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %249, %5
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i32 @feof(%struct._IO_FILE* noundef %25) #4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 1048576
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %253

34:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %12, %struct._IO_FILE* noundef %35)
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %241 [
    i32 84, label %40
    i32 72, label %74
    i32 77, label %103
    i32 82, label %169
    i32 69, label %240
    i32 68, label %240
    i32 0, label %240
  ]

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @strlen(i8* noundef %41) #5
  %43 = icmp ult i64 %42, 9
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %16, align 4
  br label %67

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %47, i32 noundef 6, i32 noundef 16, i32* noundef %13, i32* noundef %16)
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %49, i32 noundef 2, i32 noundef 16, i32* noundef %15, i32* noundef %16)
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @strlen(i8* noundef %50) #5
  %52 = load i32, i32* %15, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 9, %53
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %66

58:                                               ; preds = %45
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i8*, i8** %6, align 8
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* noundef %60, i32 noundef %61, i32 noundef %64, i8* noundef %65, i32* noundef %16)
  br label %66

66:                                               ; preds = %58, %57
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %242

74:                                               ; preds = %34
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @strlen(i8* noundef %75) #5
  %77 = icmp ne i64 %76, 21
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %16, align 4
  br label %102

79:                                               ; preds = %74
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i8* @strncpy(i8* noundef %80, i8* noundef %82, i64 noundef 8) #4
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %85, i32 noundef 6, i32 noundef 16, i32* noundef %17, i32* noundef %16)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %91, i32 noundef 6, i32 noundef 16, i32* noundef %17, i32* noundef %16)
  %92 = load i32, i32* %17, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 1048576
  br i1 %98, label %99, label %101

99:                                               ; preds = %79
  %100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %79
  br label %102

102:                                              ; preds = %101, %78
  br label %242

103:                                              ; preds = %34
  %104 = load i8*, i8** %12, align 8
  %105 = call i64 @strlen(i8* noundef %104) #5
  %106 = icmp ult i64 %105, 9
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %16, align 4
  br label %162

108:                                              ; preds = %103
  %109 = load i8*, i8** %12, align 8
  %110 = call i64 @strlen(i8* noundef %109) #5
  %111 = icmp eq i64 %110, 9
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %114, i32 noundef 6, i32 noundef 16, i32* noundef %13, i32* noundef %16)
  %115 = load i8*, i8** %12, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %116, i32 noundef 2, i32 noundef 16, i32* noundef %15, i32* noundef %16)
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %15, align 4
  %122 = load i8*, i8** %6, align 8
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 noundef %117, i32 noundef %120, i32 noundef %121, i8* noundef %122, i32* noundef %16)
  br label %161

123:                                              ; preds = %108
  %124 = load i8*, i8** %12, align 8
  %125 = call i64 @strlen(i8* noundef %124) #5
  %126 = icmp ne i64 %125, 18
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 1, i32* %16, align 4
  br label %160

128:                                              ; preds = %123
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %130, i32 noundef 6, i32 noundef 16, i32* noundef %13, i32* noundef %16)
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %132, i32 noundef 2, i32 noundef 16, i32* noundef %15, i32* noundef %16)
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 9
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  switch i32 %136, label %139 [
    i32 45, label %137
    i32 43, label %138
  ]

137:                                              ; preds = %128
  store i32 -1, i32* %19, align 4
  br label %140

138:                                              ; preds = %128
  store i32 1, i32* %19, align 4
  br label %140

139:                                              ; preds = %128
  store i32 0, i32* %19, align 4
  store i32 1, i32* %16, align 4
  br label %140

140:                                              ; preds = %139, %138, %137
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 10
  %143 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  %144 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %142, %struct.SYMBOL_TABLE_ENTRY** noundef %143)
  store %struct.SYMBOL_TABLE_ENTRY* %144, %struct.SYMBOL_TABLE_ENTRY** %18, align 8
  %145 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %18, align 8
  %146 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 1, i32* %16, align 4
  br label %159

148:                                              ; preds = %140
  %149 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %18, align 8
  %150 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %19, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %15, align 4
  %158 = load i8*, i8** %6, align 8
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 noundef %153, i32 noundef %156, i32 noundef %157, i8* noundef %158, i32* noundef %16)
  br label %159

159:                                              ; preds = %148, %147
  br label %160

160:                                              ; preds = %159, %127
  br label %161

161:                                              ; preds = %160, %112
  br label %162

162:                                              ; preds = %161, %107
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %166)
  br label %168

168:                                              ; preds = %165, %162
  br label %242

169:                                              ; preds = %34
  %170 = load i8*, i8** %12, align 8
  %171 = call i64 @strlen(i8* noundef %170) #5
  %172 = icmp ugt i64 %171, 73
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 1, i32* %16, align 4
  br label %233

174:                                              ; preds = %169
  store i32 1, i32* %20, align 4
  %175 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 8
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %222, %174
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 8
  %179 = sext i32 %178 to i64
  %180 = load i8*, i8** %12, align 8
  %181 = call i64 @strlen(i8* noundef %180) #5
  %182 = icmp ule i64 %179, %181
  br i1 %182, label %183, label %225

183:                                              ; preds = %176
  %184 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %185 = load i8*, i8** %12, align 8
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = call i8* @strncpy(i8* noundef %184, i8* noundef %188, i64 noundef 8) #4
  %190 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %191 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  %192 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %190, %struct.SYMBOL_TABLE_ENTRY** noundef %191)
  %193 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %192, null
  br i1 %193, label %194, label %222

194:                                              ; preds = %183
  %195 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %196 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  %197 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %195, i32 noundef 0, i32 noundef 5, %struct.SYMBOL_TABLE_ENTRY** noundef %196)
  store i32 7, i32* %22, align 4
  br label %198

198:                                              ; preds = %211, %194
  %199 = load i32, i32* %22, align 4
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %22, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 32
  br label %208

208:                                              ; preds = %201, %198
  %209 = phi i1 [ true, %198 ], [ %207, %201 ]
  br i1 %209, label %210, label %214

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %22, align 4
  br label %198, !llvm.loop !4

214:                                              ; preds = %208
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 %217
  store i8 0, i8* %218, align 1
  %219 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %220 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef %219)
  %221 = load i32*, i32** %9, align 8
  store i32 1, i32* %221, align 4
  br label %222

222:                                              ; preds = %214, %183
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 8
  store i32 %224, i32* %20, align 4
  br label %176, !llvm.loop !6

225:                                              ; preds = %176
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = load i8*, i8** %12, align 8
  %229 = call i64 @strlen(i8* noundef %228) #5
  %230 = icmp ne i64 %227, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 1, i32* %16, align 4
  br label %232

232:                                              ; preds = %231, %225
  br label %233

233:                                              ; preds = %232, %173
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i8*, i8** %12, align 8
  %238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %242

240:                                              ; preds = %34, %34, %34
  br label %241

241:                                              ; preds = %34, %240
  br label %242

242:                                              ; preds = %241, %239, %168, %102, %73
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 0
  br label %249

249:                                              ; preds = %246, %242
  %250 = phi i1 [ true, %242 ], [ %248, %246 ]
  %251 = zext i1 %250 to i32
  %252 = load i32*, i32** %9, align 8
  store i32 %251, i32* %252, align 4
  br label %24, !llvm.loop !7

253:                                              ; preds = %32
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local void @STORE_AT(...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @ADD_INT_TO_LOC(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #2

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
