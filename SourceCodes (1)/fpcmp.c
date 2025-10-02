; ModuleID = '/project/test/llvm-test-suite/tools/fpcmp.c'
source_filename = "/project/test/llvm-test-suite/tools/fpcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: error: unable to open '%s'\0A\00", align 1
@g_program = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: error: unable to seek '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: error: unable to allocate buffer for '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: error: unable to read data for '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"%s: Comparison failed, textual difference between '%c' and '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%s: Comparison failed, unexpected end of one of the files\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"usage: %s [-a VALUE] [-r VALUE] [-i] <path-A> <path-B>\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [248 x i8] c"Search two text files for differences.\0AIf either -a or -r is specified (even if zero), floating numbers are parsed and considered equal if neither the absolute nor relative tolerance is exceeded.\0AThe -i switch also ignores whitespace differences.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"error: invalid argument '%s'\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"error: missing argument to '%s'\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"error: invalid argument to '%s': '%s'\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"error: invalid number of arguments\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"%s: FP Comparison failed, not a numeric difference between '%c' and '%c'\0A\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"%s: Compared: %e and %e\0Aabs. diff = %e rel.diff = %e\0AOut of tolerance: rel/abs: %e/%e\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Input 1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Input 2\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\0A%s: Contains binary data.\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"\0A%s:\0A%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @load_file(i8* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** %6, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @g_program, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %15, i8* noundef %16)
  call void @exit(i32 noundef 2) #8
  unreachable

18:                                               ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %20 = call i32 @fseek(%struct._IO_FILE* noundef %19, i64 noundef 0, i32 noundef 2)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8*, i8** @g_program, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* noundef %24, i8* noundef %25)
  call void @exit(i32 noundef 2) #8
  unreachable

27:                                               ; preds = %18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %29 = call i64 @ftell(%struct._IO_FILE* noundef %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = call i32 @fseek(%struct._IO_FILE* noundef %30, i64 noundef 0, i32 noundef 0)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** @g_program, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* noundef %35, i8* noundef %36)
  call void @exit(i32 noundef 2) #8
  unreachable

38:                                               ; preds = %27
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64*, i64** %5, align 8
  store i64 0, i64* %42, align 8
  store i8* null, i8** %3, align 8
  br label %74

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  %46 = call noalias i8* @malloc(i64 noundef %45) #9
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @g_program, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef %51, i8* noundef %52)
  call void @exit(i32 noundef 2) #8
  unreachable

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %61 = call i64 @fread(i8* noundef %58, i64 noundef %59, i64 noundef 1, %struct._IO_FILE* noundef %60)
  %62 = icmp ne i64 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i8*, i8** @g_program, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef %65, i8* noundef %66)
  call void @exit(i32 noundef 2) #8
  unreachable

68:                                               ; preds = %54
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %70 = call i32 @fclose(%struct._IO_FILE* noundef %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64*, i64** %5, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i8*, i8** %8, align 8
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %68, %41
  %75 = load i8*, i8** %3, align 8
  ret i8* %75
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @diff_file(i8* noundef %0, i8* noundef %1, i1 noundef zeroext %2, double noundef %3, double noundef %4, i1 noundef zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  %30 = zext i1 %2 to i8
  store i8 %30, i8* %10, align 1
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  %31 = zext i1 %5 to i8
  store i8 %31, i8* %13, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @load_file(i8* noundef %32, i64* noundef %14)
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @load_file(i8* noundef %34, i64* noundef %15)
  store i8* %35, i8** %17, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %6
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @memcmp(i8* noundef %40, i8* noundef %41, i64 noundef %42) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %46) #9
  %47 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %47) #9
  store i32 0, i32* %7, align 4
  br label %233

48:                                               ; preds = %39, %6
  %49 = load i8*, i8** %16, align 8
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %17, align 8
  store i8* %50, i8** %19, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %20, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %21, align 8
  %57 = load i8*, i8** %18, align 8
  store i8* %57, i8** %22, align 8
  %58 = load i8*, i8** %19, align 8
  store i8* %58, i8** %23, align 8
  br label %59

