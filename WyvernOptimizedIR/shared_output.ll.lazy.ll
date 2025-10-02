; ModuleID = './shared_output.ll'
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
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [512 x i8], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @vsnprintf(i8* noundef nonnull %6, i64 noundef 512, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %7) #7
  %9 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %9)
  %10 = icmp eq i32 %8, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = icmp sgt i32 %8, 511
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12
  %.01 = phi i32 [ 511, %14 ], [ %8, %12 ]
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %17 = sext i32 %.01 to i64
  %18 = call i64 @send(i32 noundef %0, i8* noundef nonnull %16, i64 noundef %17, i32 noundef 0) #7
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %15, %11
  %.0 = phi i32 [ %8, %11 ], [ %19, %15 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

declare dso_local i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @logg_close() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %.not = icmp eq %struct._IO_FILE* %1, null
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %4 = call i32 @fclose(%struct._IO_FILE* noundef %3) #7
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logg(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.flock, align 8
  %6 = alloca [1025 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %9)
  %10 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %11)
  %12 = load i8*, i8** @logg_file, align 8
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %130, label %13

13:                                               ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %.not3 = icmp eq %struct._IO_FILE* %14, null
  br i1 %.not3, label %15, label %38

15:                                               ; preds = %13
  %16 = call i32 @umask(i32 noundef 31) #7
  %17 = load i8*, i8** @logg_file, align 8
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  store %struct._IO_FILE* %18, %struct._IO_FILE** @logg_fd, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @umask(i32 noundef %16) #7
  %22 = load i8*, i8** @logg_file, align 8
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* noundef %22) #7
  br label %146

24:                                               ; preds = %15
  %25 = call i32 @umask(i32 noundef %16) #7
  br label %26

26:                                               ; preds = %24
  %27 = load i16, i16* @logg_lock, align 2
  %.not4 = icmp eq i16 %27, 0
  br i1 %.not4, label %37, label %28

28:                                               ; preds = %26
  %29 = bitcast %struct.flock* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.flock, %struct.flock* %5, i64 0, i32 0
  store i16 1, i16* %30, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %32 = call i32 @fileno(%struct._IO_FILE* noundef %31) #7
  %33 = call i32 (i32, i32, ...) @fcntl(i32 noundef %32, i32 noundef 6, %struct.flock* noundef nonnull %5) #7
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %146

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %13
  %39 = load i32, i32* @logg_size, align 4
  %.not5 = icmp eq i32 %39, 0
  br i1 %.not5, label %62, label %40

40:                                               ; preds = %38
  %41 = load i8*, i8** @logg_file, align 8
  %42 = call i32 @stat(i8* noundef %41, %struct.stat* noundef nonnull %8) #7
  %.not11 = icmp eq i32 %42, -1
  br i1 %.not11, label %61, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @logg_size, align 4
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  store i8* null, i8** @logg_file, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @logg_size, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %53, i32 noundef %54) #7
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %59 = call i32 @fclose(%struct._IO_FILE* noundef %58) #7
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %60

60:                                               ; preds = %49, %43
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %.not6 = icmp eq %struct._IO_FILE* %63, null
  br i1 %.not6, label %129, label %64

64:                                               ; preds = %62
  %65 = load i16, i16* @logg_time, align 2
  %.not7 = icmp eq i16 %65, 0
  br i1 %.not7, label %80, label %66

66:                                               ; preds = %64
  %67 = load i8, i8* %0, align 1
  %.not9 = icmp eq i8 %67, 42
  br i1 %.not9, label %68, label %70

68:                                               ; preds = %66
  %69 = load i16, i16* @logg_verbose, align 2
  %.not10 = icmp eq i16 %69, 0
  br i1 %.not10, label %80, label %70

70:                                               ; preds = %68, %66
  %71 = call i64 @time(i64* noundef nonnull %7) #7
  %72 = call i8* @ctime(i64* noundef nonnull %7) #7
  %73 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %72) #8
  %74 = call noalias i8* @calloc(i64 noundef %73, i64 noundef 1) #7
  %75 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %72) #8
  %76 = add i64 %75, -1
  %77 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %74, i8* noundef %72, i64 noundef %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %74) #7
  call void @free(i8* noundef %74) #7
  br label %80

80:                                               ; preds = %70, %68, %64
  %81 = load i8, i8* %0, align 1
  %82 = icmp eq i8 %81, 33
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %87 = getelementptr inbounds i8, i8* %0, i64 1
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %89 = call i32 @vfprintf(%struct._IO_FILE* noundef %86, i8* noundef nonnull %87, %struct.__va_list_tag* noundef nonnull %88) #7
  br label %126

90:                                               ; preds = %80
  %91 = load i8, i8* %0, align 1
  %92 = icmp eq i8 %91, 94
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %95 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %97 = getelementptr inbounds i8, i8* %0, i64 1
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %99 = call i32 @vfprintf(%struct._IO_FILE* noundef %96, i8* noundef nonnull %97, %struct.__va_list_tag* noundef nonnull %98) #7
  br label %125

100:                                              ; preds = %90
  %101 = load i8, i8* %0, align 1
  %102 = icmp eq i8 %101, 42
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i16, i16* @logg_verbose, align 2
  %.not8 = icmp eq i16 %104, 0
  br i1 %.not8, label %110, label %105

