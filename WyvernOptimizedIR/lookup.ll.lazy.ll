; ModuleID = './lookup.ll'
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
  %1 = load i32, i32* @inited, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %515

3:                                                ; preds = %0
  %4 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), i32 noundef 0) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0)) #6
  br label %515

9:                                                ; preds = %3
  %10 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), i32 noundef 47) #7
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, i8* %10, i64 1
  br label %15

15:                                               ; preds = %13, %12
  %.01 = phi i8* [ getelementptr inbounds ([4096 x i8], [4096 x i8]* @hashname, i64 0, i64 0), %12 ], [ %14, %13 ]
  %16 = call i64 @read(i32 noundef %4, i8* noundef bitcast (%struct.hashheader* @hashheader to i8*), i64 noundef 3928) #5
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @hashsize, align 4
  %18 = trunc i64 %16 to i32
  %19 = icmp ult i32 %18, 3928
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* @hashsize, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %.01) #6
  br label %37

26:                                               ; preds = %20
  %27 = load i32, i32* @hashsize, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef %.01) #6
  br label %36

32:                                               ; preds = %26
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i32, i32* @hashsize, align 4
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* noundef %.01, i32 noundef %34, i32 noundef 3928) #6
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %23
  br label %515

38:                                               ; preds = %15
  %39 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 0), align 4
  %.not27 = icmp eq i16 %39, -27134
  br i1 %.not27, label %45, label %40

40:                                               ; preds = %38
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 0), align 4
  %43 = zext i16 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* noundef %.01, i32 noundef 38402, i32 noundef %43) #6
  br label %515

45:                                               ; preds = %38
  %46 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 31), align 4
  %.not28 = icmp eq i16 %46, -27134
  br i1 %.not28, label %52, label %47

47:                                               ; preds = %45
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 31), align 4
  %50 = zext i16 %49 to i32
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* noundef %.01, i32 noundef 38402, i32 noundef %50) #6
  br label %515

52:                                               ; preds = %45
  %53 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 1), align 2
  %.not29 = icmp eq i16 %53, 3
  br i1 %.not29, label %54, label %58

54:                                               ; preds = %52
  %55 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 2), align 4
  %.not30 = icmp eq i16 %55, 100
  br i1 %.not30, label %56, label %58

56:                                               ; preds = %54
  %57 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 3), align 2
  %.not31 = icmp eq i16 %57, 10
  br i1 %.not31, label %67, label %58

58:                                               ; preds = %56, %54, %52
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 1), align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 2), align 4
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 3), align 2
  %65 = sext i16 %64 to i32
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 3, i32 noundef 100, i32 noundef 10) #6
  br label %515

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @nodictflag, align 4
  %.not32 = icmp eq i32 %71, 0
  br i1 %.not32, label %89, label %72

72:                                               ; preds = %70
  store i32 1, i32* @hashsize, align 4
  %73 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 noundef 1, i64 noundef 24) #5
  store i8* %73, i8** bitcast (%struct.dent** @hashtbl to i8**), align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %76) #8
  br label %515

78:                                               ; preds = %72
  %79 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %80 = getelementptr inbounds %struct.dent, %struct.dent* %79, i64 0, i32 1
  store i8* null, i8** %80, align 8
  %81 = getelementptr inbounds %struct.dent, %struct.dent* %79, i64 0, i32 0
  store %struct.dent* null, %struct.dent** %81, align 8
  %82 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %83 = getelementptr inbounds %struct.dent, %struct.dent* %82, i64 0, i32 2, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, -201326593
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 7), align 4
  %87 = zext i32 %86 to i64
  %88 = call noalias i8* @malloc(i64 noundef %87) #5
  br label %97

89:                                               ; preds = %70
  %90 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 8), align 4
  %91 = zext i32 %90 to i64
  %92 = mul nuw nsw i64 %91, 24
  %93 = call noalias i8* @malloc(i64 noundef %92) #5
  store i8* %93, i8** bitcast (%struct.dent** @hashtbl to i8**), align 8
  store i32 %90, i32* @hashsize, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 6), align 4
  %95 = zext i32 %94 to i64
  %96 = call noalias i8* @malloc(i64 noundef %95) #5
  br label %97

