; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.strchartype = type { i8*, i8*, i8* }

@inited = internal global i32 0, align 4
@hashname = external dso_local global [4096 x i8], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@hashheader = external dso_local global %struct.hashheader, align 4
@hashsize = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Trouble reading hash table %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Null hash table %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Truncated hash table %s:  got %d bytes, expected %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = external dso_local global i32, align 4
@hashtbl = external dso_local global %struct.dent*, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@hashstrings = external dso_local global i8*, align 8
@numsflags = external dso_local global i32, align 4
@numpflags = external dso_local global i32, align 4
@sflaglist = external dso_local global %struct.flagent*, align 8
@pflaglist = external dso_local global %struct.flagent*, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@sflagindex = external dso_local global [228 x %struct.flagptr], align 16
@.str.9 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@pflagindex = external dso_local global [228 x %struct.flagptr], align 16
@chartypes = external dso_local global %struct.strchartype*, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @linit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent*, align 8
  %5 = alloca %struct.flagent*, align 8
  %6 = alloca %struct.flagptr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = load i32, i32* @inited, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %708

14:                                               ; preds = %0
  %15 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), i32 noundef 0)
  store i32 %15, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

20:                                               ; preds = %14
  %21 = call i8* @strrchr(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), i32 noundef 47) #4
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), i8** %10, align 8
  br label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @read(i32 noundef %29, i8* noundef bitcast (%struct.hashheader* @hashheader to i8*), i64 noundef 3928)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @hashsize, align 4
  %32 = load i32, i32* @hashsize, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 3928
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load i32, i32* @hashsize, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %40)
  br label %55

42:                                               ; preds = %35
  %43 = load i32, i32* @hashsize, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef %47)
  br label %54

49:                                               ; preds = %42
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @hashsize, align 4
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* noundef %51, i32 noundef %52, i32 noundef 3928)
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %38
  store i32 -1, i32* %1, align 4
  br label %708

56:                                               ; preds = %28
  %57 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 0), align 4
  %58 = zext i16 %57 to i32
  %59 = icmp ne i32 %58, 38402
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 0), align 4
  %64 = zext i16 %63 to i32
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* noundef %62, i32 noundef 38402, i32 noundef %64)
  store i32 -1, i32* %1, align 4
  br label %708

66:                                               ; preds = %56
  %67 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 31), align 4
  %68 = zext i16 %67 to i32
  %69 = icmp ne i32 %68, 38402
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 31), align 4
  %74 = zext i16 %73 to i32
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* noundef %72, i32 noundef 38402, i32 noundef %74)
  store i32 -1, i32* %1, align 4
  br label %708

76:                                               ; preds = %66
  %77 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 2), align 4
  %82 = sext i16 %81 to i32
  %83 = icmp ne i32 %82, 100
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %86 = sext i16 %85 to i32
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %97

88:                                               ; preds = %84, %80, %76
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 2), align 4
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %95 = sext i16 %94 to i32
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef 3, i32 noundef 100, i32 noundef 10)
  store i32 -1, i32* %1, align 4
  br label %708

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @nodictflag, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  store i32 1, i32* @hashsize, align 4
  %104 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #5
  %105 = bitcast i8* %104 to %struct.dent*
  store %struct.dent* %105, %struct.dent** @hashtbl, align 8
  %106 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %107 = icmp eq %struct.dent* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

111:                                              ; preds = %103
  %112 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %113 = getelementptr inbounds %struct.dent, %struct.dent* %112, i64 0
  %114 = getelementptr inbounds %struct.dent, %struct.dent* %113, i32 0, i32 1
  store i8* null, i8** %114, align 8
  %115 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %116 = getelementptr inbounds %struct.dent, %struct.dent* %115, i64 0
  %117 = getelementptr inbounds %struct.dent, %struct.dent* %116, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %117, align 8
  %118 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %119 = getelementptr inbounds %struct.dent, %struct.dent* %118, i64 0
  %120 = getelementptr inbounds %struct.dent, %struct.dent* %119, i32 0, i32 2
  %121 = getelementptr inbounds [1 x i64], [1 x i64]* %120, i64 0, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = and i64 %122, -201326593
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %125 = zext i32 %124 to i64
  %126 = call noalias i8* @malloc(i64 noundef %125) #5
  store i8* %126, i8** @hashstrings, align 8
  br label %137

