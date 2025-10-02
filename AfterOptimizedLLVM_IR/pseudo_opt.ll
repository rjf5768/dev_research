; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/pseudo.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [50 x i8] c"eERROR[18]: Null hexidecimal/character constant.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eERROR[20]: Illegal hexidecimal.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"eERROR[21]: Illegal hexidecimal/character constant. Missing close quote.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"eERROR[22]: Hexidecimal number is not divisible into whole bytes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"t%dB%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"t%dB\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"eERROR[13]: Expected a <space> after the operand, found %c.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"eERROR[19]: Expected hexidecimal or character constant.\0A\00", align 1
@SEEN_END_OP = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"eERROR[27]: Section %s has no 'end'.\0A\00", align 1
@MODULE_NAME = external dso_local global [9 x i8], align 1
@MOD_REC_BUF = external dso_local global %struct.BUFFER_TYPE, align 8
@LOCATION_EXCEEDS_MEM_SIZE = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"eERROR[26]: CSECT requires a label.\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"eERROR[55]: Multiply defined module name.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"s%s\0A\00", align 1
@ERROR_REC_BUF = external dso_local global %struct.BUFFER_TYPE, align 8
@MAIN_ROUTINE = external dso_local global [9 x i8], align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"eERROR[28]: Label %s not defined.\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"eERROR[28]: Expected label, found constant %s.\0A\00", align 1
@START_ADDRESS = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [55 x i8] c"eERROR[54]: Multiple starting addresses. Using first.\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"eERROR[31]: Expected a Symbol, found %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"eERROR[23]: EQU requires a label.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"eERROR[40]: EXTDEF requires arguments.\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"eERROR[39]: Invalid list of symbols. Expected symbol found %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"eERROR[37]: EXTREF requires arguments.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"eERROR[38]: %s is already defined.\0A\00", align 1
@SEEN_START_OP = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [43 x i8] c"eERROR[32]: Multiple STARTs in this file.\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"eERROR[33]: START requires a label.\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"eERROR[34]: Negative starting address.\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"t%dW\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_BYTE(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 88
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 39, i8* %27, align 1
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi i1 [ false, %5 ], [ true, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  br i1 %29, label %39, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 67
  br i1 %35, label %36, label %191

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 39, i8* %38, align 1
  br i1 true, label %39, label %191

39:                                               ; preds = %36, %28
  store i32 0, i32* %14, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 39
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %190

49:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 39
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i1 [ false, %50 ], [ %60, %56 ]
  br i1 %62, label %63, label %87

63:                                               ; preds = %61
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 noundef %72, i32 noundef 16)
  %74 = icmp eq i32 %73, -1
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i1 [ true, %66 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %63
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %50, !llvm.loop !4

87:                                               ; preds = %61
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 39
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %104

101:                                              ; preds = %93
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = sdiv i32 %108, 2
  %110 = mul nsw i32 %109, 2
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %107, %104
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %171, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sdiv i32 %124, 2
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef %123, i32 noundef %125, %struct._IO_FILE* noundef %126)
  br label %131

127:                                              ; preds = %119
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef %128, i32 noundef %129, %struct._IO_FILE* noundef %130)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 -1
  %137 = load i8, i8* %136, align 1
  store i8 %137, i8* %16, align 1
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  store i8 0, i8* %139, align 1
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %141, i8* noundef %143)
  %145 = load i8, i8* %16, align 1
  %146 = load i8*, i8** %7, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 -1
  store i8 %145, i8* %147, align 1
  br label %170

148:                                              ; preds = %131
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef %150)
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8* %153, i8** %17, align 8
  br label %154

154:                                              ; preds = %164, %148
  %155 = load i8*, i8** %17, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 -2
  %158 = icmp ule i8* %155, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i8*, i8** %17, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %162, i32 noundef 16, i32 noundef 2, %struct._IO_FILE* noundef %163)
  br label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %17, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %17, align 8
  br label %154, !llvm.loop !6

167:                                              ; preds = %154
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %168, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %134
  br label %171

171:                                              ; preds = %170, %116
  %172 = load i8*, i8** %7, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %171
  %178 = load i8*, i8** %7, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %187)
  br label %189

189:                                              ; preds = %183, %177, %171
  br label %190

190:                                              ; preds = %189, %46
  br label %194

191:                                              ; preds = %36, %31
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %190
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @eoln(...) #1