97:                                               ; preds = %89, %78
  %storemerge = phi i8* [ %96, %89 ], [ %88, %78 ]
  store i8* %storemerge, i8** @hashstrings, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 9), align 4
  store i32 %98, i32* @numsflags, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 10), align 4
  store i32 %99, i32* @numpflags, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 8
  %103 = call noalias i8* @malloc(i64 noundef %102) #5
  store i8* %103, i8** bitcast (%struct.flagent** @sflaglist to i8**), align 8
  %104 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %105 = icmp eq %struct.dent* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %97
  %107 = load i8*, i8** @hashstrings, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %111 = icmp eq %struct.flagent* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109, %106, %97
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %113) #8
  br label %515

115:                                              ; preds = %109
  %116 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %117 = load i32, i32* @numsflags, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.flagent, %struct.flagent* %116, i64 %118
  store %struct.flagent* %119, %struct.flagent** @pflaglist, align 8
  %120 = load i32, i32* @nodictflag, align 4
  %.not33 = icmp eq i32 %120, 0
  br i1 %.not33, label %142, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** @hashstrings, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 7), align 4
  %124 = zext i32 %123 to i64
  %125 = call i64 @read(i32 noundef %4, i8* noundef %122, i64 noundef %124) #5
  %126 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 7), align 4
  %127 = sext i32 %126 to i64
  %.not48 = icmp eq i64 %125, %127
  br i1 %.not48, label %131, label %128

128:                                              ; preds = %121
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %130 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %129) #8
  br label %515

131:                                              ; preds = %121
  %132 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 6), align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 7), align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %133, %135
  %137 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 8), align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, 24
  %140 = add nsw i64 %136, %139
  %141 = call i64 @lseek(i32 noundef %4, i64 noundef %140, i32 noundef 1) #5
  br label %162

142:                                              ; preds = %115
  %143 = load i8*, i8** @hashstrings, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 6), align 4
  %145 = zext i32 %144 to i64
  %146 = call i64 @read(i32 noundef %4, i8* noundef %143, i64 noundef %145) #5
  %147 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 6), align 4
  %148 = sext i32 %147 to i64
  %.not34 = icmp eq i64 %146, %148
  br i1 %.not34, label %149, label %158

149:                                              ; preds = %142
  %150 = load i8*, i8** bitcast (%struct.dent** @hashtbl to i8**), align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 8), align 4
  %152 = zext i32 %151 to i64
  %153 = mul nuw nsw i64 %152, 24
  %154 = call i64 @read(i32 noundef %4, i8* noundef %150, i64 noundef %153) #5
  %155 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 8), align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %156, 24
  %.not35 = icmp eq i64 %154, %157
  br i1 %.not35, label %161, label %158

158:                                              ; preds = %149, %142
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %160 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %159) #8
  br label %515

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i8*, i8** bitcast (%struct.flagent** @sflaglist to i8**), align 8
  %164 = load i32, i32* @numsflags, align 4
  %165 = load i32, i32* @numpflags, align 4
  %166 = add nsw i32 %164, %165
  %167 = zext i32 %166 to i64
  %168 = shl nuw nsw i64 %167, 8
  %169 = call i64 @read(i32 noundef %4, i8* noundef %163, i64 noundef %168) #5
  %170 = load i32, i32* @numsflags, align 4
  %171 = load i32, i32* @numpflags, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = shl nsw i64 %173, 8
  %.not36 = icmp eq i64 %169, %174
  br i1 %.not36, label %178, label %175

175:                                              ; preds = %162
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %176) #8
  br label %515

178:                                              ; preds = %162
  %179 = call i32 @close(i32 noundef %4) #5
  %180 = load i32, i32* @nodictflag, align 4
  %.not37 = icmp eq i32 %180, 0
  br i1 %.not37, label %181, label %219

181:                                              ; preds = %178
  %182 = load i32, i32* @hashsize, align 4
  %183 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  br label %184

184:                                              ; preds = %216, %181
  %.03 = phi %struct.dent* [ %183, %181 ], [ %217, %216 ]
  %.02 = phi i32 [ %182, %181 ], [ %185, %216 ]
  %185 = add nsw i32 %.02, -1
  %186 = icmp sgt i32 %.02, 0
  br i1 %186, label %187, label %218

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = icmp eq i8* %189, inttoptr (i64 -1 to i8*)
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 1
  store i8* null, i8** %192, align 8
  br label %201