127:                                              ; preds = %100
  %128 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 24
  %131 = call noalias i8* @malloc(i64 noundef %130) #5
  %132 = bitcast i8* %131 to %struct.dent*
  store %struct.dent* %132, %struct.dent** @hashtbl, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  store i32 %133, i32* @hashsize, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %135 = zext i32 %134 to i64
  %136 = call noalias i8* @malloc(i64 noundef %135) #5
  store i8* %136, i8** @hashstrings, align 8
  br label %137

137:                                              ; preds = %127, %111
  %138 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 9), align 4
  store i32 %138, i32* @numsflags, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 10), align 4
  store i32 %139, i32* @numpflags, align 4
  %140 = load i32, i32* @numsflags, align 4
  %141 = load i32, i32* @numpflags, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 256
  %145 = call noalias i8* @malloc(i64 noundef %144) #5
  %146 = bitcast i8* %145 to %struct.flagent*
  store %struct.flagent* %146, %struct.flagent** @sflaglist, align 8
  %147 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %148 = icmp eq %struct.dent* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %137
  %150 = load i8*, i8** @hashstrings, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %154 = icmp eq %struct.flagent* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %149, %137
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

158:                                              ; preds = %152
  %159 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %160 = load i32, i32* @numsflags, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.flagent, %struct.flagent* %159, i64 %161
  store %struct.flagent* %162, %struct.flagent** @pflaglist, align 8
  %163 = load i32, i32* @nodictflag, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %158
  %166 = load i32, i32* %2, align 4
  %167 = load i8*, i8** @hashstrings, align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %169 = zext i32 %168 to i64
  %170 = call i64 @read(i32 noundef %166, i8* noundef %167, i64 noundef %169)
  %171 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ne i64 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %175, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

177:                                              ; preds = %165
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %180 = sext i32 %179 to i64
  %181 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %182 = sext i32 %181 to i64
  %183 = sub nsw i64 %180, %182
  %184 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %185, 24
  %187 = add nsw i64 %183, %186
  %188 = call i64 @lseek(i32 noundef %178, i64 noundef %187, i32 noundef 1) #5
  br label %214

189:                                              ; preds = %158
  %190 = load i32, i32* %2, align 4
  %191 = load i8*, i8** @hashstrings, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %193 = zext i32 %192 to i64
  %194 = call i64 @read(i32 noundef %190, i8* noundef %191, i64 noundef %193)
  %195 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %196 = sext i32 %195 to i64
  %197 = icmp ne i64 %194, %196
  br i1 %197, label %210, label %198

198:                                              ; preds = %189
  %199 = load i32, i32* %2, align 4
  %200 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %201 = bitcast %struct.dent* %200 to i8*
  %202 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %203 = zext i32 %202 to i64
  %204 = mul i64 %203, 24
  %205 = call i64 @read(i32 noundef %199, i8* noundef %201, i64 noundef %204)
  %206 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 24
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %198, %189
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %177
  %215 = load i32, i32* %2, align 4
  %216 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %217 = bitcast %struct.flagent* %216 to i8*
  %218 = load i32, i32* @numsflags, align 4
  %219 = load i32, i32* @numpflags, align 4
  %220 = add nsw i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = mul i64 %221, 256
  %223 = call i64 @read(i32 noundef %215, i8* noundef %217, i64 noundef %222)
  %224 = load i32, i32* @numsflags, align 4
  %225 = load i32, i32* @numpflags, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 256
  %229 = icmp ne i64 %223, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %214
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %231, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

233:                                              ; preds = %214
  %234 = load i32, i32* %2, align 4
  %235 = call i32 @close(i32 noundef %234)
  %236 = load i32, i32* @nodictflag, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %286, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @hashsize, align 4
  store i32 %239, i32* %3, align 4
  %240 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  store %struct.dent* %240, %struct.dent** %4, align 8
  br label %241

241:                                              ; preds = %282, %238
  %242 = load i32, i32* %3, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %3, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %285

245:                                              ; preds = %241
  %246 = load %struct.dent*, %struct.dent** %4, align 8
  %247 = getelementptr inbounds %struct.dent, %struct.dent* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = icmp eq i8* %248, inttoptr (i64 -1 to i8*)
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.dent*, %struct.dent** %4, align 8
  %252 = getelementptr inbounds %struct.dent, %struct.dent* %251, i32 0, i32 1
  store i8* null, i8** %252, align 8
  br label %263