declare dso_local i32 @CHAR_TO_DIGIT(...) #1

declare dso_local void @CHANGE_LOCATION(...) #1

declare dso_local void @PRT_NUM(...) #1

declare dso_local i32 @IS_BLANK_OR_TAB(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_CSECT(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  %12 = load i32, i32* @SEEN_END_OP, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @MOD_REC_BUF, %struct._IO_FILE* noundef %17, i32 noundef 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %20 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %21 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %20)
  store %struct.SYMBOL_TABLE_ENTRY* %21, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %25 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %14, %5
  store i32 0, i32* @SEEN_END_OP, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef %37, %struct.SYMBOL_TABLE_ENTRY** noundef %38)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %43 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef %40, i8* noundef %41, %struct.SYMBOL_TABLE_ENTRY** noundef %42)
  %44 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %48) #5
  br label %66

50:                                               ; preds = %39
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %53 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %51, %struct.SYMBOL_TABLE_ENTRY** noundef %52)
  store %struct.SYMBOL_TABLE_ENTRY* %53, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %54 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %55 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %54, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %57 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %56, i32 0, i32 1
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %57, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strcpy(i8* noundef %58, i8* noundef %59) #5
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %61) #5
  %63 = load i32*, i32** %8, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0))
  br label %66

66:                                               ; preds = %50, %45
  ret void
}

declare dso_local void @OUTPUT_BUFFER(...) #1

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local void @GET_NEXT_MISSING_LABEL(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_END(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %12 = alloca [9 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 1, i32* @SEEN_END_OP, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %13, align 8
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %21 = load i8*, i8** %7, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef %20, i8* noundef %21, i8** noundef %13, i32 noundef 0)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %22, i32 noundef 1)
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %24 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %18
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %28 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %29 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef %27, %struct.SYMBOL_TABLE_ENTRY** noundef %28)
  store %struct.SYMBOL_TABLE_ENTRY* %29, %struct.SYMBOL_TABLE_ENTRY** %14, align 8
  %30 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %14, align 8
  %31 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* noundef %34)
  br label %60

36:                                               ; preds = %26
  %37 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %14, align 8
  %38 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* noundef %43)
  br label %59

45:                                               ; preds = %36
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @MOD_REC_BUF, %struct._IO_FILE* noundef %46, i32 noundef 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %49 = load i32, i32* @START_ADDRESS, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %14, align 8
  %53 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* @START_ADDRESS, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %80)
  br label %82

82:                                               ; preds = %76, %72, %66, %60
  br label %87

83:                                               ; preds = %18
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* noundef %85)
  br label %87

87:                                               ; preds = %83, %82
  br label %92

88:                                               ; preds = %5
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @MOD_REC_BUF, %struct._IO_FILE* noundef %89, i32 noundef 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %87
  %93 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %94 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %93)
  store %struct.SYMBOL_TABLE_ENTRY* %94, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %98 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %102 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #5
  %104 = load i32*, i32** %8, align 8
  store i32 0, i32* %104, align 4
  ret void
}

declare dso_local void @GET_LABEL(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EQU(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  br label %56

20:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %24 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %22, %struct.SYMBOL_TABLE_ENTRY** noundef %23)
  store %struct.SYMBOL_TABLE_ENTRY* %24, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %28 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef %11, i32 noundef 21, i32 noundef %26, %struct.SYMBOL_TABLE_ENTRY** noundef %27, i32* noundef %13)
  %29 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %30 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %31, i32 noundef 1)
  %32 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %33 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %32, i32 0, i32 4
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %20
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %53)
  br label %55

55:                                               ; preds = %49, %45, %39, %20
  br label %56

56:                                               ; preds = %55, %17
  ret void
}

declare dso_local i32 @GET_EXPRESSION(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EXTDEF(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [9 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [9 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %90

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %11, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 41)
  br label %23

23:                                               ; preds = %53, %21
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %7, align 8
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %26 = load i8*, i8** %11, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef %25, i8* noundef %26, i8** noundef %11, i32 noundef 0)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %27, i32 noundef 1)
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  br label %41

32:                                               ; preds = %23
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* noundef %33)
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %37 = call i64 @strlen(i8* noundef %36) #4
  %38 = call i8* @strncpy(i8* noundef %34, i8* noundef %35, i64 noundef %37) #5
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef %39, %struct._IO_FILE* noundef %40)
  br label %41

