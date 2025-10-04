; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrjpgcom.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrjpgcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal global %struct._IO_FILE* null, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@outfile = internal global %struct._IO_FILE* null, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"wrjpgcom inserts a textual comment in a JPEG file.\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"You can add to or replace any existing comment(s).\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Usage: %s [switches] \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"  -replace         Delete any existing comments\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"  -comment \22text\22  Insert comment with given text\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"  -cfile name      Read comment from named file\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Notice that you must put quotes around the comment text\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"when you use -comment.\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"If you do not give either -comment or -cfile on the command line,\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"then the comment text is read from standard input.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"It can be multiple lines, up to %u characters total.\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"You must specify an input JPEG file name when supplying\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"comment text from standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SOS without prior SOFn\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @progname, align 8
  %18 = load i8*, i8** @progname, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** @progname, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %27

27:                                               ; preds = %26, %20
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %164, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %167

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %167

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @keymatch(i8* noundef %47, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %163

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @keymatch(i8* noundef %52, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @usage()
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef %66, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %67, %struct._IO_FILE** %10, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i8*, i8** @progname, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %71, i8* noundef %76)
  call void @exit(i32 noundef 1) #6
  unreachable

78:                                               ; preds = %61
  br label %162

79:                                               ; preds = %51
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @keymatch(i8* noundef %80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %160

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void @usage()
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 34
  br i1 %99, label %100, label %156

100:                                              ; preds = %89
  %101 = call noalias i8* @malloc(i64 noundef 65000) #7
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

107:                                              ; preds = %100
  %108 = load i8*, i8** %9, align 8
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = call i8* @strcpy(i8* noundef %108, i8* noundef %114) #7
  br label %116

116:                                              ; preds = %145, %107
  %117 = load i8*, i8** %9, align 8
  %118 = call i64 @strlen(i8* noundef %117) #8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ugt i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 34
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sub i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 0, i8* %136, align 1
  br label %155

137:                                              ; preds = %122, %116
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

145:                                              ; preds = %137
  %146 = load i8*, i8** %9, align 8
  %147 = call i8* @strcat(i8* noundef %146, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #7
  %148 = load i8*, i8** %9, align 8
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @strcat(i8* noundef %148, i8* noundef %153) #7
  br label %116

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %89
  %157 = load i8*, i8** %9, align 8
  %158 = call i64 @strlen(i8* noundef %157) #8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %11, align 4
  br label %161

160:                                              ; preds = %79
  call void @usage()
  br label %161

161:                                              ; preds = %160, %156
  br label %162

162:                                              ; preds = %161, %78
  br label %163

163:                                              ; preds = %162, %50
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %28, !llvm.loop !4

167:                                              ; preds = %43, %28
  %168 = load i8*, i8** %9, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %172 = icmp ne %struct._IO_FILE* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  call void @usage()
  br label %174

174:                                              ; preds = %173, %170, %167
  %175 = load i8*, i8** %9, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %179 = icmp eq %struct._IO_FILE* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  call void @usage()
  br label %185

185:                                              ; preds = %184, %180, %177, %174
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %185
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call noalias %struct._IO_FILE* @fopen(i8* noundef %194, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store %struct._IO_FILE* %195, %struct._IO_FILE** @infile, align 8
  %196 = icmp eq %struct._IO_FILE* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %189
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %199 = load i8*, i8** @progname, align 8
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %199, i8* noundef %204)
  call void @exit(i32 noundef 1) #6
  unreachable

206:                                              ; preds = %189
  br label %209

207:                                              ; preds = %185
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %208, %struct._IO_FILE** @infile, align 8
  br label %209

209:                                              ; preds = %207, %206
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %4, align 4
  %212 = sub nsw i32 %211, 1
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %216 = load i8*, i8** @progname, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %215, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* noundef %216)
  call void @usage()
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %219, %struct._IO_FILE** @outfile, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %263

222:                                              ; preds = %218
  %223 = call noalias i8* @malloc(i64 noundef 65000) #7
  store i8* %223, i8** %9, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %227, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

229:                                              ; preds = %222
  store i32 0, i32* %11, align 4
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %231 = icmp ne %struct._IO_FILE* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  br label %236

234:                                              ; preds = %229
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi %struct._IO_FILE* [ %233, %232 ], [ %235, %234 ]
  store %struct._IO_FILE* %237, %struct._IO_FILE** %13, align 8
  br label %238

238:                                              ; preds = %248, %236
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %240 = call i32 @getc(%struct._IO_FILE* noundef %239)
  store i32 %240, i32* %14, align 4
  %241 = icmp ne i32 %240, -1
  br i1 %241, label %242, label %256

242:                                              ; preds = %238
  %243 = load i32, i32* %11, align 4
  %244 = icmp uge i32 %243, 65000
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %246, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 noundef 65000)
  call void @exit(i32 noundef 1) #6
  unreachable

248:                                              ; preds = %242
  %249 = load i32, i32* %14, align 4
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %9, align 8
  %252 = load i32, i32* %11, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %11, align 4
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  store i8 %250, i8* %255, align 1
  br label %238, !llvm.loop !6

256:                                              ; preds = %238
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %258 = icmp ne %struct._IO_FILE* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %261 = call i32 @fclose(%struct._IO_FILE* noundef %260)
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %218
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @scan_JPEG_header(i32 noundef %264)
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ugt i32 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %263
  call void @write_marker(i32 noundef 254)
  %269 = load i32, i32* %11, align 4
  %270 = add i32 %269, 2
  call void @write_2_bytes(i32 noundef %270)
  br label %271

271:                                              ; preds = %274, %268
  %272 = load i32, i32* %11, align 4
  %273 = icmp ugt i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %9, align 8
  %277 = load i8, i8* %275, align 1
  %278 = sext i8 %277 to i32
  call void @write_1_byte(i32 noundef %278)
  %279 = load i32, i32* %11, align 4
  %280 = add i32 %279, -1
  store i32 %280, i32* %11, align 4
  br label %271, !llvm.loop !7

281:                                              ; preds = %271
  br label %282

282:                                              ; preds = %281, %263
  %283 = load i32, i32* %12, align 4
  call void @write_marker(i32 noundef %283)
  call void @copy_rest_of_file()
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keymatch(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %51

24:                                               ; preds = %17
  %25 = call i16** @__ctype_b_loc() #9
  %26 = load i16*, i16** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @tolower(i32 noundef %35) #8
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %11, !llvm.loop !8

45:                                               ; preds = %11
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %41, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* noundef %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), i32 noundef 65000)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @scan_JPEG_header(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @first_marker()
  %6 = icmp ne i32 %5, 216
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

10:                                               ; preds = %1
  call void @write_marker(i32 noundef 216)
  br label %11

11:                                               ; preds = %30, %10
  %12 = call i32 @next_marker()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %28 [
    i32 192, label %14
    i32 193, label %14
    i32 194, label %14
    i32 195, label %14
    i32 197, label %14
    i32 198, label %14
    i32 199, label %14
    i32 201, label %14
    i32 202, label %14
    i32 203, label %14
    i32 205, label %14
    i32 206, label %14
    i32 207, label %14
    i32 218, label %16
    i32 217, label %19
    i32 254, label %21
  ]

14:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  call void @write_marker(i32 noundef %25)
  call void @copy_variable()
  br label %27

26:                                               ; preds = %21
  call void @skip_variable()
  br label %27

27:                                               ; preds = %26, %24
  br label %30

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  call void @write_marker(i32 noundef %29)
  call void @copy_variable()
  br label %30

30:                                               ; preds = %28, %27
  br label %11

31:                                               ; preds = %19, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_marker(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %4 = call i32 @putc(i32 noundef 255, %struct._IO_FILE* noundef %3)
  %5 = load i32, i32* %2, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = call i32 @putc(i32 noundef %5, %struct._IO_FILE* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_2_bytes(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 8
  %5 = and i32 %4, 255
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = call i32 @putc(i32 noundef %5, %struct._IO_FILE* noundef %6)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 255
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %11 = call i32 @putc(i32 noundef %9, %struct._IO_FILE* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_1_byte(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copy_rest_of_file() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = call i32 @putc(i32 noundef %7, %struct._IO_FILE* noundef %8)
  br label %2, !llvm.loop !9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_marker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %6 = call i32 @getc(%struct._IO_FILE* noundef %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 255
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 216
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_marker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @read_1_byte()
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %7, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 255
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = call i32 @read_1_byte()
  store i32 %10, i32* %1, align 4
  br label %4, !llvm.loop !10

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %14, %11
  %13 = call i32 @read_1_byte()
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %12, label %17, !llvm.loop !11

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal void @copy_variable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @read_2_bytes()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  call void @write_2_bytes(i32 noundef %3)
  %4 = load i32, i32* %1, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = sub i32 %10, 2
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %15, %9
  %13 = load i32, i32* %1, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = call i32 @read_1_byte()
  call void @write_1_byte(i32 noundef %16)
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %1, align 4
  br label %12, !llvm.loop !12

19:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_variable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @read_2_bytes()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = sub i32 %9, 2
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %14, %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i32 @read_1_byte()
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %1, align 4
  br label %11, !llvm.loop !13

18:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_1_byte() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_2_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %20, %21
  ret i32 %22
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

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