253:                                              ; preds = %245
  %254 = load i8*, i8** @hashstrings, align 8
  %255 = load %struct.dent*, %struct.dent** %4, align 8
  %256 = getelementptr inbounds %struct.dent, %struct.dent* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = ptrtoint i8* %257 to i32
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %254, i64 %259
  %261 = load %struct.dent*, %struct.dent** %4, align 8
  %262 = getelementptr inbounds %struct.dent, %struct.dent* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %253, %250
  %264 = load %struct.dent*, %struct.dent** %4, align 8
  %265 = getelementptr inbounds %struct.dent, %struct.dent* %264, i32 0, i32 0
  %266 = load %struct.dent*, %struct.dent** %265, align 8
  %267 = icmp eq %struct.dent* %266, inttoptr (i64 -1 to %struct.dent*)
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.dent*, %struct.dent** %4, align 8
  %270 = getelementptr inbounds %struct.dent, %struct.dent* %269, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %270, align 8
  br label %281

271:                                              ; preds = %263
  %272 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %273 = load %struct.dent*, %struct.dent** %4, align 8
  %274 = getelementptr inbounds %struct.dent, %struct.dent* %273, i32 0, i32 0
  %275 = load %struct.dent*, %struct.dent** %274, align 8
  %276 = ptrtoint %struct.dent* %275 to i32
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.dent, %struct.dent* %272, i64 %277
  %279 = load %struct.dent*, %struct.dent** %4, align 8
  %280 = getelementptr inbounds %struct.dent, %struct.dent* %279, i32 0, i32 0
  store %struct.dent* %278, %struct.dent** %280, align 8
  br label %281

281:                                              ; preds = %271, %268
  br label %282

282:                                              ; preds = %281
  %283 = load %struct.dent*, %struct.dent** %4, align 8
  %284 = getelementptr inbounds %struct.dent, %struct.dent* %283, i32 1
  store %struct.dent* %284, %struct.dent** %4, align 8
  br label %241, !llvm.loop !4

285:                                              ; preds = %241
  br label %286

286:                                              ; preds = %285, %233
  %287 = load i32, i32* @numsflags, align 4
  %288 = load i32, i32* @numpflags, align 4
  %289 = add nsw i32 %287, %288
  store i32 %289, i32* %3, align 4
  %290 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %290, %struct.flagent** %5, align 8
  br label %291

291:                                              ; preds = %332, %286
  %292 = load i32, i32* %3, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %3, align 4
  %294 = icmp sge i32 %293, 0
  br i1 %294, label %295, label %335

295:                                              ; preds = %291
  %296 = load %struct.flagent*, %struct.flagent** %5, align 8
  %297 = getelementptr inbounds %struct.flagent, %struct.flagent* %296, i32 0, i32 3
  %298 = load i16, i16* %297, align 2
  %299 = icmp ne i16 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %295
  %301 = load i8*, i8** @hashstrings, align 8
  %302 = load %struct.flagent*, %struct.flagent** %5, align 8
  %303 = getelementptr inbounds %struct.flagent, %struct.flagent* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = ptrtoint i8* %304 to i32
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %301, i64 %306
  %308 = load %struct.flagent*, %struct.flagent** %5, align 8
  %309 = getelementptr inbounds %struct.flagent, %struct.flagent* %308, i32 0, i32 0
  store i8* %307, i8** %309, align 8
  br label %313

310:                                              ; preds = %295
  %311 = load %struct.flagent*, %struct.flagent** %5, align 8
  %312 = getelementptr inbounds %struct.flagent, %struct.flagent* %311, i32 0, i32 0
  store i8* null, i8** %312, align 8
  br label %313

313:                                              ; preds = %310, %300
  %314 = load %struct.flagent*, %struct.flagent** %5, align 8
  %315 = getelementptr inbounds %struct.flagent, %struct.flagent* %314, i32 0, i32 4
  %316 = load i16, i16* %315, align 4
  %317 = icmp ne i16 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %313
  %319 = load i8*, i8** @hashstrings, align 8
  %320 = load %struct.flagent*, %struct.flagent** %5, align 8
  %321 = getelementptr inbounds %struct.flagent, %struct.flagent* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = ptrtoint i8* %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %319, i64 %324
  %326 = load %struct.flagent*, %struct.flagent** %5, align 8
  %327 = getelementptr inbounds %struct.flagent, %struct.flagent* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  br label %331