193:                                              ; preds = %187
  %194 = load i8*, i8** @hashstrings, align 8
  %195 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = ptrtoint i8* %196 to i64
  %sext46 = shl i64 %197, 32
  %198 = ashr exact i64 %sext46, 32
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 1
  store i8* %199, i8** %200, align 8
  br label %201

201:                                              ; preds = %193, %191
  %202 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 0
  %203 = load %struct.dent*, %struct.dent** %202, align 8
  %204 = icmp eq %struct.dent* %203, inttoptr (i64 -1 to %struct.dent*)
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 0
  store %struct.dent* null, %struct.dent** %206, align 8
  br label %215

207:                                              ; preds = %201
  %208 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %209 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 0
  %210 = load %struct.dent*, %struct.dent** %209, align 8
  %211 = ptrtoint %struct.dent* %210 to i64
  %sext47 = shl i64 %211, 32
  %212 = ashr exact i64 %sext47, 32
  %213 = getelementptr inbounds %struct.dent, %struct.dent* %208, i64 %212
  %214 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 0, i32 0
  store %struct.dent* %213, %struct.dent** %214, align 8
  br label %215

215:                                              ; preds = %207, %205
  br label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds %struct.dent, %struct.dent* %.03, i64 1
  br label %184, !llvm.loop !4

218:                                              ; preds = %184
  br label %219

219:                                              ; preds = %218, %178
  %220 = load i32, i32* @numsflags, align 4
  %221 = load i32, i32* @numpflags, align 4
  %222 = add nsw i32 %220, %221
  %223 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  br label %224

224:                                              ; preds = %254, %219
  %.04 = phi %struct.flagent* [ %223, %219 ], [ %255, %254 ]
  %.1 = phi i32 [ %222, %219 ], [ %225, %254 ]
  %225 = add nsw i32 %.1, -1
  %226 = icmp sgt i32 %.1, 0
  br i1 %226, label %227, label %256

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 3
  %229 = load i16, i16* %228, align 2
  %.not43 = icmp eq i16 %229, 0
  br i1 %.not43, label %238, label %230

230:                                              ; preds = %227
  %231 = load i8*, i8** @hashstrings, align 8
  %232 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = ptrtoint i8* %233 to i64
  %sext45 = shl i64 %234, 32
  %235 = ashr exact i64 %sext45, 32
  %236 = getelementptr inbounds i8, i8* %231, i64 %235
  %237 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 0
  store i8* %236, i8** %237, align 8
  br label %240

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 0
  store i8* null, i8** %239, align 8
  br label %240

240:                                              ; preds = %238, %230
  %241 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 4
  %242 = load i16, i16* %241, align 4
  %.not44 = icmp eq i16 %242, 0
  br i1 %.not44, label %251, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** @hashstrings, align 8
  %245 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = ptrtoint i8* %246 to i64
  %sext = shl i64 %247, 32
  %248 = ashr exact i64 %sext, 32
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  %250 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 1
  store i8* %249, i8** %250, align 8
  br label %253

251:                                              ; preds = %240
  %252 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 0, i32 1
  store i8* null, i8** %252, align 8
  br label %253

253:                                              ; preds = %251, %243
  br label %254

254:                                              ; preds = %253
  %255 = getelementptr inbounds %struct.flagent, %struct.flagent* %.04, i64 1
  br label %224, !llvm.loop !6

256:                                              ; preds = %224
  %257 = load i32, i32* @numsflags, align 4
  %258 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  br label %259

259:                                              ; preds = %349, %256
  %.15 = phi %struct.flagent* [ %258, %256 ], [ %351, %349 ]
  %.2 = phi i32 [ %257, %256 ], [ %350, %349 ]
  %260 = icmp sgt i32 %.2, 0
  br i1 %260, label %261, label %352

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.flagent, %struct.flagent* %.15, i64 0, i32 4
  %263 = load i16, i16* %262, align 4
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %303

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.flagent, %struct.flagent* %.15, i64 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds %struct.flagent, %struct.flagent* %.15, i64 0, i32 4
  %270 = load i16, i16* %269, align 4
  %271 = sext i16 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 -1
  %273 = getelementptr inbounds i8, i8* %272, i64 %271
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 %275
  br label %277

