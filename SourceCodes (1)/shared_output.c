; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_output.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@logg_fd = dso_local global %struct._IO_FILE* null, align 8
@logg_verbose = dso_local global i16 0, align 2
@logg_lock = dso_local global i16 1, align 2
@logg_time = dso_local global i16 0, align 2
@logg_foreground = dso_local global i16 1, align 2
@logg_size = dso_local global i32 0, align 4
@logg_file = dso_local global i8* null, align 8
@mprintf_disabled = dso_local global i16 0, align 2
@mprintf_verbose = dso_local global i16 0, align 2
@mprintf_quiet = dso_local global i16 0, align 2
@mprintf_stdout = dso_local global i16 0, align 2
@.str = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"ERROR: Can't open %s in append mode (check permissions!).\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Log size = %u, max = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"LOGGING DISABLED (Maximal log file size exceeded).\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s -> \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"ERROR: %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"WARNING: %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mdprintf(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %14 = call i32 @vsnprintf(i8* noundef %11, i64 noundef 512, i8* noundef %12, %struct.__va_list_tag* noundef %13) #6
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 512
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 511, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @send(i32 noundef %26, i8* noundef %27, i64 noundef %29, i32 noundef 0)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

declare dso_local i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @logg_close() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4)
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logg(i8* noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca %struct.flock, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1025 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_start(i8* %15)
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = load i8*, i8** @logg_file, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %174

22:                                               ; preds = %1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %24 = icmp ne %struct._IO_FILE* %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = call i32 @umask(i32 noundef 31) #6
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** @logg_file, align 8
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** @logg_fd, align 8
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @umask(i32 noundef %31) #6
  %33 = load i8*, i8** @logg_file, align 8
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* noundef %33)
  store i32 -1, i32* %2, align 4
  br label %198

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @umask(i32 noundef %36) #6
  br label %38

38:                                               ; preds = %35
  %39 = load i16, i16* @logg_lock, align 2
  %40 = icmp ne i16 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = bitcast %struct.flock* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 32, i1 false)
  %43 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 0
  store i16 1, i16* %43, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %45 = call i32 @fileno(%struct._IO_FILE* noundef %44) #6
  %46 = call i32 (i32, i32, ...) @fcntl(i32 noundef %45, i32 noundef 6, %struct.flock* noundef %7)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %198

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* @logg_size, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i8*, i8** @logg_file, align 8
  %56 = call i32 @stat(i8* noundef %55, %struct.stat* noundef %12) #6
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @logg_size, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  store i8* null, i8** @logg_file, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @logg_size, align 4
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %68, i32 noundef %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %74 = call i32 @fclose(%struct._IO_FILE* noundef %73)
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %75

75:                                               ; preds = %64, %58
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %51
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %79 = icmp ne %struct._IO_FILE* %78, null
  br i1 %79, label %80, label %173

80:                                               ; preds = %77
  %81 = load i16, i16* @logg_time, align 2
  %82 = sext i16 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 42
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i16, i16* @logg_verbose, align 2
  %91 = sext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %89, %84
  %94 = call i64 @time(i64* noundef %11) #6
  %95 = call i8* @ctime(i64* noundef %11) #6
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strlen(i8* noundef %96) #7
  %98 = call noalias i8* @calloc(i64 noundef %97, i64 noundef 1) #6
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i64 @strlen(i8* noundef %101) #7
  %103 = sub i64 %102, 1
  %104 = call i8* @strncpy(i8* noundef %99, i8* noundef %100, i64 noundef %103) #6
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %106)
  %108 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %108) #6
  br label %109

109:                                              ; preds = %93, %89, %80
  %110 = load i8*, i8** %3, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 33
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %116, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %122 = call i32 @vfprintf(%struct._IO_FILE* noundef %118, i8* noundef %120, %struct.__va_list_tag* noundef %121)
  br label %170