328:                                              ; preds = %313
  %329 = load %struct.flagent*, %struct.flagent** %5, align 8
  %330 = getelementptr inbounds %struct.flagent, %struct.flagent* %329, i32 0, i32 1
  store i8* null, i8** %330, align 8
  br label %331

331:                                              ; preds = %328, %318
  br label %332

332:                                              ; preds = %331
  %333 = load %struct.flagent*, %struct.flagent** %5, align 8
  %334 = getelementptr inbounds %struct.flagent, %struct.flagent* %333, i32 1
  store %struct.flagent* %334, %struct.flagent** %5, align 8
  br label %291, !llvm.loop !6

335:                                              ; preds = %291
  %336 = load i32, i32* @numsflags, align 4
  store i32 %336, i32* %3, align 4
  %337 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %337, %struct.flagent** %5, align 8
  br label %338

338:                                              ; preds = %470, %335
  %339 = load i32, i32* %3, align 4
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %475

341:                                              ; preds = %338
  %342 = load %struct.flagent*, %struct.flagent** %5, align 8
  %343 = getelementptr inbounds %struct.flagent, %struct.flagent* %342, i32 0, i32 4
  %344 = load i16, i16* %343, align 4
  %345 = sext i16 %344 to i32
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %341
  store i8* null, i8** %9, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 0), %struct.flagptr** %6, align 8
  store i32 1, i32* %8, align 4
  br label %400

348:                                              ; preds = %341
  %349 = load %struct.flagent*, %struct.flagent** %5, align 8
  %350 = getelementptr inbounds %struct.flagent, %struct.flagent* %349, i32 0, i32 1
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.flagent*, %struct.flagent** %5, align 8
  %353 = getelementptr inbounds %struct.flagent, %struct.flagent* %352, i32 0, i32 4
  %354 = load i16, i16* %353, align 4
  %355 = sext i16 %354 to i32
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %351, i64 %356
  %358 = getelementptr inbounds i8, i8* %357, i64 -1
  store i8* %358, i8** %9, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 %361
  store %struct.flagptr* %362, %struct.flagptr** %6, align 8
  store i32 0, i32* %8, align 4
  br label %363

363:                                              ; preds = %398, %348
  %364 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %365 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %370 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %369, i32 0, i32 0
  %371 = bitcast %union.ptr_union* %370 to %struct.flagptr**
  %372 = load %struct.flagptr*, %struct.flagptr** %371, align 8
  %373 = icmp ne %struct.flagptr* %372, null
  br label %374

374:                                              ; preds = %368, %363
  %375 = phi i1 [ false, %363 ], [ %373, %368 ]
  br i1 %375, label %376, label %399

376:                                              ; preds = %374
  %377 = load i8*, i8** %9, align 8
  %378 = load %struct.flagent*, %struct.flagent** %5, align 8
  %379 = getelementptr inbounds %struct.flagent, %struct.flagent* %378, i32 0, i32 1
  %380 = load i8*, i8** %379, align 8
  %381 = icmp eq i8* %377, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %376
  %383 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %384 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %383, i32 0, i32 0
  %385 = bitcast %union.ptr_union* %384 to %struct.flagptr**
  %386 = load %struct.flagptr*, %struct.flagptr** %385, align 8
  %387 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %386, i64 0
  store %struct.flagptr* %387, %struct.flagptr** %6, align 8
  store i32 1, i32* %8, align 4
  br label %398

388:                                              ; preds = %376
  %389 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %390 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %389, i32 0, i32 0
  %391 = bitcast %union.ptr_union* %390 to %struct.flagptr**
  %392 = load %struct.flagptr*, %struct.flagptr** %391, align 8
  %393 = load i8*, i8** %9, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 -1
  store i8* %394, i8** %9, align 8
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i64
  %397 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %392, i64 %396
  store %struct.flagptr* %397, %struct.flagptr** %6, align 8
  store i32 0, i32* %8, align 4
  br label %398

398:                                              ; preds = %388, %382
  br label %363, !llvm.loop !7

399:                                              ; preds = %374
  br label %400

400:                                              ; preds = %399, %347
  %401 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %402 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %400
  %406 = load %struct.flagent*, %struct.flagent** %5, align 8
  %407 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %408 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %407, i32 0, i32 0
  %409 = bitcast %union.ptr_union* %408 to %struct.flagent**
  store %struct.flagent* %406, %struct.flagent** %409, align 8
  br label %410