277:                                              ; preds = %301, %266
  %.023 = phi i8* [ %273, %266 ], [ %.124, %301 ]
  %.017 = phi i32 [ 0, %266 ], [ %.118, %301 ]
  %.09 = phi %struct.flagptr* [ %276, %266 ], [ %.110, %301 ]
  %278 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.09, i64 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.09, i64 0, i32 0, i32 0
  %283 = load %struct.flagptr*, %struct.flagptr** %282, align 8
  %284 = icmp ne %struct.flagptr* %283, null
  br label %285

285:                                              ; preds = %281, %277
  %286 = phi i1 [ false, %277 ], [ %284, %281 ]
  br i1 %286, label %287, label %302

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.flagent, %struct.flagent* %.15, i64 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = icmp eq i8* %.023, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.09, i64 0, i32 0, i32 0
  %293 = load %struct.flagptr*, %struct.flagptr** %292, align 8
  br label %301

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.09, i64 0, i32 0, i32 0
  %296 = load %struct.flagptr*, %struct.flagptr** %295, align 8
  %297 = getelementptr inbounds i8, i8* %.023, i64 -1
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %296, i64 %299
  br label %301

301:                                              ; preds = %294, %291
  %.124 = phi i8* [ %.023, %291 ], [ %297, %294 ]
  %.118 = phi i32 [ 1, %291 ], [ 0, %294 ]
  %.110 = phi %struct.flagptr* [ %293, %291 ], [ %300, %294 ]
  br label %277, !llvm.loop !7

302:                                              ; preds = %285
  br label %303

303:                                              ; preds = %302, %265
  %.219 = phi i32 [ 1, %265 ], [ %.017, %302 ]
  %.211 = phi %struct.flagptr* [ getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i64 0, i64 0), %265 ], [ %.09, %302 ]
  %304 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.211, i64 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = bitcast %struct.flagptr* %.211 to %struct.flagent**
  store %struct.flagent* %.15, %struct.flagent** %308, align 8
  br label %309

309:                                              ; preds = %307, %303
  %310 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.211, i64 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 8
  %.not41 = icmp eq i32 %.219, 0
  br i1 %.not41, label %313, label %348

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.211, i64 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 3
  br i1 %316, label %317, label %348

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.flagent, %struct.flagent* %.15, i64 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = bitcast %struct.flagptr* %.211 to %struct.flagent**
  %321 = load %struct.flagent*, %struct.flagent** %320, align 8
  %322 = getelementptr inbounds %struct.flagent, %struct.flagent* %321, i64 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %319, i8* noundef nonnull dereferenceable(1) %323) #7
  %.not42 = icmp eq i32 %324, 0
  br i1 %.not42, label %348, label %325

325:                                              ; preds = %317
  %326 = bitcast %struct.flagptr* %.211 to %struct.flagent**
  %327 = load %struct.flagent*, %struct.flagent** %326, align 8
  %328 = getelementptr inbounds %struct.flagent, %struct.flagent* %327, i64 -1
  %329 = load i32, i32* @numsflags, align 4
  %330 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %331 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 12), align 4
  %332 = add nsw i32 %331, 128
  %333 = zext i32 %332 to i64
  %334 = call noalias i8* @calloc(i64 noundef %333, i64 noundef 16) #5
  %335 = bitcast %struct.flagptr* %.211 to i8**
  store i8* %334, i8** %335, align 8
  %336 = icmp eq i8* %334, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %325
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %339 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %338) #8
  br label %515

340:                                              ; preds = %325
  %341 = ptrtoint %struct.flagent* %328 to i64
  %342 = ptrtoint %struct.flagent* %330 to i64
  %343 = sub i64 %341, %342
  %344 = lshr exact i64 %343, 8
  %345 = trunc i64 %344 to i32
  %346 = sub i32 %329, %345
  %347 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.211, i64 0, i32 1
  store i32 0, i32* %347, align 8
  br label %348

