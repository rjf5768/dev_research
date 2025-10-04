; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@.str = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal global %struct._IO_FILE* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = external dso_local global i32, align 4
@aflag = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal global i32 0, align 4
@hcount = internal global i32 0, align 4
@pershsize = internal global i32 0, align 4
@pershtab = internal global %struct.dent* null, align 8
@goodsizes = internal global [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str.12 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = external dso_local global %struct.dent*, align 8
@hashsize = external dso_local global i32, align 4
@hashstrings = external dso_local global i8*, align 8
@hashheader = external dso_local global %struct.hashheader, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @treeinit(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #7
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %171

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %93

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %21)
  store %struct._IO_FILE* %22, %struct._IO_FILE** @dictf, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct._IO_FILE* @trydict(i8* noundef %23, i8* noundef %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %25)
  store %struct._IO_FILE* %26, %struct._IO_FILE** %8, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %33, %struct._IO_FILE** @dictf, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct._IO_FILE* @trydict(i8* noundef %34, i8* noundef %35, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %8, align 8
  br label %37

37:                                               ; preds = %32, %29, %20
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %39 = icmp eq %struct._IO_FILE* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %44)
  store %struct._IO_FILE* %45, %struct._IO_FILE** @dictf, align 8
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call %struct._IO_FILE* @trydict(i8* noundef %46, i8* noundef %47, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %48)
  store %struct._IO_FILE* %49, %struct._IO_FILE** %8, align 8
  br label %50

50:                                               ; preds = %43, %40, %37
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %52 = icmp eq %struct._IO_FILE* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %55 = icmp eq %struct._IO_FILE* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %57, %struct._IO_FILE** @dictf, align 8
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call %struct._IO_FILE* @trydict(i8* noundef %58, i8* noundef %59, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %60, %struct._IO_FILE** %8, align 8
  br label %61

61:                                               ; preds = %56, %53, %50
  %62 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), align 16
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %67 = load i8, i8* %66, align 16
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %72 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef %71) #7
  br label %77

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %74, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %75) #7
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %80 = icmp ne %struct._IO_FILE* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %84 = call i32 @fclose(%struct._IO_FILE* noundef %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %87 = icmp ne %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @treeload(%struct._IO_FILE* noundef %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* noundef %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %154

93:                                               ; preds = %17
  %94 = load i8*, i8** %3, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @strncmp(i8* noundef %99, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 noundef 2) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @strncmp(i8* noundef %103, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 3) #8
  %105 = icmp eq i32 %104, 0
  br label %106

106:                                              ; preds = %102, %98, %93
  %107 = phi i1 [ true, %98 ], [ true, %93 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8
  %113 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef %112) #7
  %114 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %114, %struct._IO_FILE** @dictf, align 8
  %115 = icmp ne %struct._IO_FILE* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %117)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %119 = call i32 @fclose(%struct._IO_FILE* noundef %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %153

121:                                              ; preds = %106
  %122 = load i8*, i8** %3, align 8
  %123 = call i8* @strcpy(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef %122) #7
  %124 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %124, %struct._IO_FILE** @dictf, align 8
  %125 = icmp ne %struct._IO_FILE* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %127)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %129 = call i32 @fclose(%struct._IO_FILE* noundef %128)
  br label %145

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %134, i8* noundef %135) #7
  %137 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %137, %struct._IO_FILE** @dictf, align 8
  %138 = icmp ne %struct._IO_FILE* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %140)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %142 = call i32 @fclose(%struct._IO_FILE* noundef %141)
  br label %143

143:                                              ; preds = %139, %133
  br label %144

144:                                              ; preds = %143, %130
  br label %145

145:                                              ; preds = %144, %126
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %147 = icmp eq %struct._IO_FILE* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* noundef %150)
  call void @perror(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %171

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %120
  br label %154

154:                                              ; preds = %153, %92
  %155 = load i32, i32* @lflag, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @aflag, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %157
  %161 = call i32 @access(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i32 noundef 2) #7
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = call i32* @__errno_location() #9
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 2
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %168, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0))
  %170 = call i32 @sleep(i32 noundef 2)
  br label %171

