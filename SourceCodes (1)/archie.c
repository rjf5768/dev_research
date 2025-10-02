; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/archie.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/archie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@rdgram_priority = dso_local global i32 0, align 4
@listflag = dso_local global i32 0, align 4
@sortflag = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"archie.rutgers.edu\00", align 1
@main.archies = internal global [7 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"archie.ans.net (USA [NY])\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"archie.rutgers.edu (USA [NJ])\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"archie.sura.net (USA [MD])\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"archie.mcgill.ca (Canada)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"archie.funet.fi (Finland/Mainland Europe)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"archie.au (Australia)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"archie.doc.ic.ac.uk (Great Britain/Ireland)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"archie\00", align 1
@progname = dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"ARCHIE_HOST\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Known archie servers:\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c" * %s is the default Archie server.\0A\00", align 1
@.str.13 = private unnamed_addr constant [98 x i8] c" * For the most up-to-date list, write to an Archie server and give it\0A   the command `servers'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [52 x i8] c"%s: -m option requires a value for max hits (>= 1)\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Client version %s based upon Prospero version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Beta.4.2D\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Usage: %s [-[cers][l][t][m#][h host][%s][%s#]%s string\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"       -c : case sensitive substring search\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"       -e : exact string match (default)\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"       -r : regular expression search\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"       -s : case insensitive substring search\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"       -l : list one match per line\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"       -t : sort inverted by date\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"      -m# : specifies maximum number of hits to return (default %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"  -h host : specifies server host\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"       -%s : list known servers and current default\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"      -%s# : specifies query niceness level (0-35765)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 61, i8* %7, align 1
  store i8 61, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 95, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** @progname, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %5, align 8
  %20 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i8* %20, i8** %15, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i8*, i8** %15, align 8
  store i8* %23, i8** %14, align 8
  br label %24

24:                                               ; preds = %22, %2
  br label %25

25:                                               ; preds = %222, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br i1 %35, label %36, label %227

36:                                               ; preds = %34
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  br label %228

59:                                               ; preds = %49, %44
  br label %60

60:                                               ; preds = %221, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %222

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %217 [
    i32 76, label %69
    i32 78, label %86
    i32 99, label %130
    i32 101, label %131
    i32 104, label %134
    i32 108, label %142
    i32 48, label %145
    i32 49, label %145
    i32 50, label %145
    i32 51, label %145
    i32 52, label %145
    i32 53, label %145
    i32 54, label %145
    i32 55, label %145
    i32 56, label %145
    i32 57, label %145
    i32 109, label %148
    i32 111, label %191
    i32 114, label %209
    i32 115, label %210
    i32 116, label %211
    i32 118, label %212
  ]

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %80, %69
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 7
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.archies, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %71, !llvm.loop !4

83:                                               ; preds = %71
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %221

86:                                               ; preds = %64
  store i32 32765, i32* @rdgram_priority, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call i8* @strchr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef %94) #5
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %98, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef @rdgram_priority) #6
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @strspn(i8* noundef %100, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #5
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %6, align 8
  br label %121

104:                                              ; preds = %91, %86
  %105 = load i32, i32* %4, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef @rdgram_priority) #6
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %5, align 8
  br label %119

119:                                              ; preds = %114, %107
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i32, i32* @rdgram_priority, align 4
  %123 = icmp sgt i32 %122, 32767
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 32765, i32* @rdgram_priority, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32, i32* @rdgram_priority, align 4
  %127 = icmp slt i32 %126, -32765
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 -32765, i32* @rdgram_priority, align 4
  br label %129

129:                                              ; preds = %128, %125
  br label %221

130:                                              ; preds = %64
  store i8 67, i8* %7, align 1
  store i8 99, i8* %8, align 1
  br label %221

131:                                              ; preds = %64
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %221

134:                                              ; preds = %64
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %14, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %4, align 4
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %5, align 8
  br label %221

142:                                              ; preds = %64
  %143 = load i32, i32* @listflag, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @listflag, align 4
  br label %221

145:                                              ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %147, i8** %6, align 8
  br label %148

148:                                              ; preds = %64, %145
  store i32 -1, i32* %10, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load i8*, i8** %6, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = call i8* @strchr(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 noundef %156) #5
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %160, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef %10) #6
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @strspn(i8* noundef %162, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #5
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %6, align 8
  br label %183

166:                                              ; preds = %153, %148
  %167 = load i32, i32* %4, align 4
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %172, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef %10) #6
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %4, align 4
  %179 = load i8**, i8*** %5, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %5, align 8
  br label %181

181:                                              ; preds = %176, %169
  br label %182

182:                                              ; preds = %181, %166
  br label %183

183:                                              ; preds = %182, %159
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %188 = load i8*, i8** @progname, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %187, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i8* noundef %188)
  call void @exit(i32 noundef 1) #7
  unreachable

190:                                              ; preds = %183
  br label %221

191:                                              ; preds = %64
  %192 = load i32, i32* %4, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %197, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef %11) #6
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 -1, i32* %4, align 4
  br label %207

202:                                              ; preds = %194
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %4, align 4
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %5, align 8
  br label %207

207:                                              ; preds = %202, %201
  br label %208

208:                                              ; preds = %207, %191
  br label %221

209:                                              ; preds = %64
  store i8 82, i8* %7, align 1
  store i8 114, i8* %8, align 1
  br label %221

210:                                              ; preds = %64
  store i8 83, i8* %7, align 1
  store i8 115, i8* %8, align 1
  br label %221

211:                                              ; preds = %64
  store i32 1, i32* @sortflag, align 4
  br label %221

212:                                              ; preds = %64
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %213, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %221

217:                                              ; preds = %64
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %219 = load i8*, i8** @progname, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %219, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

221:                                              ; preds = %212, %211, %210, %209, %208, %190, %142, %134, %131, %130, %129, %83
  br label %60, !llvm.loop !6

222:                                              ; preds = %60
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %4, align 4
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %226, i8*** %5, align 8
  br label %25, !llvm.loop !7

227:                                              ; preds = %34
  br label %228

228:                                              ; preds = %227, %54
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i8, i8* %8, align 1
  store i8 %232, i8* %7, align 1
  br label %233

233:                                              ; preds = %231, %228
  %234 = load i32, i32* %4, align 4
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call void @exit(i32 noundef 0) #7
  unreachable

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 1
  br i1 %242, label %243, label %268

243:                                              ; preds = %240
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %245 = load i8*, i8** @progname, align 8
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %244, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %245, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %247, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0))
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %249, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %251, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0))
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %254 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %253, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0))
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %255, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0))
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %257, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0))
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %260 = load i32, i32* %10, align 4
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %259, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 noundef %260)
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %262, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %264, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %266, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

268:                                              ; preds = %240
  %269 = load i8*, i8** %14, align 8
  %270 = load i8**, i8*** %5, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 0
  %272 = load i8*, i8** %271, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load i8, i8* %7, align 1
  %276 = load i32, i32* @sortflag, align 4
  %277 = load i32, i32* @listflag, align 4
  call void @procquery(i8* noundef %269, i8* noundef %272, i32 noundef %273, i32 noundef %274, i8 noundef signext %275, i32 noundef %276, i32 noundef %277)
  call void @exit(i32 noundef 0) #7
  unreachable
}

declare dso_local i8* @getenv(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strspn(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @procquery(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