410:                                              ; preds = %405, %400
  %411 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %412 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 8
  %415 = load i32, i32* %8, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %469, label %417

417:                                              ; preds = %410
  %418 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %419 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = icmp sge i32 %420, 4
  br i1 %421, label %422, label %469

422:                                              ; preds = %417
  %423 = load %struct.flagent*, %struct.flagent** %5, align 8
  %424 = getelementptr inbounds %struct.flagent, %struct.flagent* %423, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %427 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %426, i32 0, i32 0
  %428 = bitcast %union.ptr_union* %427 to %struct.flagent**
  %429 = load %struct.flagent*, %struct.flagent** %428, align 8
  %430 = getelementptr inbounds %struct.flagent, %struct.flagent* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @strcmp(i8* noundef %425, i8* noundef %431) #4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %469

434:                                              ; preds = %422
  %435 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %436 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %435, i32 0, i32 0
  %437 = bitcast %union.ptr_union* %436 to %struct.flagent**
  %438 = load %struct.flagent*, %struct.flagent** %437, align 8
  %439 = getelementptr inbounds %struct.flagent, %struct.flagent* %438, i64 -1
  store %struct.flagent* %439, %struct.flagent** %5, align 8
  %440 = load i32, i32* @numsflags, align 4
  %441 = sext i32 %440 to i64
  %442 = load %struct.flagent*, %struct.flagent** %5, align 8
  %443 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %444 = ptrtoint %struct.flagent* %442 to i64
  %445 = ptrtoint %struct.flagent* %443 to i64
  %446 = sub i64 %444, %445
  %447 = sdiv exact i64 %446, 256
  %448 = sub nsw i64 %441, %447
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %3, align 4
  %450 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %451 = add nsw i32 128, %450
  %452 = zext i32 %451 to i64
  %453 = call noalias i8* @calloc(i64 noundef %452, i64 noundef 16) #5
  %454 = bitcast i8* %453 to %struct.flagptr*
  %455 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %456 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %455, i32 0, i32 0
  %457 = bitcast %union.ptr_union* %456 to %struct.flagptr**
  store %struct.flagptr* %454, %struct.flagptr** %457, align 8
  %458 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %459 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %458, i32 0, i32 0
  %460 = bitcast %union.ptr_union* %459 to %struct.flagptr**
  %461 = load %struct.flagptr*, %struct.flagptr** %460, align 8
  %462 = icmp eq %struct.flagptr* %461, null
  br i1 %462, label %463, label %466

463:                                              ; preds = %434
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %465 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %464, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

466:                                              ; preds = %434
  %467 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %468 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %467, i32 0, i32 1
  store i32 0, i32* %468, align 8
  br label %469

469:                                              ; preds = %466, %422, %417, %410
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %3, align 4
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %3, align 4
  %473 = load %struct.flagent*, %struct.flagent** %5, align 8
  %474 = getelementptr inbounds %struct.flagent, %struct.flagent* %473, i32 1
  store %struct.flagent* %474, %struct.flagent** %5, align 8
  br label %338, !llvm.loop !8

475:                                              ; preds = %338
  %476 = load i32, i32* @numpflags, align 4
  store i32 %476, i32* %3, align 4
  %477 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %477, %struct.flagent** %5, align 8
  br label %478

478:                                              ; preds = %603, %475
  %479 = load i32, i32* %3, align 4
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %481, label %608

481:                                              ; preds = %478
  %482 = load %struct.flagent*, %struct.flagent** %5, align 8
  %483 = getelementptr inbounds %struct.flagent, %struct.flagent* %482, i32 0, i32 4
  %484 = load i16, i16* %483, align 4
  %485 = sext i16 %484 to i32
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %481
  store i8* null, i8** %9, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 0), %struct.flagptr** %6, align 8
  store i32 1, i32* %8, align 4
  br label %533

488:                                              ; preds = %481
  %489 = load %struct.flagent*, %struct.flagent** %5, align 8
  %490 = getelementptr inbounds %struct.flagent, %struct.flagent* %489, i32 0, i32 1
  %491 = load i8*, i8** %490, align 8
  store i8* %491, i8** %9, align 8
  %492 = load i8*, i8** %9, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %9, align 8
  %494 = load i8, i8* %492, align 1
  %495 = zext i8 %494 to i64
  %496 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 %495
  store %struct.flagptr* %496, %struct.flagptr** %6, align 8
  store i32 0, i32* %8, align 4
  br label %497