348:                                              ; preds = %340, %317, %313, %309
  %.26 = phi %struct.flagent* [ %.15, %309 ], [ %328, %340 ], [ %.15, %317 ], [ %.15, %313 ]
  %.3 = phi i32 [ %.2, %309 ], [ %346, %340 ], [ %.2, %317 ], [ %.2, %313 ]
  br label %349

349:                                              ; preds = %348
  %350 = add nsw i32 %.3, -1
  %351 = getelementptr inbounds %struct.flagent, %struct.flagent* %.26, i64 1
  br label %259, !llvm.loop !8

352:                                              ; preds = %259
  %353 = load i32, i32* @numpflags, align 4
  %354 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  br label %355

355:                                              ; preds = %440, %352
  %.37 = phi %struct.flagent* [ %354, %352 ], [ %442, %440 ]
  %.4 = phi i32 [ %353, %352 ], [ %441, %440 ]
  %356 = icmp sgt i32 %.4, 0
  br i1 %356, label %357, label %443

357:                                              ; preds = %355
  %358 = getelementptr inbounds %struct.flagent, %struct.flagent* %.37, i64 0, i32 4
  %359 = load i16, i16* %358, align 4
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  br label %394

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.flagent, %struct.flagent* %.37, i64 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  %366 = load i8, i8* %364, align 1
  %367 = zext i8 %366 to i64
  %368 = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 %367
  br label %369

369:                                              ; preds = %392, %362
  %.225 = phi i8* [ %365, %362 ], [ %.326, %392 ]
  %.320 = phi i32 [ 0, %362 ], [ %.421, %392 ]
  %.312 = phi %struct.flagptr* [ %368, %362 ], [ %.413, %392 ]
  %370 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.312, i64 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.312, i64 0, i32 0, i32 0
  %375 = load %struct.flagptr*, %struct.flagptr** %374, align 8
  %376 = icmp ne %struct.flagptr* %375, null
  br label %377

377:                                              ; preds = %373, %369
  %378 = phi i1 [ false, %369 ], [ %376, %373 ]
  br i1 %378, label %379, label %393

379:                                              ; preds = %377
  %380 = load i8, i8* %.225, align 1
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.312, i64 0, i32 0, i32 0
  %384 = load %struct.flagptr*, %struct.flagptr** %383, align 8
  br label %392

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.312, i64 0, i32 0, i32 0
  %387 = load %struct.flagptr*, %struct.flagptr** %386, align 8
  %388 = getelementptr inbounds i8, i8* %.225, i64 1
  %389 = load i8, i8* %.225, align 1
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %387, i64 %390
  br label %392

392:                                              ; preds = %385, %382
  %.326 = phi i8* [ %.225, %382 ], [ %388, %385 ]
  %.421 = phi i32 [ 1, %382 ], [ 0, %385 ]
  %.413 = phi %struct.flagptr* [ %384, %382 ], [ %391, %385 ]
  br label %369, !llvm.loop !9

393:                                              ; preds = %377
  br label %394

394:                                              ; preds = %393, %361
  %.522 = phi i32 [ 1, %361 ], [ %.320, %393 ]
  %.514 = phi %struct.flagptr* [ getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i64 0, i64 0), %361 ], [ %.312, %393 ]
  %395 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.514, i64 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = bitcast %struct.flagptr* %.514 to %struct.flagent**
  store %struct.flagent* %.37, %struct.flagent** %399, align 8
  br label %400

400:                                              ; preds = %398, %394
  %401 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.514, i64 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 8
  %.not39 = icmp eq i32 %.522, 0
  br i1 %.not39, label %404, label %439

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.514, i64 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = icmp sgt i32 %406, 3
  br i1 %407, label %408, label %439

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.flagent, %struct.flagent* %.37, i64 0, i32 1
  %410 = load i8*, i8** %409, align 8
  %411 = bitcast %struct.flagptr* %.514 to %struct.flagent**
  %412 = load %struct.flagent*, %struct.flagent** %411, align 8
  %413 = getelementptr inbounds %struct.flagent, %struct.flagent* %412, i64 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %410, i8* noundef nonnull dereferenceable(1) %414) #7
  %.not40 = icmp eq i32 %415, 0
  br i1 %.not40, label %439, label %416