41:                                               ; preds = %32, %31
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 44
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %23, label %55, !llvm.loop !7

55:                                               ; preds = %53
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %56)
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %80)
  br label %82

82:                                               ; preds = %75, %71, %68, %62, %55
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i8* noundef %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %18
  ret void
}

declare dso_local void @INITIALIZE_RECORD(...) #1

declare dso_local void @BLANK_STR(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @ADD_TO_RECORD(...) #1

declare dso_local void @PRT_RECORD(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_EXTREF(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [9 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [9 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  br label %106

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %11, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef 73)
  br label %23

23:                                               ; preds = %60, %21
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %7, align 8
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %26 = load i8*, i8** %11, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* noundef %25, i8* noundef %26, i8** noundef %11, i32 noundef 0)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %27, i32 noundef 1)
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  br label %48

32:                                               ; preds = %23
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %34 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %35 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %33, i32 noundef 0, i32 noundef 2, %struct.SYMBOL_TABLE_ENTRY** noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 2, i32* %13, align 4
  br label %47

38:                                               ; preds = %32
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* noundef %39)
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %43 = call i64 @strlen(i8* noundef %42) #4
  %44 = call i8* @strncpy(i8* noundef %40, i8* noundef %41, i64 noundef %43) #5
  %45 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* noundef %45, %struct._IO_FILE* noundef %46)
  br label %47

47:                                               ; preds = %38, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 44
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i1 [ false, %51 ], [ %59, %54 ]
  br i1 %61, label %23, label %62, !llvm.loop !8

62:                                               ; preds = %60
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* noundef %63)
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %87)
  br label %89

89:                                               ; preds = %82, %78, %75, %69, %62
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0), i8* noundef %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 -1
  store i8 0, i8* %101, align 1
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* noundef %103)
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %18
  ret void
}

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_RESB(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 1, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %18 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef %11, i32 noundef 21, i32 noundef %16, %struct.SYMBOL_TABLE_ENTRY** noundef %17, i32* noundef %12)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef %14, i32 noundef %18, %struct._IO_FILE* noundef %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %20, i32 noundef 1)
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %5
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %40)
  br label %42

42:                                               ; preds = %36, %32, %26, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_RESW(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 1, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %18 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef %11, i32 noundef 20, i32 noundef %16, %struct.SYMBOL_TABLE_ENTRY** noundef %17, i32* noundef %12)
  %19 = mul nsw i32 %18, 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef %14, i32 noundef %19, %struct._IO_FILE* noundef %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %21, i32 noundef 1)
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %5
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %41)
  br label %43

43:                                               ; preds = %37, %33, %27, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_START(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  %14 = load i32, i32* @SEEN_END_OP, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @MOD_REC_BUF, %struct._IO_FILE* noundef %19, i32 noundef 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %22 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %23 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), %struct.SYMBOL_TABLE_ENTRY** noundef %22)
  store %struct.SYMBOL_TABLE_ENTRY* %23, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %27 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %31 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %16, %5
  %33 = load i32, i32* @SEEN_START_OP, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  store i32 1, i32* @SEEN_START_OP, align 4
  store i32 0, i32* @SEEN_END_OP, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef %45, %struct.SYMBOL_TABLE_ENTRY** noundef %46)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %51 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef %48, i8* noundef %49, %struct.SYMBOL_TABLE_ENTRY** noundef %50)
  %52 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %56) #5
  br label %112

58:                                               ; preds = %47
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %61 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %59, %struct.SYMBOL_TABLE_ENTRY** noundef %60)
  store %struct.SYMBOL_TABLE_ENTRY* %61, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %13, align 8
  %63 = call i32 (i8**, i32, i32, ...) bitcast (i32 (...)* @GET_NUM to i32 (i8**, i32, i32, ...)*)(i8** noundef %13, i32 noundef 21, i32 noundef 10)
  store i32 %63, i32* %12, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %64, i32 noundef 1)
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0))
  br label %74

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %73 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i8*, i8** %13, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %13, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %94)
  br label %96