497:                                              ; preds = %531, %488
  %498 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %499 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %508

502:                                              ; preds = %497
  %503 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %504 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %503, i32 0, i32 0
  %505 = bitcast %union.ptr_union* %504 to %struct.flagptr**
  %506 = load %struct.flagptr*, %struct.flagptr** %505, align 8
  %507 = icmp ne %struct.flagptr* %506, null
  br label %508

508:                                              ; preds = %502, %497
  %509 = phi i1 [ false, %497 ], [ %507, %502 ]
  br i1 %509, label %510, label %532

510:                                              ; preds = %508
  %511 = load i8*, i8** %9, align 8
  %512 = load i8, i8* %511, align 1
  %513 = zext i8 %512 to i32
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %521

515:                                              ; preds = %510
  %516 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %517 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %516, i32 0, i32 0
  %518 = bitcast %union.ptr_union* %517 to %struct.flagptr**
  %519 = load %struct.flagptr*, %struct.flagptr** %518, align 8
  %520 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %519, i64 0
  store %struct.flagptr* %520, %struct.flagptr** %6, align 8
  store i32 1, i32* %8, align 4
  br label %531

521:                                              ; preds = %510
  %522 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %523 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %522, i32 0, i32 0
  %524 = bitcast %union.ptr_union* %523 to %struct.flagptr**
  %525 = load %struct.flagptr*, %struct.flagptr** %524, align 8
  %526 = load i8*, i8** %9, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %9, align 8
  %528 = load i8, i8* %526, align 1
  %529 = zext i8 %528 to i64
  %530 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %525, i64 %529
  store %struct.flagptr* %530, %struct.flagptr** %6, align 8
  store i32 0, i32* %8, align 4
  br label %531

531:                                              ; preds = %521, %515
  br label %497, !llvm.loop !9

532:                                              ; preds = %508
  br label %533

533:                                              ; preds = %532, %487
  %534 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %535 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 8
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %533
  %539 = load %struct.flagent*, %struct.flagent** %5, align 8
  %540 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %541 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %540, i32 0, i32 0
  %542 = bitcast %union.ptr_union* %541 to %struct.flagent**
  store %struct.flagent* %539, %struct.flagent** %542, align 8
  br label %543

543:                                              ; preds = %538, %533
  %544 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %545 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 8
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %545, align 8
  %548 = load i32, i32* %8, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %602, label %550

550:                                              ; preds = %543
  %551 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %552 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 8
  %554 = icmp sge i32 %553, 4
  br i1 %554, label %555, label %602

555:                                              ; preds = %550
  %556 = load %struct.flagent*, %struct.flagent** %5, align 8
  %557 = getelementptr inbounds %struct.flagent, %struct.flagent* %556, i32 0, i32 1
  %558 = load i8*, i8** %557, align 8
  %559 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %560 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %559, i32 0, i32 0
  %561 = bitcast %union.ptr_union* %560 to %struct.flagent**
  %562 = load %struct.flagent*, %struct.flagent** %561, align 8
  %563 = getelementptr inbounds %struct.flagent, %struct.flagent* %562, i32 0, i32 1
  %564 = load i8*, i8** %563, align 8
  %565 = call i32 @strcmp(i8* noundef %558, i8* noundef %564) #4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %602

567:                                              ; preds = %555
  %568 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %569 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %568, i32 0, i32 0
  %570 = bitcast %union.ptr_union* %569 to %struct.flagent**
  %571 = load %struct.flagent*, %struct.flagent** %570, align 8
  %572 = getelementptr inbounds %struct.flagent, %struct.flagent* %571, i64 -1
  store %struct.flagent* %572, %struct.flagent** %5, align 8
  %573 = load i32, i32* @numpflags, align 4
  %574 = sext i32 %573 to i64
  %575 = load %struct.flagent*, %struct.flagent** %5, align 8
  %576 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %577 = ptrtoint %struct.flagent* %575 to i64
  %578 = ptrtoint %struct.flagent* %576 to i64
  %579 = sub i64 %577, %578
  %580 = sdiv exact i64 %579, 256
  %581 = sub nsw i64 %574, %580
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %3, align 4
  %583 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %584 = add nsw i32 128, %583
  %585 = sext i32 %584 to i64
  %586 = call noalias i8* @calloc(i64 noundef %585, i64 noundef 16) #5
  %587 = bitcast i8* %586 to %struct.flagptr*
  %588 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %589 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %588, i32 0, i32 0
  %590 = bitcast %union.ptr_union* %589 to %struct.flagptr**
  store %struct.flagptr* %587, %struct.flagptr** %590, align 8
  %591 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %592 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %591, i32 0, i32 0
  %593 = bitcast %union.ptr_union* %592 to %struct.flagptr**
  %594 = load %struct.flagptr*, %struct.flagptr** %593, align 8
  %595 = icmp eq %struct.flagptr* %594, null
  br i1 %595, label %596, label %599