123:                                              ; preds = %109
  %124 = load i8*, i8** %3, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 94
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %135 = call i32 @vfprintf(%struct._IO_FILE* noundef %131, i8* noundef %133, %struct.__va_list_tag* noundef %134)
  br label %169

136:                                              ; preds = %123
  %137 = load i8*, i8** %3, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 42
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i16, i16* @logg_verbose, align 2
  %143 = icmp ne i16 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %149 = call i32 @vfprintf(%struct._IO_FILE* noundef %145, i8* noundef %147, %struct.__va_list_tag* noundef %148)
  br label %150

150:                                              ; preds = %144, %141
  br label %168

151:                                              ; preds = %136
  %152 = load i8*, i8** %3, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 35
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %158 = load i8*, i8** %3, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %161 = call i32 @vfprintf(%struct._IO_FILE* noundef %157, i8* noundef %159, %struct.__va_list_tag* noundef %160)
  br label %167

162:                                              ; preds = %151
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %166 = call i32 @vfprintf(%struct._IO_FILE* noundef %163, i8* noundef %164, %struct.__va_list_tag* noundef %165)
  br label %167

167:                                              ; preds = %162, %156
  br label %168

168:                                              ; preds = %167, %150
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %115
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %172 = call i32 @fflush(%struct._IO_FILE* noundef %171)
  br label %173

173:                                              ; preds = %170, %77
  br label %174

174:                                              ; preds = %173, %1
  %175 = load i16, i16* @logg_foreground, align 2
  %176 = icmp ne i16 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i8*, i8** %3, align 8
  %179 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %182 = call i32 @vsnprintf(i8* noundef %179, i64 noundef 1024, i8* noundef %180, %struct.__va_list_tag* noundef %181) #6
  %183 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 1024
  store i8 0, i8* %183, align 16
  %184 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  %185 = load i8, i8* %184, align 16
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 35
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = getelementptr inbounds [1025 x i8], [1025 x i8]* %10, i64 0, i64 0
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %189)
  br label %190

190:                                              ; preds = %188, %177
  br label %191

191:                                              ; preds = %190, %174
  %192 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %193 = bitcast %struct.__va_list_tag* %192 to i8*
  call void @llvm.va_end(i8* %193)
  %194 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %195 = bitcast %struct.__va_list_tag* %194 to i8*
  call void @llvm.va_end(i8* %195)
  %196 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %197 = bitcast %struct.__va_list_tag* %196 to i8*
  call void @llvm.va_end(i8* %197)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %191, %48, %30
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare dso_local i32 @umask(i32 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @ctime(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @mprintf(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [512 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i16, i16* @mprintf_disabled, align 2
  %7 = icmp ne i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %91

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %10, %struct._IO_FILE** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %16 = call i32 @vsnprintf(i8* noundef %13, i64 noundef 512, i8* noundef %14, %struct.__va_list_tag* noundef %15) #6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %23, label %32

23:                                               ; preds = %9
  %24 = load i16, i16* @mprintf_stdout, align 2
  %25 = icmp ne i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** %4, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %30)
  br label %84

32:                                               ; preds = %9
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i16, i16* @mprintf_stdout, align 2
  %39 = icmp ne i16 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %41, %struct._IO_FILE** %4, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef %44)
  br label %83

46:                                               ; preds = %32
  %47 = load i16, i16* @mprintf_quiet, align 2
  %48 = icmp ne i16 %47, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 94
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i16, i16* @mprintf_stdout, align 2
  %56 = icmp ne i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %58, %struct._IO_FILE** %4, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef %61)
  br label %81

63:                                               ; preds = %49
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 42
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i16, i16* @mprintf_verbose, align 2
  %70 = icmp ne i16 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %80

76:                                               ; preds = %63
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %78)
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %28
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = icmp eq %struct._IO_FILE* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = call i32 @fflush(%struct._IO_FILE* noundef %89)
  br label %91

91:                                               ; preds = %8, %88, %84
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