96:                                               ; preds = %90, %86, %80, %74
  %97 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %98 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %97, i32 0, i32 1
  %99 = getelementptr inbounds [9 x i8], [9 x i8]* %98, i64 0, i64 0
  %100 = load i8*, i8** %6, align 8
  %101 = call i8* @strcpy(i8* noundef %99, i8* noundef %100) #5
  %102 = load i8*, i8** %6, align 8
  %103 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0), i8* noundef %102) #5
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @strcpy(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef %104) #5
  %106 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %11, align 8
  %107 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i64 0, i64 0))
  br label %112

112:                                              ; preds = %96, %53
  ret void
}

declare dso_local i32 @GET_NUM(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PSEUDO_WORD(i8* noundef %0, i8* noundef %1, i32* noundef %2, %struct.SYMBOL_TABLE_ENTRY** noundef %3, %struct._IO_FILE* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %3, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  store i32 1, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %9, align 8
  %18 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** noundef %12, i32 noundef 24, i32 noundef %16, %struct.SYMBOL_TABLE_ENTRY** noundef %17, i32* noundef %13)
  store i32 %18, i32* %11, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* noundef @ERROR_REC_BUF, %struct._IO_FILE* noundef %19, i32 noundef 1)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 noundef %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 noundef %24, i32 noundef 16, i32 noundef 6, %struct._IO_FILE* noundef %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* noundef %28, i32 noundef 3, %struct._IO_FILE* noundef %29)
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %5
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %49)
  br label %51

51:                                               ; preds = %45, %41, %35, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DO_PSEUDO(i32 noundef %0, i8* noundef %1, i8* noundef %2, i32* noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4, %struct._IO_FILE* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %4, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %12, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %74 [
    i32 1, label %14
    i32 2, label %20
    i32 3, label %26
    i32 4, label %32
    i32 5, label %38
    i32 6, label %44
    i32 7, label %50
    i32 8, label %56
    i32 9, label %62
    i32 10, label %68
  ]

14:                                               ; preds = %6
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_BYTE(i8* noundef %15, i8* noundef %16, i32* noundef %17, %struct.SYMBOL_TABLE_ENTRY** noundef %18, %struct._IO_FILE* noundef %19)
  br label %75

20:                                               ; preds = %6
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_CSECT(i8* noundef %21, i8* noundef %22, i32* noundef %23, %struct.SYMBOL_TABLE_ENTRY** noundef %24, %struct._IO_FILE* noundef %25)
  br label %75

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_END(i8* noundef %27, i8* noundef %28, i32* noundef %29, %struct.SYMBOL_TABLE_ENTRY** noundef %30, %struct._IO_FILE* noundef %31)
  br label %75

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_EQU(i8* noundef %33, i8* noundef %34, i32* noundef %35, %struct.SYMBOL_TABLE_ENTRY** noundef %36, %struct._IO_FILE* noundef %37)
  br label %75

38:                                               ; preds = %6
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_EXTDEF(i8* noundef %39, i8* noundef %40, i32* noundef %41, %struct.SYMBOL_TABLE_ENTRY** noundef %42, %struct._IO_FILE* noundef %43)
  br label %75

44:                                               ; preds = %6
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_EXTREF(i8* noundef %45, i8* noundef %46, i32* noundef %47, %struct.SYMBOL_TABLE_ENTRY** noundef %48, %struct._IO_FILE* noundef %49)
  br label %75

50:                                               ; preds = %6
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_RESB(i8* noundef %51, i8* noundef %52, i32* noundef %53, %struct.SYMBOL_TABLE_ENTRY** noundef %54, %struct._IO_FILE* noundef %55)
  br label %75

56:                                               ; preds = %6
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_RESW(i8* noundef %57, i8* noundef %58, i32* noundef %59, %struct.SYMBOL_TABLE_ENTRY** noundef %60, %struct._IO_FILE* noundef %61)
  br label %75

62:                                               ; preds = %6
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_START(i8* noundef %63, i8* noundef %64, i32* noundef %65, %struct.SYMBOL_TABLE_ENTRY** noundef %66, %struct._IO_FILE* noundef %67)
  br label %75

68:                                               ; preds = %6
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @PSEUDO_WORD(i8* noundef %69, i8* noundef %70, i32* noundef %71, %struct.SYMBOL_TABLE_ENTRY** noundef %72, %struct._IO_FILE* noundef %73)
  br label %75

74:                                               ; preds = %6
  br label %75

75:                                               ; preds = %74, %68, %62, %56, %50, %44, %38, %32, %26, %20, %14
  ret void
}

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!141, !5}