596:                                              ; preds = %567
  %597 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %598 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %597, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

599:                                              ; preds = %567
  %600 = load %struct.flagptr*, %struct.flagptr** %6, align 8
  %601 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %600, i32 0, i32 1
  store i32 0, i32* %601, align 8
  br label %602

602:                                              ; preds = %599, %555, %550, %543
  br label %603

603:                                              ; preds = %602
  %604 = load i32, i32* %3, align 4
  %605 = add nsw i32 %604, -1
  store i32 %605, i32* %3, align 4
  %606 = load %struct.flagent*, %struct.flagent** %5, align 8
  %607 = getelementptr inbounds %struct.flagent, %struct.flagent* %606, i32 1
  store %struct.flagent* %607, %struct.flagent** %5, align 8
  br label %478, !llvm.loop !10

608:                                              ; preds = %478
  %609 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %608
  store %struct.strchartype* null, %struct.strchartype** @chartypes, align 8
  br label %707

612:                                              ; preds = %608
  %613 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %614 = sext i32 %613 to i64
  %615 = mul i64 %614, 24
  %616 = call noalias i8* @malloc(i64 noundef %615) #5
  %617 = bitcast i8* %616 to %struct.strchartype*
  store %struct.strchartype* %617, %struct.strchartype** @chartypes, align 8
  %618 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %619 = icmp eq %struct.strchartype* %618, null
  br i1 %619, label %620, label %623

620:                                              ; preds = %612
  %621 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %622 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %621, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %708

623:                                              ; preds = %612
  store i32 0, i32* %3, align 4
  %624 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 14), align 4
  store i32 %624, i32* %7, align 4
  br label %625

625:                                              ; preds = %703, %623
  %626 = load i32, i32* %3, align 4
  %627 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %628 = icmp slt i32 %626, %627
  br i1 %628, label %629, label %706

629:                                              ; preds = %625
  %630 = load i8*, i8** @hashstrings, align 8
  %631 = load i32, i32* %7, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8, i8* %630, i64 %632
  %634 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %635 = load i32, i32* %3, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %634, i64 %636
  %638 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %637, i32 0, i32 0
  store i8* %633, i8** %638, align 8
  %639 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %640 = load i32, i32* %3, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %639, i64 %641
  %643 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %642, i32 0, i32 0
  %644 = load i8*, i8** %643, align 8
  %645 = call i64 @strlen(i8* noundef %644) #4
  %646 = add i64 %645, 1
  %647 = load i32, i32* %7, align 4
  %648 = sext i32 %647 to i64
  %649 = add i64 %648, %646
  %650 = trunc i64 %649 to i32
  store i32 %650, i32* %7, align 4
  %651 = load i8*, i8** @hashstrings, align 8
  %652 = load i32, i32* %7, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %651, i64 %653
  %655 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %656 = load i32, i32* %3, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %655, i64 %657
  %659 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %658, i32 0, i32 1
  store i8* %654, i8** %659, align 8
  %660 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %661 = load i32, i32* %3, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %660, i64 %662
  %664 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %663, i32 0, i32 1
  %665 = load i8*, i8** %664, align 8
  %666 = call i64 @strlen(i8* noundef %665) #4
  %667 = add i64 %666, 1
  %668 = load i32, i32* %7, align 4
  %669 = sext i32 %668 to i64
  %670 = add i64 %669, %667
  %671 = trunc i64 %670 to i32
  store i32 %671, i32* %7, align 4
  %672 = load i8*, i8** @hashstrings, align 8
  %673 = load i32, i32* %7, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i8, i8* %672, i64 %674
  %676 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %677 = load i32, i32* %3, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %676, i64 %678
  %680 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %679, i32 0, i32 2
  store i8* %675, i8** %680, align 8
  br label %681