105:                                              ; preds = %103
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %107 = getelementptr inbounds i8, i8* %0, i64 1
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %109 = call i32 @vfprintf(%struct._IO_FILE* noundef %106, i8* noundef nonnull %107, %struct.__va_list_tag* noundef nonnull %108) #7
  br label %110

110:                                              ; preds = %105, %103
  br label %124

111:                                              ; preds = %100
  %112 = load i8, i8* %0, align 1
  %113 = icmp eq i8 %112, 35
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %116 = getelementptr inbounds i8, i8* %0, i64 1
  %117 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %118 = call i32 @vfprintf(%struct._IO_FILE* noundef %115, i8* noundef nonnull %116, %struct.__va_list_tag* noundef nonnull %117) #7
  br label %123

119:                                              ; preds = %111
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %121 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %122 = call i32 @vfprintf(%struct._IO_FILE* noundef %120, i8* noundef nonnull %0, %struct.__va_list_tag* noundef nonnull %121) #7
  br label %123

123:                                              ; preds = %119, %114
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124, %93
  br label %126

126:                                              ; preds = %125, %83
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %128 = call i32 @fflush(%struct._IO_FILE* noundef %127) #7
  br label %129

129:                                              ; preds = %126, %62
  br label %130

130:                                              ; preds = %129, %1
  %131 = load i16, i16* @logg_foreground, align 2
  %.not1 = icmp eq i16 %131, 0
  br i1 %.not1, label %142, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 0
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %135 = call i32 @vsnprintf(i8* noundef nonnull %133, i64 noundef 1024, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %134) #7
  %136 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 1024
  store i8 0, i8* %136, align 16
  %137 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 0
  %138 = load i8, i8* %137, align 16
  %.not2 = icmp eq i8 %138, 35
  br i1 %.not2, label %141, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds [1025 x i8], [1025 x i8]* %6, i64 0, i64 0
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %140)
  br label %141

141:                                              ; preds = %139, %132
  br label %142

142:                                              ; preds = %141, %130
  %143 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %143)
  %144 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %144)
  %145 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %145)
  br label %146

146:                                              ; preds = %142, %35, %20
  %.0 = phi i32 [ 0, %142 ], [ -1, %20 ], [ -1, %35 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @umask(i32 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @mprintf(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [512 x i8], align 16
  %4 = load i16, i16* @mprintf_disabled, align 2
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %68

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %11 = call i32 @vsnprintf(i8* noundef nonnull %9, i64 noundef 512, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %10) #7
  %12 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = icmp eq i8 %14, 33
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load i16, i16* @mprintf_stdout, align 2
  %.not6 = icmp eq i16 %17, 0
  br i1 %.not6, label %18, label %20

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %20

20:                                               ; preds = %18, %16
  %.0 = phi %struct._IO_FILE* [ %7, %16 ], [ %19, %18 ]
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %21) #7
  br label %62

23:                                               ; preds = %6
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = icmp eq i8 %25, 64
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i16, i16* @mprintf_stdout, align 2
  %.not5 = icmp eq i16 %28, 0
  br i1 %.not5, label %29, label %31

29:                                               ; preds = %27
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %31

31:                                               ; preds = %29, %27
  %.1 = phi %struct._IO_FILE* [ %7, %27 ], [ %30, %29 ]
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %32) #7
  br label %61

34:                                               ; preds = %23
  %35 = load i16, i16* @mprintf_quiet, align 2
  %.not1 = icmp eq i16 %35, 0
  br i1 %.not1, label %36, label %60

36:                                               ; preds = %34
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = icmp eq i8 %38, 94
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i16, i16* @mprintf_stdout, align 2
  %.not4 = icmp eq i16 %41, 0
  br i1 %.not4, label %42, label %44

42:                                               ; preds = %40
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %44

44:                                               ; preds = %42, %40
  %.2 = phi %struct._IO_FILE* [ %7, %40 ], [ %43, %42 ]
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %45) #7
  br label %59

47:                                               ; preds = %36
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = icmp eq i8 %49, 42
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i16, i16* @mprintf_verbose, align 2
  %.not2 = icmp eq i16 %52, 0
  br i1 %.not2, label %55, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %fputs3 = call i32 @fputs(i8* nonnull %54, %struct._IO_FILE* %7)
  br label %55

55:                                               ; preds = %53, %51
  br label %58

56:                                               ; preds = %47
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %fputs = call i32 @fputs(i8* nonnull %57, %struct._IO_FILE* %7)
  br label %58

58:                                               ; preds = %56, %55
  br label %59

59:                                               ; preds = %58, %44
  %.3 = phi %struct._IO_FILE* [ %.2, %44 ], [ %7, %58 ]
  br label %60

60:                                               ; preds = %59, %34
  %.4 = phi %struct._IO_FILE* [ %7, %34 ], [ %.3, %59 ]
  br label %61

61:                                               ; preds = %60, %31
  %.5 = phi %struct._IO_FILE* [ %.1, %31 ], [ %.4, %60 ]
  br label %62

62:                                               ; preds = %61, %20
  %.6 = phi %struct._IO_FILE* [ %.0, %20 ], [ %.5, %61 ]
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = icmp eq %struct._IO_FILE* %.6, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i32 @fflush(%struct._IO_FILE* noundef %66) #7
  br label %68

68:                                               ; preds = %65, %62, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