59:                                               ; preds = %48, %91, %110, %140, %167, %183
  %60 = load i8*, i8** %22, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = icmp uge i8* %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %23, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = icmp uge i8* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63, %59
  %68 = load i8, i8* %13, align 1
  %69 = trunc i8 %68 to i1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %20, align 8
  %72 = call zeroext i1 @skip_whitespace(i8** noundef %22, i8* noundef %71)
  %73 = load i8*, i8** %21, align 8
  %74 = call zeroext i1 @skip_whitespace(i8** noundef %23, i8* noundef %73)
  br label %75

75:                                               ; preds = %70, %67
  br label %186

76:                                               ; preds = %63
  %77 = load i8*, i8** %22, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %23, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load i8, i8* %10, align 1
  %86 = trunc i8 %85 to i1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i8*, i8** %22, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call zeroext i1 @isPossibleStartOfNumber(i8 noundef signext %89)
  br i1 %90, label %96, label %91

91:                                               ; preds = %87, %84
  %92 = load i8*, i8** %22, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %22, align 8
  %94 = load i8*, i8** %23, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %23, align 8
  br label %59

96:                                               ; preds = %87, %76
  %97 = load i8*, i8** %22, align 8
  store i8* %97, i8** %24, align 8
  %98 = load i8*, i8** %23, align 8
  store i8* %98, i8** %25, align 8
  %99 = load i8, i8* %13, align 1
  %100 = trunc i8 %99 to i1
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i8*, i8** %20, align 8
  %103 = call zeroext i1 @skip_whitespace(i8** noundef %22, i8* noundef %102)
  %104 = zext i1 %103 to i32
  %105 = load i8*, i8** %21, align 8
  %106 = call zeroext i1 @skip_whitespace(i8** noundef %23, i8* noundef %105)
  %107 = zext i1 %106 to i32
  %108 = or i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %59

111:                                              ; preds = %101
  br label %121

112:                                              ; preds = %96
  %113 = load i8, i8* %10, align 1
  %114 = trunc i8 %113 to i1
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8*, i8** %20, align 8
  %117 = call zeroext i1 @skip_whitespace(i8** noundef %24, i8* noundef %116)
  %118 = load i8*, i8** %21, align 8
  %119 = call zeroext i1 @skip_whitespace(i8** noundef %25, i8* noundef %118)
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i8, i8* %10, align 1
  %123 = trunc i8 %122 to i1
  br i1 %123, label %146, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %22, align 8
  %126 = load i8*, i8** %20, align 8
  %127 = icmp ult i8* %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i8*, i8** %23, align 8
  %130 = load i8*, i8** %21, align 8
  %131 = icmp ult i8* %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i8*, i8** %22, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8*, i8** %23, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i8*, i8** %22, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %22, align 8
  %143 = load i8*, i8** %23, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %23, align 8
  br label %59

145:                                              ; preds = %132, %128, %124
  br label %186

146:                                              ; preds = %121
  %147 = load i8*, i8** %24, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = call i8* @AdvanceNumber(i8* noundef %147, i8* noundef %148)
  store i8* %149, i8** %26, align 8
  %150 = load i8*, i8** %25, align 8
  %151 = load i8*, i8** %21, align 8
  %152 = call i8* @AdvanceNumber(i8* noundef %150, i8* noundef %151)
  store i8* %152, i8** %27, align 8
  %153 = load i8*, i8** %26, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i8*, i8** %27, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %172, label %158

158:                                              ; preds = %155, %146
  %159 = load i8*, i8** %22, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8*, i8** %23, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %186

167:                                              ; preds = %158
  %168 = load i8*, i8** %22, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %22, align 8
  %170 = load i8*, i8** %23, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %23, align 8
  br label %59

172:                                              ; preds = %155
  %173 = load i8*, i8** %24, align 8
  %174 = load i8*, i8** %25, align 8
  %175 = load i8*, i8** %26, align 8
  %176 = load i8*, i8** %27, align 8
  %177 = load double, double* %11, align 8
  %178 = load double, double* %12, align 8
  %179 = call zeroext i1 @CompareNumbers(i8* noundef %173, i8* noundef %174, i8* noundef %175, i8* noundef %176, double noundef %177, double noundef %178)
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %181) #9
  %182 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %182) #9
  store i32 1, i32* %7, align 4
  br label %233