681:                                              ; preds = %689, %629
  %682 = load i8*, i8** @hashstrings, align 8
  %683 = load i32, i32* %7, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8, i8* %682, i64 %684
  %686 = load i8, i8* %685, align 1
  %687 = sext i8 %686 to i32
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %700

689:                                              ; preds = %681
  %690 = load i8*, i8** @hashstrings, align 8
  %691 = load i32, i32* %7, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8, i8* %690, i64 %692
  %694 = call i64 @strlen(i8* noundef %693) #4
  %695 = add i64 %694, 1
  %696 = load i32, i32* %7, align 4
  %697 = sext i32 %696 to i64
  %698 = add i64 %697, %695
  %699 = trunc i64 %698 to i32
  store i32 %699, i32* %7, align 4
  br label %681, !llvm.loop !11

700:                                              ; preds = %681
  %701 = load i32, i32* %7, align 4
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %7, align 4
  br label %703

703:                                              ; preds = %700
  %704 = load i32, i32* %3, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %3, align 4
  br label %625, !llvm.loop !12

706:                                              ; preds = %625
  br label %707

707:                                              ; preds = %706, %611
  store i32 1, i32* @inited, align 4
  store i32 0, i32* %1, align 4
  br label %708

708:                                              ; preds = %707, %620, %596, %463, %230, %210, %174, %155, %108, %88, %70, %60, %55, %17, %13
  %709 = load i32, i32* %1, align 4
  ret i32 %709
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dent* @lookup(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.dent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [120 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @hashsize, align 4
  %12 = call i32 @hash(i8* noundef %10, i32 noundef %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dent, %struct.dent* %9, i64 %13
  store %struct.dent* %14, %struct.dent** %6, align 8
  %15 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @ichartostr(i8* noundef %15, i8* noundef %16, i32 noundef 120, i32 noundef 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* noundef %21, i32 noundef 475, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %2
  br label %24

24:                                               ; preds = %64, %23
  %25 = load %struct.dent*, %struct.dent** %6, align 8
  %26 = icmp ne %struct.dent* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load %struct.dent*, %struct.dent** %6, align 8
  %29 = getelementptr inbounds %struct.dent, %struct.dent* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = getelementptr inbounds [120 x i8], [120 x i8]* %8, i64 0, i64 0
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @strcmp(i8* noundef %44, i8* noundef %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load %struct.dent*, %struct.dent** %6, align 8
  store %struct.dent* %50, %struct.dent** %3, align 8
  br label %76

51:                                               ; preds = %42, %33, %27
  br label %52

52:                                               ; preds = %59, %51
  %53 = load %struct.dent*, %struct.dent** %6, align 8
  %54 = getelementptr inbounds %struct.dent, %struct.dent* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x i64], [1 x i64]* %54, i64 0, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, 1073741824
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.dent*, %struct.dent** %6, align 8
  %61 = getelementptr inbounds %struct.dent, %struct.dent* %60, i32 0, i32 0
  %62 = load %struct.dent*, %struct.dent** %61, align 8
  store %struct.dent* %62, %struct.dent** %6, align 8
  br label %52, !llvm.loop !13

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.dent*, %struct.dent** %6, align 8
  %66 = getelementptr inbounds %struct.dent, %struct.dent* %65, i32 0, i32 0
  %67 = load %struct.dent*, %struct.dent** %66, align 8
  store %struct.dent* %67, %struct.dent** %6, align 8
  br label %24, !llvm.loop !14

68:                                               ; preds = %24
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call %struct.dent* @treelookup(i8* noundef %72)
  store %struct.dent* %73, %struct.dent** %6, align 8
  %74 = load %struct.dent*, %struct.dent** %6, align 8
  store %struct.dent* %74, %struct.dent** %3, align 8
  br label %76

75:                                               ; preds = %68
  store %struct.dent* null, %struct.dent** %3, align 8
  br label %76

76:                                               ; preds = %75, %71, %49
  %77 = load %struct.dent*, %struct.dent** %3, align 8
  ret %struct.dent* %77
}

declare dso_local i32 @hash(i8* noundef, i32 noundef) #1

declare dso_local i32 @ichartostr(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.dent* @treelookup(i8* noundef) #1

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