171:                                              ; preds = %16, %148, %167, %163, %160, %157, %154
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @trydict(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef %14, i8* noundef %15) #7
  br label %23

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %19, i8* noundef %20, i8* noundef %21) #7
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i8*, i8** %5, align 8
  %25 = call noalias %struct._IO_FILE* @fopen(i8* noundef %24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %25, %struct._IO_FILE** %9, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  ret %struct._IO_FILE* %32
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @treeload(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [8192 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %7 = call i8* @fgets(i8* noundef %5, i32 noundef 8192, %struct._IO_FILE* noundef %6)
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  call void @treeinsert(i8* noundef %10, i32 noundef 8192, i32 noundef 1)
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  store i32 0, i32* @newwords, align 4
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @access(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i32 @sleep(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @treeinsert(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dent, align 8
  %9 = alloca %struct.dent*, align 8
  %10 = alloca %struct.dent*, align 8
  %11 = alloca %struct.dent*, align 8
  %12 = alloca %struct.dent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [120 x i8], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @cantexpand, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %158, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @hcount, align 4
  %20 = mul nsw i32 %19, 100
  %21 = sdiv i32 %20, 70
  %22 = load i32, i32* @pershsize, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %158

24:                                               ; preds = %18
  %25 = load i32, i32* @pershsize, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %26, %struct.dent** %12, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %40, %24
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @pershsize, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %27, !llvm.loop !6

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 4
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @pershsize, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @pershsize, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* @pershsize, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* @pershsize, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @pershsize, align 4
  %59 = zext i32 %58 to i64
  %60 = call noalias i8* @calloc(i64 noundef %59, i64 noundef 24) #7
  %61 = bitcast i8* %60 to %struct.dent*
  store %struct.dent* %61, %struct.dent** @pershtab, align 8
  %62 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %63 = icmp eq %struct.dent* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %67 = load %struct.dent*, %struct.dent** %12, align 8
  %68 = icmp eq %struct.dent* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void @exit(i32 noundef 1) #10
  unreachable

70:                                               ; preds = %64
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* @cantexpand, align 4
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* @pershsize, align 4
  %74 = load %struct.dent*, %struct.dent** %12, align 8
  store %struct.dent* %74, %struct.dent** @pershtab, align 8
  store i32 1, i32* @newwords, align 4
  br label %157

75:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %147, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %150

80:                                               ; preds = %76
  %81 = load %struct.dent*, %struct.dent** %12, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dent, %struct.dent* %81, i64 %83
  store %struct.dent* %84, %struct.dent** %9, align 8
  %85 = load %struct.dent*, %struct.dent** %9, align 8
  %86 = getelementptr inbounds %struct.dent, %struct.dent* %85, i32 0, i32 2
  %87 = getelementptr inbounds [1 x i64], [1 x i64]* %86, i64 0, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, 67108864
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %80
  %92 = load %struct.dent*, %struct.dent** %9, align 8
  %93 = call %struct.dent* @tinsert(%struct.dent* noundef %92)
  store %struct.dent* %93, %struct.dent** %11, align 8
  %94 = load %struct.dent*, %struct.dent** %9, align 8
  %95 = getelementptr inbounds %struct.dent, %struct.dent* %94, i32 0, i32 2
  %96 = getelementptr inbounds [1 x i64], [1 x i64]* %95, i64 0, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %97, 1073741824
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load %struct.dent*, %struct.dent** %9, align 8
  %101 = getelementptr inbounds %struct.dent, %struct.dent* %100, i32 0, i32 0
  %102 = load %struct.dent*, %struct.dent** %101, align 8
  store %struct.dent* %102, %struct.dent** %9, align 8
  br label %103

103:                                              ; preds = %144, %91
  %104 = load %struct.dent*, %struct.dent** %9, align 8
  %105 = icmp ne %struct.dent* %104, null
  br i1 %105, label %106, label %145

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load %struct.dent*, %struct.dent** %9, align 8
  %111 = getelementptr inbounds %struct.dent, %struct.dent* %110, i32 0, i32 2
  %112 = getelementptr inbounds [1 x i64], [1 x i64]* %111, i64 0, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = and i64 %113, 1073741824
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %15, align 4
  %116 = load %struct.dent*, %struct.dent** %11, align 8
  %117 = getelementptr inbounds %struct.dent, %struct.dent* %116, i32 0, i32 0
  %118 = load %struct.dent*, %struct.dent** %117, align 8
  store %struct.dent* %118, %struct.dent** %10, align 8
  %119 = load %struct.dent*, %struct.dent** %9, align 8
  %120 = load %struct.dent*, %struct.dent** %11, align 8
  %121 = getelementptr inbounds %struct.dent, %struct.dent* %120, i32 0, i32 0
  store %struct.dent* %119, %struct.dent** %121, align 8
  %122 = load %struct.dent*, %struct.dent** %9, align 8
  store %struct.dent* %122, %struct.dent** %11, align 8
  %123 = load %struct.dent*, %struct.dent** %9, align 8
  %124 = getelementptr inbounds %struct.dent, %struct.dent* %123, i32 0, i32 0
  %125 = load %struct.dent*, %struct.dent** %124, align 8
  store %struct.dent* %125, %struct.dent** %9, align 8
  %126 = load %struct.dent*, %struct.dent** %10, align 8
  %127 = load %struct.dent*, %struct.dent** %11, align 8
  %128 = getelementptr inbounds %struct.dent, %struct.dent* %127, i32 0, i32 0
  store %struct.dent* %126, %struct.dent** %128, align 8
  br label %144

129:                                              ; preds = %106
  %130 = load %struct.dent*, %struct.dent** %9, align 8
  %131 = getelementptr inbounds %struct.dent, %struct.dent* %130, i32 0, i32 2
  %132 = getelementptr inbounds [1 x i64], [1 x i64]* %131, i64 0, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %133, 1073741824
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %15, align 4
  %136 = load %struct.dent*, %struct.dent** %9, align 8
  %137 = call %struct.dent* @tinsert(%struct.dent* noundef %136)
  store %struct.dent* %137, %struct.dent** %11, align 8
  %138 = load %struct.dent*, %struct.dent** %9, align 8
  store %struct.dent* %138, %struct.dent** %10, align 8
  %139 = load %struct.dent*, %struct.dent** %9, align 8
  %140 = getelementptr inbounds %struct.dent, %struct.dent* %139, i32 0, i32 0
  %141 = load %struct.dent*, %struct.dent** %140, align 8
  store %struct.dent* %141, %struct.dent** %9, align 8
  %142 = load %struct.dent*, %struct.dent** %10, align 8
  %143 = bitcast %struct.dent* %142 to i8*
  call void @free(i8* noundef %143) #7
  br label %144

144:                                              ; preds = %129, %109
  br label %103, !llvm.loop !7

145:                                              ; preds = %103
  br label %146

146:                                              ; preds = %145, %80
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %76, !llvm.loop !8

150:                                              ; preds = %76
  %151 = load %struct.dent*, %struct.dent** %12, align 8
  %152 = icmp ne %struct.dent* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.dent*, %struct.dent** %12, align 8
  %155 = bitcast %struct.dent* %154 to i8*
  call void @free(i8* noundef %155) #7
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %70
  br label %158

158:                                              ; preds = %157, %18, %3
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @makedent(i8* noundef %159, i32 noundef %160, %struct.dent* noundef %8)
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %204

164:                                              ; preds = %158
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 2
  %169 = getelementptr inbounds [1 x i64], [1 x i64]* %168, i64 0, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = or i64 %170, 134217728
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %167, %164
  %173 = getelementptr inbounds [120 x i8], [120 x i8]* %14, i64 0, i64 0
  %174 = load i8*, i8** %4, align 8
  %175 = call i32 @strtoichar(i8* noundef %173, i8* noundef %174, i32 noundef 120, i32 noundef 1)
  %176 = getelementptr inbounds [120 x i8], [120 x i8]* %14, i64 0, i64 0
  call void @upcase(i8* noundef %176)
  %177 = getelementptr inbounds [120 x i8], [120 x i8]* %14, i64 0, i64 0
  %178 = call %struct.dent* @lookup(i8* noundef %177, i32 noundef 1)
  store %struct.dent* %178, %struct.dent** %9, align 8
  %179 = icmp ne %struct.dent* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %172
  %181 = load %struct.dent*, %struct.dent** %9, align 8
  %182 = call i32 @combinecaps(%struct.dent* noundef %181, %struct.dent* noundef %8)
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  call void @free(i8* noundef %186) #7
  br label %204

187:                                              ; preds = %180
  br label %200

188:                                              ; preds = %172
  %189 = call %struct.dent* @tinsert(%struct.dent* noundef %8)
  store %struct.dent* %189, %struct.dent** %9, align 8
  %190 = load %struct.dent*, %struct.dent** %9, align 8
  %191 = getelementptr inbounds %struct.dent, %struct.dent* %190, i32 0, i32 2
  %192 = getelementptr inbounds [1 x i64], [1 x i64]* %191, i64 0, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = and i64 %193, 805306368
  %195 = icmp eq i64 %194, 805306368
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.dent*, %struct.dent** %9, align 8
  %198 = call i32 @addvheader(%struct.dent* noundef %197)
  br label %199

199:                                              ; preds = %196, %188
  br label %200

200:                                              ; preds = %199, %187
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @newwords, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* @newwords, align 4
  br label %204

204:                                              ; preds = %200, %184, %163
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal %struct.dent* @tinsert(%struct.dent* noundef %0) #0 {
  %2 = alloca %struct.dent*, align 8
  %3 = alloca [120 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.dent*, align 8
  %6 = alloca %struct.dent*, align 8
  store %struct.dent* %0, %struct.dent** %2, align 8
  %7 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 0
  %8 = load %struct.dent*, %struct.dent** %2, align 8
  %9 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strtoichar(i8* noundef %7, i8* noundef %10, i32 noundef 120, i32 noundef 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load %struct.dent*, %struct.dent** %2, align 8
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8* noundef %17, i32 noundef 449, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i64 0, i64 0))
  br label %19

19:                                               ; preds = %13, %1
  %20 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* @pershsize, align 4
  %22 = call i32 @hash(i8* noundef %20, i32 noundef %21)
  store i32 %22, i32* %4, align 4
  store %struct.dent* null, %struct.dent** %6, align 8
  %23 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dent, %struct.dent* %23, i64 %25
  store %struct.dent* %26, %struct.dent** %5, align 8
  %27 = load %struct.dent*, %struct.dent** %5, align 8
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x i64], [1 x i64]* %28, i64 0, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %37, %33
  %35 = load %struct.dent*, %struct.dent** %5, align 8
  %36 = icmp ne %struct.dent* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.dent*, %struct.dent** %5, align 8
  store %struct.dent* %38, %struct.dent** %6, align 8
  %39 = load %struct.dent*, %struct.dent** %5, align 8
  %40 = getelementptr inbounds %struct.dent, %struct.dent* %39, i32 0, i32 0
  %41 = load %struct.dent*, %struct.dent** %40, align 8
  store %struct.dent* %41, %struct.dent** %5, align 8
  br label %34, !llvm.loop !9

42:                                               ; preds = %34
  %43 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #7
  %44 = bitcast i8* %43 to %struct.dent*
  store %struct.dent* %44, %struct.dent** %5, align 8
  %45 = load %struct.dent*, %struct.dent** %5, align 8
  %46 = icmp eq %struct.dent* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 noundef 1) #10
  unreachable

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.dent*, %struct.dent** %5, align 8
  %53 = load %struct.dent*, %struct.dent** %2, align 8
  %54 = bitcast %struct.dent* %52 to i8*
  %55 = bitcast %struct.dent* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = load %struct.dent*, %struct.dent** %6, align 8
  %57 = icmp ne %struct.dent* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.dent*, %struct.dent** %5, align 8
  %60 = load %struct.dent*, %struct.dent** %6, align 8
  %61 = getelementptr inbounds %struct.dent, %struct.dent* %60, i32 0, i32 0
  store %struct.dent* %59, %struct.dent** %61, align 8
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.dent*, %struct.dent** %5, align 8
  %64 = getelementptr inbounds %struct.dent, %struct.dent* %63, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %64, align 8
  %65 = load %struct.dent*, %struct.dent** %5, align 8
  ret %struct.dent* %65
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local i32 @makedent(i8* noundef, i32 noundef, %struct.dent* noundef) #2

declare dso_local i32 @strtoichar(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @upcase(i8* noundef) #2

declare dso_local %struct.dent* @lookup(i8* noundef, i32 noundef) #2

declare dso_local i32 @combinecaps(%struct.dent* noundef, %struct.dent* noundef) #2

declare dso_local i32 @addvheader(%struct.dent* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dent* @treelookup(i8* noundef %0) #0 {
  %2 = alloca %struct.dent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dent*, align 8
  %6 = alloca [120 x i8], align 16
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @pershsize, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.dent* null, %struct.dent** %2, align 8
  br label %70

10:                                               ; preds = %1
  %11 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @ichartostr(i8* noundef %11, i8* noundef %12, i32 noundef 120, i32 noundef 1)
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @pershsize, align 4
  %16 = call i32 @hash(i8* noundef %14, i32 noundef %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dent, %struct.dent* %17, i64 %19
  store %struct.dent* %20, %struct.dent** %5, align 8
  br label %21

21:                                               ; preds = %53, %10
  %22 = load %struct.dent*, %struct.dent** %5, align 8
  %23 = icmp ne %struct.dent* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.dent*, %struct.dent** %5, align 8
  %26 = getelementptr inbounds %struct.dent, %struct.dent* %25, i32 0, i32 2
  %27 = getelementptr inbounds [1 x i64], [1 x i64]* %26, i64 0, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, 67108864
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %57

33:                                               ; preds = %31
  %34 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %35 = load %struct.dent*, %struct.dent** %5, align 8
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef %34, i8* noundef %37) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %57

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %49, %41
  %43 = load %struct.dent*, %struct.dent** %5, align 8
  %44 = getelementptr inbounds %struct.dent, %struct.dent* %43, i32 0, i32 2
  %45 = getelementptr inbounds [1 x i64], [1 x i64]* %44, i64 0, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, 1073741824
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.dent*, %struct.dent** %5, align 8
  %51 = getelementptr inbounds %struct.dent, %struct.dent* %50, i32 0, i32 0
  %52 = load %struct.dent*, %struct.dent** %51, align 8
  store %struct.dent* %52, %struct.dent** %5, align 8
  br label %42, !llvm.loop !10

53:                                               ; preds = %42
  %54 = load %struct.dent*, %struct.dent** %5, align 8
  %55 = getelementptr inbounds %struct.dent, %struct.dent* %54, i32 0, i32 0
  %56 = load %struct.dent*, %struct.dent** %55, align 8
  store %struct.dent* %56, %struct.dent** %5, align 8
  br label %21, !llvm.loop !11

57:                                               ; preds = %40, %31
  %58 = load %struct.dent*, %struct.dent** %5, align 8
  %59 = icmp ne %struct.dent* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.dent*, %struct.dent** %5, align 8
  %62 = getelementptr inbounds %struct.dent, %struct.dent* %61, i32 0, i32 2
  %63 = getelementptr inbounds [1 x i64], [1 x i64]* %62, i64 0, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 67108864
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load %struct.dent*, %struct.dent** %5, align 8
  store %struct.dent* %68, %struct.dent** %2, align 8
  br label %70

69:                                               ; preds = %60, %57
  store %struct.dent* null, %struct.dent** %2, align 8
  br label %70

70:                                               ; preds = %69, %67, %9
  %71 = load %struct.dent*, %struct.dent** %2, align 8
  ret %struct.dent* %71
}

declare dso_local i32 @ichartostr(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @hash(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @treeoutput() #0 {
  %1 = alloca %struct.dent*, align 8
  %2 = alloca %struct.dent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent**, align 8
  %5 = alloca %struct.dent**, align 8
  %6 = alloca %struct.dent*, align 8
  %7 = load i32, i32* @newwords, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %302

10:                                               ; preds = %0
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** @dictf, align 8
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0))
  br label %302

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  %17 = load i32, i32* @hcount, align 4
  %18 = icmp sge i32 %17, 1000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.dent** null, %struct.dent*** %4, align 8
  br label %109

20:                                               ; preds = %16
  %21 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %21, %struct.dent** %1, align 8
  %22 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %23 = load i32, i32* @pershsize, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dent, %struct.dent* %22, i64 %24
  store %struct.dent* %25, %struct.dent** %6, align 8
  br label %26

26:                                               ; preds = %63, %20
  %27 = load %struct.dent*, %struct.dent** %1, align 8
  %28 = load %struct.dent*, %struct.dent** %6, align 8
  %29 = icmp ult %struct.dent* %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load %struct.dent*, %struct.dent** %1, align 8
  store %struct.dent* %31, %struct.dent** %2, align 8
  br label %32

32:                                               ; preds = %58, %30
  %33 = load %struct.dent*, %struct.dent** %2, align 8
  %34 = icmp ne %struct.dent* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load %struct.dent*, %struct.dent** %2, align 8
  %37 = getelementptr inbounds %struct.dent, %struct.dent* %36, i32 0, i32 2
  %38 = getelementptr inbounds [1 x i64], [1 x i64]* %37, i64 0, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, 201326592
  %41 = icmp eq i64 %40, 201326592
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %53, %45
  %47 = load %struct.dent*, %struct.dent** %2, align 8
  %48 = getelementptr inbounds %struct.dent, %struct.dent* %47, i32 0, i32 2
  %49 = getelementptr inbounds [1 x i64], [1 x i64]* %48, i64 0, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, 1073741824
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.dent*, %struct.dent** %2, align 8
  %55 = getelementptr inbounds %struct.dent, %struct.dent* %54, i32 0, i32 0
  %56 = load %struct.dent*, %struct.dent** %55, align 8
  store %struct.dent* %56, %struct.dent** %2, align 8
  br label %46, !llvm.loop !12

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.dent*, %struct.dent** %2, align 8
  %60 = getelementptr inbounds %struct.dent, %struct.dent* %59, i32 0, i32 0
  %61 = load %struct.dent*, %struct.dent** %60, align 8
  store %struct.dent* %61, %struct.dent** %2, align 8
  br label %32, !llvm.loop !13

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.dent*, %struct.dent** %1, align 8
  %65 = getelementptr inbounds %struct.dent, %struct.dent* %64, i32 1
  store %struct.dent* %65, %struct.dent** %1, align 8
  br label %26, !llvm.loop !14

66:                                               ; preds = %26
  %67 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %67, %struct.dent** %1, align 8
  %68 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %69 = load i32, i32* @hashsize, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dent, %struct.dent* %68, i64 %70
  store %struct.dent* %71, %struct.dent** %6, align 8
  br label %72

72:                                               ; preds = %100, %66
  %73 = load %struct.dent*, %struct.dent** %1, align 8
  %74 = load %struct.dent*, %struct.dent** %6, align 8
  %75 = icmp ult %struct.dent* %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load %struct.dent*, %struct.dent** %1, align 8
  %78 = getelementptr inbounds %struct.dent, %struct.dent* %77, i32 0, i32 2
  %79 = getelementptr inbounds [1 x i64], [1 x i64]* %78, i64 0, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, 201326592
  %82 = icmp eq i64 %81, 201326592
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.dent*, %struct.dent** %1, align 8
  %85 = getelementptr inbounds %struct.dent, %struct.dent* %84, i32 0, i32 2
  %86 = getelementptr inbounds [1 x i64], [1 x i64]* %85, i64 0, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, 805306368
  %89 = icmp ne i64 %88, 805306368
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.dent*, %struct.dent** %1, align 8
  %92 = getelementptr inbounds %struct.dent, %struct.dent* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %90, %83
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.dent*, %struct.dent** %1, align 8
  %102 = getelementptr inbounds %struct.dent, %struct.dent* %101, i32 1
  store %struct.dent* %102, %struct.dent** %1, align 8
  br label %72, !llvm.loop !15

103:                                              ; preds = %72
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 24
  %107 = call noalias i8* @malloc(i64 noundef %106) #7
  %108 = bitcast i8* %107 to %struct.dent**
  store %struct.dent** %108, %struct.dent*** %4, align 8
  br label %109

109:                                              ; preds = %103, %19
  %110 = load %struct.dent**, %struct.dent*** %4, align 8
  %111 = icmp eq %struct.dent** %110, null
  br i1 %111, label %112, label %196

112:                                              ; preds = %109
  %113 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %113, %struct.dent** %1, align 8
  %114 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %115 = load i32, i32* @pershsize, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dent, %struct.dent* %114, i64 %116
  store %struct.dent* %117, %struct.dent** %6, align 8
  br label %118

118:                                              ; preds = %155, %112
  %119 = load %struct.dent*, %struct.dent** %1, align 8
  %120 = load %struct.dent*, %struct.dent** %6, align 8
  %121 = icmp ult %struct.dent* %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %118
  %123 = load %struct.dent*, %struct.dent** %1, align 8
  store %struct.dent* %123, %struct.dent** %2, align 8
  br label %124

124:                                              ; preds = %150, %122
  %125 = load %struct.dent*, %struct.dent** %2, align 8
  %126 = icmp ne %struct.dent* %125, null
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load %struct.dent*, %struct.dent** %2, align 8
  %129 = getelementptr inbounds %struct.dent, %struct.dent* %128, i32 0, i32 2
  %130 = getelementptr inbounds [1 x i64], [1 x i64]* %129, i64 0, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %131, 201326592
  %133 = icmp eq i64 %132, 201326592
  br i1 %133, label %134, label %149

134:                                              ; preds = %127
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %136 = load %struct.dent*, %struct.dent** %2, align 8
  call void @toutent(%struct._IO_FILE* noundef %135, %struct.dent* noundef %136, i32 noundef 1)
  br label %137

137:                                              ; preds = %144, %134
  %138 = load %struct.dent*, %struct.dent** %2, align 8
  %139 = getelementptr inbounds %struct.dent, %struct.dent* %138, i32 0, i32 2
  %140 = getelementptr inbounds [1 x i64], [1 x i64]* %139, i64 0, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = and i64 %141, 1073741824
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.dent*, %struct.dent** %2, align 8
  %146 = getelementptr inbounds %struct.dent, %struct.dent* %145, i32 0, i32 0
  %147 = load %struct.dent*, %struct.dent** %146, align 8
  store %struct.dent* %147, %struct.dent** %2, align 8
  br label %137, !llvm.loop !16

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.dent*, %struct.dent** %2, align 8
  %152 = getelementptr inbounds %struct.dent, %struct.dent* %151, i32 0, i32 0
  %153 = load %struct.dent*, %struct.dent** %152, align 8
  store %struct.dent* %153, %struct.dent** %2, align 8
  br label %124, !llvm.loop !17

154:                                              ; preds = %124
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.dent*, %struct.dent** %1, align 8
  %157 = getelementptr inbounds %struct.dent, %struct.dent* %156, i32 1
  store %struct.dent* %157, %struct.dent** %1, align 8
  br label %118, !llvm.loop !18

158:                                              ; preds = %118
  %159 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %159, %struct.dent** %1, align 8
  %160 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %161 = load i32, i32* @hashsize, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.dent, %struct.dent* %160, i64 %162
  store %struct.dent* %163, %struct.dent** %6, align 8
  br label %164

164:                                              ; preds = %192, %158
  %165 = load %struct.dent*, %struct.dent** %1, align 8
  %166 = load %struct.dent*, %struct.dent** %6, align 8
  %167 = icmp ult %struct.dent* %165, %166
  br i1 %167, label %168, label %195

168:                                              ; preds = %164
  %169 = load %struct.dent*, %struct.dent** %1, align 8
  %170 = getelementptr inbounds %struct.dent, %struct.dent* %169, i32 0, i32 2
  %171 = getelementptr inbounds [1 x i64], [1 x i64]* %170, i64 0, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = and i64 %172, 201326592
  %174 = icmp eq i64 %173, 201326592
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = load %struct.dent*, %struct.dent** %1, align 8
  %177 = getelementptr inbounds %struct.dent, %struct.dent* %176, i32 0, i32 2
  %178 = getelementptr inbounds [1 x i64], [1 x i64]* %177, i64 0, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = and i64 %179, 805306368
  %181 = icmp ne i64 %180, 805306368
  br i1 %181, label %182, label %190

182:                                              ; preds = %175
  %183 = load %struct.dent*, %struct.dent** %1, align 8
  %184 = getelementptr inbounds %struct.dent, %struct.dent* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %189 = load %struct.dent*, %struct.dent** %1, align 8
  call void @toutent(%struct._IO_FILE* noundef %188, %struct.dent* noundef %189, i32 noundef 1)
  br label %190

190:                                              ; preds = %187, %182, %175
  br label %191

191:                                              ; preds = %190, %168
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.dent*, %struct.dent** %1, align 8
  %194 = getelementptr inbounds %struct.dent, %struct.dent* %193, i32 1
  store %struct.dent* %194, %struct.dent** %1, align 8
  br label %164, !llvm.loop !19

195:                                              ; preds = %164
  br label %302

196:                                              ; preds = %109
  %197 = load %struct.dent**, %struct.dent*** %4, align 8
  store %struct.dent** %197, %struct.dent*** %5, align 8
  %198 = load %struct.dent*, %struct.dent** @pershtab, align 8
  store %struct.dent* %198, %struct.dent** %1, align 8
  %199 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %200 = load i32, i32* @pershsize, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.dent, %struct.dent* %199, i64 %201
  store %struct.dent* %202, %struct.dent** %6, align 8
  br label %203

203:                                              ; preds = %241, %196
  %204 = load %struct.dent*, %struct.dent** %1, align 8
  %205 = load %struct.dent*, %struct.dent** %6, align 8
  %206 = icmp ult %struct.dent* %204, %205
  br i1 %206, label %207, label %244

207:                                              ; preds = %203
  %208 = load %struct.dent*, %struct.dent** %1, align 8
  store %struct.dent* %208, %struct.dent** %2, align 8
  br label %209

209:                                              ; preds = %236, %207
  %210 = load %struct.dent*, %struct.dent** %2, align 8
  %211 = icmp ne %struct.dent* %210, null
  br i1 %211, label %212, label %240

212:                                              ; preds = %209
  %213 = load %struct.dent*, %struct.dent** %2, align 8
  %214 = getelementptr inbounds %struct.dent, %struct.dent* %213, i32 0, i32 2
  %215 = getelementptr inbounds [1 x i64], [1 x i64]* %214, i64 0, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = and i64 %216, 201326592
  %218 = icmp eq i64 %217, 201326592
  br i1 %218, label %219, label %235

219:                                              ; preds = %212
  %220 = load %struct.dent*, %struct.dent** %2, align 8
  %221 = load %struct.dent**, %struct.dent*** %5, align 8
  %222 = getelementptr inbounds %struct.dent*, %struct.dent** %221, i32 1
  store %struct.dent** %222, %struct.dent*** %5, align 8
  store %struct.dent* %220, %struct.dent** %221, align 8
  br label %223

223:                                              ; preds = %230, %219
  %224 = load %struct.dent*, %struct.dent** %2, align 8
  %225 = getelementptr inbounds %struct.dent, %struct.dent* %224, i32 0, i32 2
  %226 = getelementptr inbounds [1 x i64], [1 x i64]* %225, i64 0, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = and i64 %227, 1073741824
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load %struct.dent*, %struct.dent** %2, align 8
  %232 = getelementptr inbounds %struct.dent, %struct.dent* %231, i32 0, i32 0
  %233 = load %struct.dent*, %struct.dent** %232, align 8
  store %struct.dent* %233, %struct.dent** %2, align 8
  br label %223, !llvm.loop !20

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234, %212
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.dent*, %struct.dent** %2, align 8
  %238 = getelementptr inbounds %struct.dent, %struct.dent* %237, i32 0, i32 0
  %239 = load %struct.dent*, %struct.dent** %238, align 8
  store %struct.dent* %239, %struct.dent** %2, align 8
  br label %209, !llvm.loop !21

240:                                              ; preds = %209
  br label %241

241:                                              ; preds = %240
  %242 = load %struct.dent*, %struct.dent** %1, align 8
  %243 = getelementptr inbounds %struct.dent, %struct.dent* %242, i32 1
  store %struct.dent* %243, %struct.dent** %1, align 8
  br label %203, !llvm.loop !22

244:                                              ; preds = %203
  %245 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %245, %struct.dent** %1, align 8
  %246 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %247 = load i32, i32* @hashsize, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.dent, %struct.dent* %246, i64 %248
  store %struct.dent* %249, %struct.dent** %6, align 8
  br label %250

250:                                              ; preds = %279, %244
  %251 = load %struct.dent*, %struct.dent** %1, align 8
  %252 = load %struct.dent*, %struct.dent** %6, align 8
  %253 = icmp ult %struct.dent* %251, %252
  br i1 %253, label %254, label %282

254:                                              ; preds = %250
  %255 = load %struct.dent*, %struct.dent** %1, align 8
  %256 = getelementptr inbounds %struct.dent, %struct.dent* %255, i32 0, i32 2
  %257 = getelementptr inbounds [1 x i64], [1 x i64]* %256, i64 0, i64 0
  %258 = load i64, i64* %257, align 8
  %259 = and i64 %258, 201326592
  %260 = icmp eq i64 %259, 201326592
  br i1 %260, label %261, label %278

261:                                              ; preds = %254
  %262 = load %struct.dent*, %struct.dent** %1, align 8
  %263 = getelementptr inbounds %struct.dent, %struct.dent* %262, i32 0, i32 2
  %264 = getelementptr inbounds [1 x i64], [1 x i64]* %263, i64 0, i64 0
  %265 = load i64, i64* %264, align 8
  %266 = and i64 %265, 805306368
  %267 = icmp ne i64 %266, 805306368
  br i1 %267, label %268, label %277

268:                                              ; preds = %261
  %269 = load %struct.dent*, %struct.dent** %1, align 8
  %270 = getelementptr inbounds %struct.dent, %struct.dent* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load %struct.dent*, %struct.dent** %1, align 8
  %275 = load %struct.dent**, %struct.dent*** %5, align 8
  %276 = getelementptr inbounds %struct.dent*, %struct.dent** %275, i32 1
  store %struct.dent** %276, %struct.dent*** %5, align 8
  store %struct.dent* %274, %struct.dent** %275, align 8
  br label %277

277:                                              ; preds = %273, %268, %261
  br label %278

278:                                              ; preds = %277, %254
  br label %279

279:                                              ; preds = %278
  %280 = load %struct.dent*, %struct.dent** %1, align 8
  %281 = getelementptr inbounds %struct.dent, %struct.dent* %280, i32 1
  store %struct.dent* %281, %struct.dent** %1, align 8
  br label %250, !llvm.loop !23

282:                                              ; preds = %250
  %283 = load %struct.dent**, %struct.dent*** %4, align 8
  %284 = bitcast %struct.dent** %283 to i8*
  %285 = load i32, i32* %3, align 4
  %286 = zext i32 %285 to i64
  call void @qsort(i8* noundef %284, i64 noundef %286, i64 noundef 8, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.dent**, %struct.dent**)* @pdictcmp to i32 (i8*, i8*)*))
  %287 = load %struct.dent**, %struct.dent*** %4, align 8
  store %struct.dent** %287, %struct.dent*** %5, align 8
  br label %288

288:                                              ; preds = %292, %282
  %289 = load i32, i32* %3, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %3, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %294 = load %struct.dent**, %struct.dent*** %5, align 8
  %295 = getelementptr inbounds %struct.dent*, %struct.dent** %294, i32 1
  store %struct.dent** %295, %struct.dent*** %5, align 8
  %296 = load %struct.dent*, %struct.dent** %294, align 8
  call void @toutent(%struct._IO_FILE* noundef %293, %struct.dent* noundef %296, i32 noundef 1)
  br label %288, !llvm.loop !24

297:                                              ; preds = %288
  %298 = load %struct.dent**, %struct.dent*** %4, align 8
  %299 = bitcast %struct.dent** %298 to i8*
  call void @free(i8* noundef %299) #7
  store i32 0, i32* @newwords, align 4
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %301 = call i32 @fclose(%struct._IO_FILE* noundef %300)
  br label %302

302:                                              ; preds = %297, %195, %13, %9
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @toutent(%struct._IO_FILE* noundef, %struct.dent* noundef, i32 noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pdictcmp(%struct.dent** noundef %0, %struct.dent** noundef %1) #0 {
  %3 = alloca %struct.dent**, align 8
  %4 = alloca %struct.dent**, align 8
  store %struct.dent** %0, %struct.dent*** %3, align 8
  store %struct.dent** %1, %struct.dent*** %4, align 8
  %5 = load %struct.dent**, %struct.dent*** %3, align 8
  %6 = load %struct.dent*, %struct.dent** %5, align 8
  %7 = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.dent**, %struct.dent*** %4, align 8
  %10 = load %struct.dent*, %struct.dent** %9, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @casecmp(i8* noundef %8, i8* noundef %12, i32 noundef 1)
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @mymalloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = call noalias i8* @malloc(i64 noundef %4) #7
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @myfree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @hashstrings, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** @hashstrings, align 8
  %8 = icmp uge i8* %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** @hashstrings, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = icmp ule i8* %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %19

17:                                               ; preds = %9, %5, %1
  %18 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %18) #7
  br label %19

19:                                               ; preds = %17, %16
  ret void
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @casecmp(i8* noundef, i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }

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