183:                                              ; preds = %172
  %184 = load i8*, i8** %26, align 8
  store i8* %184, i8** %22, align 8
  %185 = load i8*, i8** %27, align 8
  store i8* %185, i8** %23, align 8
  br label %59

186:                                              ; preds = %166, %145, %75
  %187 = load i8*, i8** %22, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = icmp uge i8* %187, %188
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %28, align 1
  %191 = load i8*, i8** %23, align 8
  %192 = load i8*, i8** %21, align 8
  %193 = icmp uge i8* %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1
  %195 = load i8, i8* %28, align 1
  %196 = trunc i8 %195 to i1
  br i1 %196, label %216, label %197

197:                                              ; preds = %186
  %198 = load i8, i8* %29, align 1
  %199 = trunc i8 %198 to i1
  br i1 %199, label %216, label %200

200:                                              ; preds = %197
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %202 = load i8*, i8** @g_program, align 8
  %203 = load i8*, i8** %22, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = load i8*, i8** %23, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %201, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* noundef %202, i32 noundef %206, i32 noundef %210)
  %212 = load i8*, i8** %16, align 8
  %213 = load i8*, i8** %17, align 8
  call void @dump_inputs(i8* noundef %212, i8* noundef %213)
  %214 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %214) #9
  %215 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %215) #9
  store i32 1, i32* %7, align 4
  br label %233

216:                                              ; preds = %197, %186
  %217 = load i8, i8* %28, align 1
  %218 = trunc i8 %217 to i1
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i8, i8* %29, align 1
  %221 = trunc i8 %220 to i1
  br i1 %221, label %230, label %222

222:                                              ; preds = %219, %216
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %224 = load i8*, i8** @g_program, align 8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %223, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* noundef %224)
  %226 = load i8*, i8** %16, align 8
  %227 = load i8*, i8** %17, align 8
  call void @dump_inputs(i8* noundef %226, i8* noundef %227)
  %228 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %228) #9
  %229 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %229) #9
  store i32 1, i32* %7, align 4
  br label %233