416:                                              ; preds = %408
  %417 = bitcast %struct.flagptr* %.514 to %struct.flagent**
  %418 = load %struct.flagent*, %struct.flagent** %417, align 8
  %419 = getelementptr inbounds %struct.flagent, %struct.flagent* %418, i64 -1
  %420 = load i32, i32* @numpflags, align 4
  %421 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %422 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 12), align 4
  %423 = add nsw i32 %422, 128
  %424 = sext i32 %423 to i64
  %425 = call noalias i8* @calloc(i64 noundef %424, i64 noundef 16) #5
  %426 = bitcast %struct.flagptr* %.514 to i8**
  store i8* %425, i8** %426, align 8
  %427 = icmp eq i8* %425, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %416
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %430 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %429) #8
  br label %515

431:                                              ; preds = %416
  %432 = ptrtoint %struct.flagent* %419 to i64
  %433 = ptrtoint %struct.flagent* %421 to i64
  %434 = sub i64 %432, %433
  %435 = lshr exact i64 %434, 8
  %436 = trunc i64 %435 to i32
  %437 = sub i32 %420, %436
  %438 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %.514, i64 0, i32 1
  store i32 0, i32* %438, align 8
  br label %439

439:                                              ; preds = %431, %408, %404, %400
  %.48 = phi %struct.flagent* [ %.37, %400 ], [ %419, %431 ], [ %.37, %408 ], [ %.37, %404 ]
  %.5 = phi i32 [ %.4, %400 ], [ %437, %431 ], [ %.4, %408 ], [ %.4, %404 ]
  br label %440

440:                                              ; preds = %439
  %441 = add nsw i32 %.5, -1
  %442 = getelementptr inbounds %struct.flagent, %struct.flagent* %.48, i64 1
  br label %355, !llvm.loop !10

443:                                              ; preds = %355
  %444 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 13), align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  store %struct.strchartype* null, %struct.strchartype** @chartypes, align 8
  br label %514

447:                                              ; preds = %443
  %448 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 13), align 4
  %449 = sext i32 %448 to i64
  %450 = mul nsw i64 %449, 24
  %451 = call noalias i8* @malloc(i64 noundef %450) #5
  store i8* %451, i8** bitcast (%struct.strchartype** @chartypes to i8**), align 8
  %452 = icmp eq i8* %451, null
  br i1 %452, label %453, label %456

453:                                              ; preds = %447
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %455 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %454) #8
  br label %515

456:                                              ; preds = %447
  %457 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 14), align 4
  br label %458

458:                                              ; preds = %510, %456
  %.015 = phi i32 [ %457, %456 ], [ %511, %510 ]
  %.6 = phi i32 [ 0, %456 ], [ %512, %510 ]
  %459 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 13), align 4
  %460 = icmp slt i32 %.6, %459
  br i1 %460, label %461, label %513

461:                                              ; preds = %458
  %462 = load i8*, i8** @hashstrings, align 8
  %463 = sext i32 %.015 to i64
  %464 = getelementptr inbounds i8, i8* %462, i64 %463
  %465 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %466 = zext i32 %.6 to i64
  %467 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %465, i64 %466, i32 0
  store i8* %464, i8** %467, align 8
  %468 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %469 = zext i32 %.6 to i64
  %470 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %468, i64 %469, i32 0
  %471 = load i8*, i8** %470, align 8
  %472 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %471) #7
  %473 = trunc i64 %472 to i32
  %474 = add i32 %473, 1
  %475 = add i32 %474, %.015
  %476 = load i8*, i8** @hashstrings, align 8
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i8, i8* %476, i64 %477
  %479 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %480 = zext i32 %.6 to i64
  %481 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %479, i64 %480, i32 1
  store i8* %478, i8** %481, align 8
  %482 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %483 = zext i32 %.6 to i64
  %484 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %482, i64 %483, i32 1
  %485 = load i8*, i8** %484, align 8
  %486 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %485) #7
  %487 = trunc i64 %486 to i32
  %488 = add i32 %487, 1
  %489 = add i32 %488, %475
  %490 = load i8*, i8** @hashstrings, align 8
  %491 = sext i32 %489 to i64
  %492 = getelementptr inbounds i8, i8* %490, i64 %491
  %493 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %494 = zext i32 %.6 to i64
  %495 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %493, i64 %494, i32 2
  store i8* %492, i8** %495, align 8
  br label %496

