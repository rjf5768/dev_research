; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass1.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: Multiply defined global %s. Program not loaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal header record = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"WARNING: Found multiple start addresses.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" Expected only one. Using the first.\00", align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ERROR: Illegal end record = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR: Illegal RECORD = %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PASS1(%struct.SYMBOL_TABLE_ENTRY** noundef %0, i32* noundef %1, i32* noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca [9 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [9 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %0, %struct.SYMBOL_TABLE_ENTRY*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %221, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %22 = call i32 @feof(%struct._IO_FILE* noundef %21) #4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 1048576
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %225

30:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef %10, %struct._IO_FILE* noundef %31)
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %211 [
    i32 72, label %36
    i32 68, label %103
    i32 69, label %179
    i32 77, label %210
    i32 82, label %210
    i32 84, label %210
    i32 0, label %210
  ]

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strlen(i8* noundef %37) #5
  %39 = icmp ne i64 %38, 21
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %96

41:                                               ; preds = %36
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i8* @strncpy(i8* noundef %42, i8* noundef %44, i64 noundef 8) #4
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %5, align 8
  %50 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %46, i32 noundef %48, i32 noundef 3, %struct.SYMBOL_TABLE_ENTRY** noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %41
  store i32 7, i32* %14, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br label %63

63:                                               ; preds = %56, %53
  %64 = phi i1 [ true, %53 ], [ %62, %56 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %14, align 4
  br label %53, !llvm.loop !4

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* noundef %74)
  %76 = load i32*, i32** %7, align 8
  store i32 1, i32* %76, align 4
  br label %95

77:                                               ; preds = %41
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %79, i32 noundef 6, i32 noundef 16, i32* noundef %13, i32* noundef %12)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %11, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %85, i32 noundef 6, i32 noundef 16, i32* noundef %13, i32* noundef %12)
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %13, align 4
  %91 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %92 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %5, align 8
  %93 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %91, %struct.SYMBOL_TABLE_ENTRY** noundef %92)
  %94 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 8
  br label %95

95:                                               ; preds = %77, %69
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* noundef %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %214

103:                                              ; preds = %30
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @strlen(i8* noundef %104) #5
  %106 = icmp ugt i64 %105, 71
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %172

108:                                              ; preds = %103
  store i32 1, i32* %15, align 4
  %109 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 8
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %161, %108
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 14
  %113 = sext i32 %112 to i64
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @strlen(i8* noundef %114) #5
  %116 = icmp ule i64 %113, %115
  br i1 %116, label %117, label %164

117:                                              ; preds = %110
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 0
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = call i8* @strncpy(i8* noundef %118, i8* noundef %122, i64 noundef 8) #4
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %128, i32 noundef 6, i32 noundef 16, i32* noundef %17, i32* noundef %12)
  %129 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 0
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %5, align 8
  %134 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %129, i32 noundef %132, i32 noundef 4, %struct.SYMBOL_TABLE_ENTRY** noundef %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %161, label %136

136:                                              ; preds = %117
  store i32 7, i32* %18, align 4
  br label %137

137:                                              ; preds = %150, %136
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br label %147

147:                                              ; preds = %140, %137
  %148 = phi i1 [ true, %137 ], [ %146, %140 ]
  br i1 %148, label %149, label %153

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %18, align 4
  br label %137, !llvm.loop !6

153:                                              ; preds = %147
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 %156
  store i8 0, i8* %157, align 1
  %158 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 0
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* noundef %158)
  %160 = load i32*, i32** %7, align 8
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %153, %117
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 14
  store i32 %163, i32* %15, align 4
  br label %110, !llvm.loop !7

164:                                              ; preds = %110
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = load i8*, i8** %10, align 8
  %168 = call i64 @strlen(i8* noundef %167) #5
  %169 = icmp ne i64 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %170, %164
  br label %172

172:                                              ; preds = %171, %107
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef %176)
  br label %178

178:                                              ; preds = %175, %172
  br label %214

179:                                              ; preds = %30
  %180 = load i8*, i8** %10, align 8
  %181 = call i64 @strlen(i8* noundef %180) #5
  %182 = icmp ne i64 %181, 1
  br i1 %182, label %183, label %203

183:                                              ; preds = %179
  %184 = load i8*, i8** %10, align 8
  %185 = call i64 @strlen(i8* noundef %184) #5
  %186 = icmp ne i64 %185, 7
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 1, i32* %12, align 4
  br label %202

188:                                              ; preds = %183
  %189 = load i32, i32* @START_ADDRESS, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %201

193:                                              ; preds = %188
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef %195, i32 noundef 6, i32 noundef 16, i32* noundef @START_ADDRESS, i32* noundef %12)
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @START_ADDRESS, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* @START_ADDRESS, align 4
  %199 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %200 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef %199) #4
  br label %201

201:                                              ; preds = %193, %191
  br label %202

202:                                              ; preds = %201, %187
  br label %203

203:                                              ; preds = %202, %179
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %10, align 8
  %208 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* noundef %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %214

210:                                              ; preds = %30, %30, %30, %30
  br label %214

211:                                              ; preds = %30
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* noundef %212)
  store i32 1, i32* %12, align 4
  br label %214

214:                                              ; preds = %211, %210, %209, %178, %102
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %218, %214
  %222 = phi i1 [ true, %214 ], [ %220, %218 ]
  %223 = zext i1 %222 to i32
  %224 = load i32*, i32** %7, align 8
  store i32 %223, i32* %224, align 4
  br label %20, !llvm.loop !8

225:                                              ; preds = %28
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

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