230:                                              ; preds = %219
  %231 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %231) #9
  %232 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %232) #9
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %230, %222, %200, %180, %45
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @skip_whitespace(i8** noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %5, align 1
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = call i16** @__ctype_b_loc() #11
  %13 = load i16*, i16** %12, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %13, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 8192
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %11, %6
  %25 = phi i1 [ false, %6 ], [ %23, %11 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  store i8 1, i8* %5, align 1
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  br label %6, !llvm.loop !4

30:                                               ; preds = %24
  %31 = load i8, i8* %5, align 1
  %32 = trunc i8 %31 to i1
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @isPossibleStartOfNumber(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = call zeroext i1 @isDigitChar(i8 noundef signext %3)
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i8, i8* %2, align 1
  %7 = call zeroext i1 @isSignedChar(i8 noundef signext %6)
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 46
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i1 [ true, %5 ], [ true, %1 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @AdvanceNumber(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call zeroext i1 @isSignedChar(i8 noundef signext %14)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %16, %12, %2
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call zeroext i1 @isDigitChar(i8 noundef signext %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %7, align 8
  br label %20, !llvm.loop !6

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %57, %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call zeroext i1 @isDigitChar(i8 noundef signext %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %7, align 8
  br label %47, !llvm.loop !7

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %38, %34
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  store i8* %66, i8** %3, align 8
  br label %106

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call zeroext i1 @isExponentChar(i8 noundef signext %73)
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call zeroext i1 @isSignedChar(i8 noundef signext %83)
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %85, %81, %75
  br label %89

89:                                               ; preds = %99, %88
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call zeroext i1 @isDigitChar(i8 noundef signext %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ false, %89 ], [ %96, %93 ]
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  store i8* %102, i8** %7, align 8
  br label %89, !llvm.loop !8

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %71, %67
  %105 = load i8*, i8** %7, align 8
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %104, %65
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @CompareNumbers(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = alloca i1, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca double, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %16, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @memcmp(i8* noundef %37, i8* noundef %38, i64 noundef %39) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i1 false, i1* %7, align 1
  br label %202

43:                                               ; preds = %36, %6
  %44 = load i8*, i8** %8, align 8
  %45 = call double @strtod(i8* noundef %44, i8** noundef %14) #9
  store double %45, double* %18, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call double @strtod(i8* noundef %46, i8** noundef %15) #9
  store double %47, double* %19, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 68
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %57, label %86

57:                                               ; preds = %52, %43
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, 1
  %60 = call noalias i8* @malloc(i64 noundef %59) #9
  store i8* %60, i8** %20, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %16, align 8
  %64 = add nsw i64 %63, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %61, i8* align 1 %62, i64 %64, i1 false)
  %65 = load i8*, i8** %20, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %65, i64 %72
  store i8 101, i8* %73, align 1
  %74 = load i8*, i8** %20, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = call double @strtod(i8* noundef %75, i8** noundef %14) #9
  store double %76, double* %18, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = ptrtoint i8* %78 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %77, i64 %83
  store i8* %84, i8** %14, align 8
  %85 = load i8*, i8** %20, align 8
  call void @free(i8* noundef %85) #9
  br label %86

86:                                               ; preds = %57, %52
  %87 = load i8*, i8** %15, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 68
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 100
  br i1 %95, label %96, label %125

96:                                               ; preds = %91, %86
  %97 = load i64, i64* %17, align 8
  %98 = add nsw i64 %97, 1
  %99 = call noalias i8* @malloc(i64 noundef %98) #9
  store i8* %99, i8** %21, align 8
  %100 = load i8*, i8** %21, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %17, align 8
  %103 = add nsw i64 %102, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %100, i8* align 1 %101, i64 %103, i1 false)
  %104 = load i8*, i8** %21, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %104, i64 %111
  store i8 101, i8* %112, align 1
  %113 = load i8*, i8** %21, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = call double @strtod(i8* noundef %114, i8** noundef %15) #9
  store double %115, double* %19, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = ptrtoint i8* %117 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = getelementptr inbounds i8, i8* %116, i64 %122
  store i8* %123, i8** %15, align 8
  %124 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %124) #9
  br label %125

125:                                              ; preds = %96, %91
  %126 = load i8*, i8** %14, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %15, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129, %125
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = load i8*, i8** @g_program, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i8* noundef %135, i32 noundef %139, i32 noundef %143)
  store i1 true, i1* %7, align 1
  br label %202

145:                                              ; preds = %129
  %146 = load double, double* %18, align 8
  %147 = load double, double* %19, align 8
  %148 = fcmp oeq double %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i1 false, i1* %7, align 1
  br label %202

150:                                              ; preds = %145
  %151 = load double, double* %12, align 8
  %152 = fcmp oeq double %151, 0.000000e+00
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load double, double* %12, align 8
  %155 = load double, double* %18, align 8
  %156 = load double, double* %19, align 8
  %157 = fsub double %155, %156
  %158 = call double @llvm.fabs.f64(double %157)
  %159 = fcmp olt double %154, %158
  br i1 %159, label %160, label %201

160:                                              ; preds = %153, %150
  %161 = load double, double* %19, align 8
  %162 = fcmp une double %161, 0.000000e+00
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load double, double* %18, align 8
  %165 = load double, double* %19, align 8
  %166 = fdiv double %164, %165
  %167 = fsub double %166, 1.000000e+00
  %168 = call double @llvm.fabs.f64(double %167)
  store double %168, double* %22, align 8
  br label %180

169:                                              ; preds = %160
  %170 = load double, double* %18, align 8
  %171 = fcmp une double %170, 0.000000e+00
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load double, double* %19, align 8
  %174 = load double, double* %18, align 8
  %175 = fdiv double %173, %174
  %176 = fsub double %175, 1.000000e+00
  %177 = call double @llvm.fabs.f64(double %176)
  store double %177, double* %22, align 8
  br label %179

178:                                              ; preds = %169
  store double 0.000000e+00, double* %22, align 8
  br label %179

179:                                              ; preds = %178, %172
  br label %180

180:                                              ; preds = %179, %163
  %181 = load double, double* %13, align 8
  %182 = fcmp oeq double %181, 0.000000e+00
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load double, double* %22, align 8
  %185 = load double, double* %13, align 8
  %186 = fcmp ogt double %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %183, %180
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = load i8*, i8** @g_program, align 8
  %190 = load double, double* %18, align 8
  %191 = load double, double* %19, align 8
  %192 = load double, double* %18, align 8
  %193 = load double, double* %19, align 8
  %194 = fsub double %192, %193
  %195 = call double @llvm.fabs.f64(double %194)
  %196 = load double, double* %22, align 8
  %197 = load double, double* %13, align 8
  %198 = load double, double* %12, align 8
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0), i8* noundef %189, double noundef %190, double noundef %191, double noundef %195, double noundef %196, double noundef %197, double noundef %198)
  store i1 true, i1* %7, align 1
  br label %202

200:                                              ; preds = %183
  br label %201

201:                                              ; preds = %200, %153
  store i1 false, i1* %7, align 1
  br label %202

202:                                              ; preds = %201, %187, %149, %133, %42
  %203 = load i1, i1* %7, align 1
  ret i1 %203
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_inputs(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  call void @dump_input(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %5)
  %6 = load i8*, i8** %4, align 8
  call void @dump_input(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @g_program, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([248 x i8], [248 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 2) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @g_program, align 8
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %97, %2
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %100

33:                                               ; preds = %21
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strlen(i8* noundef %34) #10
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef %39)
  call void @usage()
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %92 [
    i32 97, label %46
    i32 114, label %46
    i32 105, label %91
  ]

46:                                               ; preds = %41, %41
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef %53)
  call void @usage()
  br label %90

55:                                               ; preds = %46
  store i8* null, i8** %12, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call double @strtod(i8* noundef %61, i8** noundef %12) #9
  store double %62, double* %13, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65, %55
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef %72, i8* noundef %77)
  call void @usage()
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 97
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load double, double* %13, align 8
  store double %86, double* %7, align 8
  br label %89

87:                                               ; preds = %79
  %88 = load double, double* %13, align 8
  store double %88, double* %6, align 8
  br label %89

89:                                               ; preds = %87, %85
  store i8 1, i8* %8, align 1
  br label %90

90:                                               ; preds = %89, %51
  br label %96

91:                                               ; preds = %41
  store i8 1, i8* %9, align 1
  br label %96

92:                                               ; preds = %41
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef %94)
  call void @usage()
  br label %96

96:                                               ; preds = %92, %91, %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %17, !llvm.loop !9

100:                                              ; preds = %32, %17
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 2
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  call void @usage()
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %8, align 1
  %121 = trunc i8 %120 to i1
  %122 = load double, double* %7, align 8
  %123 = load double, double* %6, align 8
  %124 = load i8, i8* %9, align 1
  %125 = trunc i8 %124 to i1
  %126 = call i32 @diff_file(i8* noundef %113, i8* noundef %119, i1 noundef zeroext %121, double noundef %122, double noundef %123, i1 noundef zeroext %125)
  ret i32 %126
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @isDigitChar(i8 noundef signext %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %7 [
    i32 48, label %6
    i32 49, label %6
    i32 50, label %6
    i32 51, label %6
    i32 52, label %6
    i32 53, label %6
    i32 54, label %6
    i32 55, label %6
    i32 56, label %6
    i32 57, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %8

7:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i1, i1* %2, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @isSignedChar(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 45
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @isExponentChar(i8 noundef signext %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %7 [
    i32 68, label %6
    i32 100, label %6
    i32 101, label %6
    i32 69, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %8

7:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i1, i1* %2, align 1
  ret i1 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind uwtable
define internal void @dump_input(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call zeroext i1 @contains_non_printable_characters(i8* noundef %5)
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* noundef %9)
  br label %16

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %13, i8* noundef %14)
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @contains_non_printable_characters(i8* noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* noundef %6) #10
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = call i16** @__ctype_b_loc() #11
  %14 = load i16*, i16** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %14, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 16384
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %12
  %27 = call i16** @__ctype_b_loc() #11
  %28 = load i16*, i16** %27, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %28, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 8192
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i1 true, i1* %2, align 1
  br label %46

41:                                               ; preds = %26, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %8, !llvm.loop !10

45:                                               ; preds = %8
  store i1 false, i1* %2, align 1
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i1, i1* %2, align 1
  ret i1 %47
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

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