496:                                              ; preds = %501, %461
  %.116 = phi i32 [ %489, %461 ], [ %508, %501 ]
  %497 = load i8*, i8** @hashstrings, align 8
  %498 = sext i32 %.116 to i64
  %499 = getelementptr inbounds i8, i8* %497, i64 %498
  %500 = load i8, i8* %499, align 1
  %.not38 = icmp eq i8 %500, 0
  br i1 %.not38, label %509, label %501

501:                                              ; preds = %496
  %502 = load i8*, i8** @hashstrings, align 8
  %503 = sext i32 %.116 to i64
  %504 = getelementptr inbounds i8, i8* %502, i64 %503
  %505 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %504) #7
  %506 = trunc i64 %505 to i32
  %507 = add i32 %506, 1
  %508 = add i32 %507, %.116
  br label %496, !llvm.loop !11

509:                                              ; preds = %496
  br label %510

510:                                              ; preds = %509
  %511 = add nsw i32 %.116, 1
  %512 = add nuw nsw i32 %.6, 1
  br label %458, !llvm.loop !12

513:                                              ; preds = %458
  br label %514

514:                                              ; preds = %513, %446
  store i32 1, i32* @inited, align 4
  br label %515

515:                                              ; preds = %514, %453, %428, %337, %175, %158, %128, %112, %75, %58, %47, %40, %37, %6, %2
  %.0 = phi i32 [ 0, %2 ], [ -1, %6 ], [ -1, %37 ], [ -1, %40 ], [ -1, %47 ], [ -1, %58 ], [ -1, %75 ], [ -1, %112 ], [ -1, %128 ], [ -1, %175 ], [ -1, %337 ], [ -1, %428 ], [ 0, %514 ], [ -1, %453 ], [ -1, %158 ]
  ret i32 %.0
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dent* @lookup(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [120 x i8], align 16
  %4 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %5 = load i32, i32* @hashsize, align 4
  %6 = call i32 @hash(i8* noundef %0, i32 noundef %5) #5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dent, %struct.dent* %4, i64 %7
  %9 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 0
  %10 = call i32 @ichartostr(i8* noundef nonnull %9, i8* noundef %0, i32 noundef 120, i32 noundef 1) #5
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 0
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %13, i32 noundef 475, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0)) #6
  br label %15

15:                                               ; preds = %11, %2
  br label %16

16:                                               ; preds = %40, %15
  %.01 = phi %struct.dent* [ %8, %15 ], [ %42, %40 ]
  %.not3 = icmp eq %struct.dent* %.01, null
  br i1 %.not3, label %43, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %.not5 = icmp eq i8* %19, null
  br i1 %.not5, label %31, label %20

20:                                               ; preds = %17
  %21 = load i8, i8* %19, align 1
  %22 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = icmp eq i8 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %19, i64 1
  %27 = getelementptr inbounds [120 x i8], [120 x i8]* %3, i64 0, i64 1
  %28 = call i32 @strcmp(i8* noundef nonnull %26, i8* noundef nonnull %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %47

31:                                               ; preds = %25, %20, %17
  br label %32

32:                                               ; preds = %36, %31
  %.1 = phi %struct.dent* [ %.01, %31 ], [ %38, %36 ]
  %33 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 2, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, 1073741824
  %.not6 = icmp eq i64 %35, 0
  br i1 %.not6, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 0
  %38 = load %struct.dent*, %struct.dent** %37, align 8
  br label %32, !llvm.loop !13

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 0
  %42 = load %struct.dent*, %struct.dent** %41, align 8
  br label %16, !llvm.loop !14

43:                                               ; preds = %16
  %.not4 = icmp eq i32 %1, 0
  br i1 %.not4, label %46, label %44

44:                                               ; preds = %43
  %45 = call %struct.dent* @treelookup(i8* noundef %0) #5
  br label %47

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %44, %30
  %.0 = phi %struct.dent* [ %.01, %30 ], [ %45, %44 ], [ null, %46 ]
  ret %struct.dent* %.0
}

declare dso_local i32 @hash(i8* noundef, i32 noundef) #1

declare dso_local i32 @ichartostr(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.dent* @treelookup(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { cold }

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
