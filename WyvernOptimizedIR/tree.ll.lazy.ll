; ModuleID = './tree.ll'
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
  %3 = alloca [4096 x i8], align 16
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #8
  br label %7

7:                                                ; preds = %5, %2
  %.0 = phi i8* [ %6, %5 ], [ %0, %2 ]
  %8 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %123

11:                                               ; preds = %7
  %12 = icmp eq i8* %.0, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %11
  %14 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1)
  store %struct._IO_FILE* %14, %struct._IO_FILE** @dictf, align 8
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %16 = call %struct._IO_FILE* @trydict(i8* noundef nonnull %15, i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = icmp eq %struct._IO_FILE* %16, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** @dictf, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %24 = call %struct._IO_FILE* @trydict(i8* noundef nonnull %23, i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %19, %13
  %.01 = phi %struct._IO_FILE* [ %24, %21 ], [ %16, %19 ], [ %16, %13 ]
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = icmp eq %struct._IO_FILE* %.01, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1)
  store %struct._IO_FILE* %31, %struct._IO_FILE** @dictf, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %33 = call %struct._IO_FILE* @trydict(i8* noundef nonnull %32, i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1)
  br label %34

34:                                               ; preds = %30, %28, %25
  %.1 = phi %struct._IO_FILE* [ %33, %30 ], [ %.01, %28 ], [ %.01, %25 ]
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %36 = icmp eq %struct._IO_FILE* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = icmp eq %struct._IO_FILE* %.1, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = call %struct._IO_FILE* @trydict(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %40, %struct._IO_FILE** @dictf, align 8
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %42 = call %struct._IO_FILE* @trydict(i8* noundef nonnull %41, i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %37, %34
  %.2 = phi %struct._IO_FILE* [ %42, %39 ], [ %.1, %37 ], [ %.1, %34 ]
  %44 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), align 16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %.not11 = icmp eq i8 %48, 0
  br i1 %.not11, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %51 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef nonnull %50) #8
  br label %54

52:                                               ; preds = %46
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #8
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %.not9 = icmp eq %struct._IO_FILE* %56, null
  br i1 %.not9, label %61, label %57

57:                                               ; preds = %55
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %60 = call i32 @fclose(%struct._IO_FILE* noundef %59) #8
  br label %61

61:                                               ; preds = %57, %55
  %.not10 = icmp eq %struct._IO_FILE* %.2, null
  br i1 %.not10, label %64, label %62

62:                                               ; preds = %61
  call void @treeload(%struct._IO_FILE* noundef nonnull %.2)
  %63 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.2) #8
  br label %64

64:                                               ; preds = %62, %61
  br label %109

65:                                               ; preds = %11
  %66 = load i8, i8* %.0, align 1
  %67 = icmp eq i8 %66, 47
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = call i32 @strncmp(i8* noundef nonnull %.0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 noundef 2) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call i32 @strncmp(i8* noundef nonnull %.0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 3) #9
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %68, %65
  %75 = phi i1 [ false, %68 ], [ false, %65 ], [ %73, %71 ]
  br i1 %75, label %84, label %76

76:                                               ; preds = %74
  %77 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef nonnull %.0) #8
  %78 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  store %struct._IO_FILE* %78, %struct._IO_FILE** @dictf, align 8
  %.not8 = icmp eq %struct._IO_FILE* %78, null
  br i1 %.not8, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %82 = call i32 @fclose(%struct._IO_FILE* noundef %81) #8
  br label %83

83:                                               ; preds = %79, %76
  br label %108

84:                                               ; preds = %74
  %85 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef nonnull %.0) #8
  %86 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  store %struct._IO_FILE* %86, %struct._IO_FILE** @dictf, align 8
  %.not2 = icmp eq %struct._IO_FILE* %86, null
  br i1 %.not2, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %88)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %90 = call i32 @fclose(%struct._IO_FILE* noundef %89) #8
  br label %101

91:                                               ; preds = %84
  br i1 %75, label %92, label %100

92:                                               ; preds = %91
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %8, i8* noundef nonnull %.0) #8
  %94 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  store %struct._IO_FILE* %94, %struct._IO_FILE** @dictf, align 8
  %.not4 = icmp eq %struct._IO_FILE* %94, null
  br i1 %.not4, label %99, label %95

95:                                               ; preds = %92
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* noundef %96)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* noundef %97) #8
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %91
  br label %101

101:                                              ; preds = %100, %87
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %103 = icmp eq %struct._IO_FILE* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %.0) #10
  call void @perror(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10
  br label %123

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %64
  %110 = load i32, i32* @lflag, align 4
  %.not5 = icmp eq i32 %110, 0
  br i1 %.not5, label %111, label %123

111:                                              ; preds = %109
  %112 = load i32, i32* @aflag, align 4
  %.not6 = icmp eq i32 %112, 0
  br i1 %.not6, label %113, label %123

113:                                              ; preds = %111
  %114 = call i32 @access(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i32 noundef 2) #8
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = call i32* @__errno_location() #11
  %118 = load i32, i32* %117, align 4
  %.not7 = icmp eq i32 %118, 2
  br i1 %.not7, label %123, label %119

119:                                              ; preds = %116
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0)) #10
  %122 = call i32 @sleep(i32 noundef 2) #8
  br label %123

123:                                              ; preds = %119, %116, %113, %111, %109, %104, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct._IO_FILE* @trydict(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #8
  br label %10

8:                                                ; preds = %4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #8
  br label %10

10:                                               ; preds = %8, %6
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8 0, i8* %0, align 1
  br label %14

14:                                               ; preds = %13, %10
  ret %struct._IO_FILE* %11
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @treeload(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [8192 x i8], align 16
  br label %3

3:                                                ; preds = %6, %1
  %4 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i64 0, i64 0
  %5 = call i8* @fgets(i8* noundef nonnull %4, i32 noundef 8192, %struct._IO_FILE* noundef %0) #8
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i64 0, i64 0
  call void @treeinsert(i8* noundef nonnull %7, i32 noundef 8192, i32 noundef 1)
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  store i32 0, i32* @newwords, align 4
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @access(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i32 @sleep(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @treeinsert(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dent, align 8
  %5 = alloca [120 x i8], align 16
  %6 = load i32, i32* @cantexpand, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %91

7:                                                ; preds = %3
  %8 = load i32, i32* @hcount, align 4
  %9 = mul nsw i32 %8, 100
  %10 = sdiv i32 %9, 70
  %11 = load i32, i32* @pershsize, align 4
  %.not9 = icmp slt i32 %10, %11
  br i1 %.not9, label %91, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @pershsize, align 4
  %14 = load %struct.dent*, %struct.dent** @pershtab, align 8
  br label %15

15:                                               ; preds = %25, %12
  %.03 = phi i32 [ 0, %12 ], [ %26, %25 ]
  %16 = icmp ult i32 %.03, 4
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = zext i32 %.03 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @pershsize, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.03, 1
  br label %15, !llvm.loop !6

.loopexit:                                        ; preds = %15
  br label %27

27:                                               ; preds = %.loopexit, %23
  %28 = icmp ugt i32 %.03, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* @pershsize, align 4
  %reass.add = shl i32 %30, 1
  %31 = or i32 %reass.add, 1
  br label %36

32:                                               ; preds = %27
  %33 = zext i32 %.03 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* @goodsizes, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %29
  %storemerge = phi i32 [ %35, %32 ], [ %31, %29 ]
  store i32 %storemerge, i32* @pershsize, align 4
  %37 = zext i32 %storemerge to i64
  %38 = call noalias i8* @calloc(i64 noundef %37, i64 noundef 24) #8
  store i8* %38, i8** bitcast (%struct.dent** @pershtab to i8**), align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %41) #12
  %43 = icmp eq %struct.dent* %14, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @exit(i32 noundef 1) #13
  unreachable

45:                                               ; preds = %40
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %46) #12
  store i32 1, i32* @cantexpand, align 4
  store i32 %13, i32* @pershsize, align 4
  store %struct.dent* %14, %struct.dent** @pershtab, align 8
  store i32 1, i32* @newwords, align 4
  br label %90

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %84, %48
  %.14 = phi i32 [ 0, %48 ], [ %85, %84 ]
  %50 = icmp slt i32 %.14, %13
  br i1 %50, label %51, label %86

51:                                               ; preds = %49
  %52 = zext i32 %.14 to i64
  %53 = getelementptr inbounds %struct.dent, %struct.dent* %14, i64 %52
  %54 = getelementptr inbounds %struct.dent, %struct.dent* %14, i64 %52, i32 2, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, 67108864
  %.not13 = icmp eq i64 %56, 0
  br i1 %.not13, label %83, label %57

57:                                               ; preds = %51
  %58 = call %struct.dent* @tinsert(%struct.dent* noundef %53)
  %59 = getelementptr inbounds %struct.dent, %struct.dent* %14, i64 %52, i32 2, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.dent, %struct.dent* %53, i64 0, i32 0
  %62 = load %struct.dent*, %struct.dent** %61, align 8
  br label %63

63:                                               ; preds = %81, %57
  %.05 = phi %struct.dent* [ %62, %57 ], [ %.16, %81 ]
  %.01 = phi %struct.dent* [ %58, %57 ], [ %.12, %81 ]
  %.0.in.in = phi i64 [ %60, %57 ], [ %.1.in.in, %81 ]
  %.not14 = icmp eq %struct.dent* %.05, null
  br i1 %.not14, label %82, label %64

64:                                               ; preds = %63
  %.016 = and i64 %.0.in.in, 1073741824
  %.not15 = icmp eq i64 %.016, 0
  br i1 %.not15, label %74, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.dent, %struct.dent* %.05, i64 0, i32 2, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 0
  %69 = load %struct.dent*, %struct.dent** %68, align 8
  %70 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 0
  store %struct.dent* %.05, %struct.dent** %70, align 8
  %71 = getelementptr inbounds %struct.dent, %struct.dent* %.05, i64 0, i32 0
  %72 = load %struct.dent*, %struct.dent** %71, align 8
  %73 = getelementptr inbounds %struct.dent, %struct.dent* %.05, i64 0, i32 0
  store %struct.dent* %69, %struct.dent** %73, align 8
  br label %81

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.dent, %struct.dent* %.05, i64 0, i32 2, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.dent* @tinsert(%struct.dent* noundef nonnull %.05)
  %78 = getelementptr inbounds %struct.dent, %struct.dent* %.05, i64 0, i32 0
  %79 = load %struct.dent*, %struct.dent** %78, align 8
  %80 = bitcast %struct.dent* %.05 to i8*
  call void @free(i8* noundef %80) #8
  br label %81

81:                                               ; preds = %74, %65
  %.16 = phi %struct.dent* [ %72, %65 ], [ %79, %74 ]
  %.12 = phi %struct.dent* [ %.05, %65 ], [ %77, %74 ]
  %.1.in.in = phi i64 [ %67, %65 ], [ %76, %74 ]
  br label %63, !llvm.loop !7

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83
  %85 = add nuw nsw i32 %.14, 1
  br label %49, !llvm.loop !8

86:                                               ; preds = %49
  %.not12 = icmp eq %struct.dent* %14, null
  br i1 %.not12, label %89, label %87

87:                                               ; preds = %86
  %88 = bitcast %struct.dent* %14 to i8*
  call void @free(i8* noundef %88) #8
  br label %89

89:                                               ; preds = %87, %86
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %7, %3
  %92 = call i32 @makedent(i8* noundef %0, i32 noundef %1, %struct.dent* noundef nonnull %4) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %125

95:                                               ; preds = %91
  %.not10 = icmp eq i32 %2, 0
  br i1 %.not10, label %100, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.dent, %struct.dent* %4, i64 0, i32 2, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, 134217728
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %96, %95
  %101 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  %102 = call i32 @strtoichar(i8* noundef nonnull %101, i8* noundef %0, i32 noundef 120, i32 noundef 1) #8
  %103 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  call void @upcase(i8* noundef nonnull %103) #8
  %104 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  %105 = call %struct.dent* @lookup(i8* noundef nonnull %104, i32 noundef 1) #8
  %.not11 = icmp eq %struct.dent* %105, null
  br i1 %.not11, label %113, label %106

106:                                              ; preds = %100
  %107 = call i32 @combinecaps(%struct.dent* noundef nonnull %105, %struct.dent* noundef nonnull %4) #8
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.dent, %struct.dent* %4, i64 0, i32 1
  %111 = load i8*, i8** %110, align 8
  call void @free(i8* noundef %111) #8
  br label %125

112:                                              ; preds = %106
  br label %122

113:                                              ; preds = %100
  %114 = call %struct.dent* @tinsert(%struct.dent* noundef nonnull %4)
  %115 = getelementptr inbounds %struct.dent, %struct.dent* %114, i64 0, i32 2, i64 0
  %116 = load i64, i64* %115, align 8
  %117 = and i64 %116, 805306368
  %118 = icmp eq i64 %117, 805306368
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @addvheader(%struct.dent* noundef %114) #8
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %112
  %123 = load i32, i32* @newwords, align 4
  %124 = or i32 %123, %2
  store i32 %124, i32* @newwords, align 4
  br label %125

125:                                              ; preds = %122, %109, %94
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal %struct.dent* @tinsert(%struct.dent* nocapture noundef readonly %0) #0 {
  %2 = alloca [120 x i8], align 16
  %3 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strtoichar(i8* noundef nonnull %3, i8* noundef %5, i32 noundef 120, i32 noundef 1) #8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8* noundef %10, i32 noundef 449, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i64 0, i64 0)) #10
  br label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %14 = load i32, i32* @pershsize, align 4
  %15 = call i32 @hash(i8* noundef nonnull %13, i32 noundef %14) #8
  %16 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.dent, %struct.dent* %16, i64 %17
  %19 = getelementptr inbounds %struct.dent, %struct.dent* %16, i64 %17, i32 2, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, 67108864
  %.not3 = icmp eq i64 %21, 0
  br i1 %.not3, label %35, label %22

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %24, %22
  %.01 = phi %struct.dent* [ %18, %22 ], [ %26, %24 ]
  %.0 = phi %struct.dent* [ null, %22 ], [ %.01, %24 ]
  %.not5 = icmp eq %struct.dent* %.01, null
  br i1 %.not5, label %27, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 0
  %26 = load %struct.dent*, %struct.dent** %25, align 8
  br label %23, !llvm.loop !9

27:                                               ; preds = %23
  %28 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 noundef 1, i64 noundef 24) #8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %31) #12
  call void @exit(i32 noundef 1) #13
  unreachable

33:                                               ; preds = %27
  %34 = bitcast i8* %28 to %struct.dent*
  br label %35

35:                                               ; preds = %33, %12
  %.12 = phi %struct.dent* [ %34, %33 ], [ %18, %12 ]
  %.1 = phi %struct.dent* [ %.0, %33 ], [ null, %12 ]
  %36 = bitcast %struct.dent* %.12 to i8*
  %37 = bitcast %struct.dent* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %36, i8* noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false)
  %.not4 = icmp eq %struct.dent* %.1, null
  br i1 %.not4, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 0
  store %struct.dent* %.12, %struct.dent** %39, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.dent, %struct.dent* %.12, i64 0, i32 0
  store %struct.dent* null, %struct.dent** %41, align 8
  ret %struct.dent* %.12
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
  %2 = alloca [120 x i8], align 16
  %3 = load i32, i32* @pershsize, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %8 = call i32 @ichartostr(i8* noundef nonnull %7, i8* noundef %0, i32 noundef 120, i32 noundef 1) #8
  %9 = load i32, i32* @pershsize, align 4
  %10 = call i32 @hash(i8* noundef %0, i32 noundef %9) #8
  %11 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %struct.dent, %struct.dent* %11, i64 %12
  br label %14

14:                                               ; preds = %37, %6
  %.01 = phi %struct.dent* [ %13, %6 ], [ %39, %37 ]
  %.not = icmp eq %struct.dent* %.01, null
  br i1 %.not, label %20, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 2, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 67108864
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i1 [ false, %14 ], [ %19, %15 ]
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = getelementptr inbounds [120 x i8], [120 x i8]* %2, i64 0, i64 0
  %24 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* noundef nonnull %23, i8* noundef nonnull dereferenceable(1) %25) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %40

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %34, %29
  %.1 = phi %struct.dent* [ %.01, %29 ], [ %36, %34 ]
  %31 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 2, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, 1073741824
  %.not6 = icmp eq i64 %33, 0
  br i1 %.not6, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 0
  %36 = load %struct.dent*, %struct.dent** %35, align 8
  br label %30, !llvm.loop !10

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 0
  %39 = load %struct.dent*, %struct.dent** %38, align 8
  br label %14, !llvm.loop !11

.loopexit:                                        ; preds = %20
  br label %40

40:                                               ; preds = %.loopexit, %28
  %.not4 = icmp eq %struct.dent* %.01, null
  br i1 %.not4, label %46, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 2, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 67108864
  %.not5 = icmp eq i64 %44, 0
  br i1 %.not5, label %46, label %45

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41, %40
  br label %47

47:                                               ; preds = %46, %45, %5
  %.0 = phi %struct.dent* [ null, %5 ], [ %.01, %45 ], [ null, %46 ]
  ret %struct.dent* %.0
}

declare dso_local i32 @ichartostr(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @hash(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @treeoutput() #0 {
  %1 = load i32, i32* @newwords, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %204

4:                                                ; preds = %0
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @dictf, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @personaldict, i64 0, i64 0)) #10
  br label %204

10:                                               ; preds = %4
  %11 = load i32, i32* @hcount, align 4
  %12 = icmp sgt i32 %11, 999
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %75

14:                                               ; preds = %10
  %15 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %16 = load i32, i32* @pershsize, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dent, %struct.dent* %15, i64 %17
  br label %19

19:                                               ; preds = %43, %14
  %.07 = phi i32 [ 0, %14 ], [ %.18, %43 ]
  %.0 = phi %struct.dent* [ %15, %14 ], [ %44, %43 ]
  %20 = icmp ult %struct.dent* %.0, %18
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %39, %21
  %.18 = phi i32 [ %.07, %21 ], [ %.29, %39 ]
  %.01 = phi %struct.dent* [ %.0, %21 ], [ %41, %39 ]
  %.not32 = icmp eq %struct.dent* %.01, null
  br i1 %.not32, label %42, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.dent, %struct.dent* %.01, i64 0, i32 2, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, 201326592
  %27 = icmp eq i64 %26, 201326592
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = add nsw i32 %.18, 1
  br label %30

30:                                               ; preds = %28, %23
  %.29 = phi i32 [ %29, %28 ], [ %.18, %23 ]
  br label %31

31:                                               ; preds = %35, %30
  %.12 = phi %struct.dent* [ %.01, %30 ], [ %37, %35 ]
  %32 = getelementptr inbounds %struct.dent, %struct.dent* %.12, i64 0, i32 2, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, 1073741824
  %.not33 = icmp eq i64 %34, 0
  br i1 %.not33, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %.12, i64 0, i32 0
  %37 = load %struct.dent*, %struct.dent** %36, align 8
  br label %31, !llvm.loop !12

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.dent, %struct.dent* %.12, i64 0, i32 0
  %41 = load %struct.dent*, %struct.dent** %40, align 8
  br label %22, !llvm.loop !13

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 1
  br label %19, !llvm.loop !14

45:                                               ; preds = %19
  %46 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %47 = load i32, i32* @hashsize, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dent, %struct.dent* %46, i64 %48
  br label %50

50:                                               ; preds = %68, %45
  %.310 = phi i32 [ %.07, %45 ], [ %.512, %68 ]
  %.1 = phi %struct.dent* [ %46, %45 ], [ %69, %68 ]
  %51 = icmp ult %struct.dent* %.1, %49
  br i1 %51, label %52, label %70

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 2, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 201326592
  %56 = icmp eq i64 %55, 201326592
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 2, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 805306368
  %.not30 = icmp eq i64 %60, 805306368
  br i1 %.not30, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %.not31 = icmp eq i8* %63, null
  br i1 %.not31, label %66, label %64

64:                                               ; preds = %61
  %65 = add nsw i32 %.310, 1
  br label %66

66:                                               ; preds = %64, %61, %57
  %.411 = phi i32 [ %65, %64 ], [ %.310, %61 ], [ %.310, %57 ]
  br label %67

67:                                               ; preds = %66, %52
  %.512 = phi i32 [ %.411, %66 ], [ %.310, %52 ]
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.dent, %struct.dent* %.1, i64 1
  br label %50, !llvm.loop !15

70:                                               ; preds = %50
  %71 = sext i32 %.310 to i64
  %72 = mul nsw i64 %71, 24
  %73 = call noalias i8* @malloc(i64 noundef %72) #8
  %74 = bitcast i8* %73 to %struct.dent**
  br label %75

75:                                               ; preds = %70, %13
  %.015 = phi %struct.dent** [ null, %13 ], [ %74, %70 ]
  %.613 = phi i32 [ 0, %13 ], [ %.310, %70 ]
  %76 = icmp eq %struct.dent** %.015, null
  br i1 %76, label %77, label %134

77:                                               ; preds = %75
  %78 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %79 = load i32, i32* @pershsize, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.dent, %struct.dent* %78, i64 %80
  br label %82

82:                                               ; preds = %106, %77
  %.2 = phi %struct.dent* [ %78, %77 ], [ %107, %106 ]
  %83 = icmp ult %struct.dent* %.2, %81
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %102, %84
  %.23 = phi %struct.dent* [ %.2, %84 ], [ %104, %102 ]
  %.not28 = icmp eq %struct.dent* %.23, null
  br i1 %.not28, label %105, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.dent, %struct.dent* %.23, i64 0, i32 2, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, 201326592
  %90 = icmp eq i64 %89, 201326592
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @toutent(%struct._IO_FILE* noundef %92, %struct.dent* noundef nonnull %.23, i32 noundef 1) #8
  br label %93

93:                                               ; preds = %97, %91
  %.34 = phi %struct.dent* [ %.23, %91 ], [ %99, %97 ]
  %94 = getelementptr inbounds %struct.dent, %struct.dent* %.34, i64 0, i32 2, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %95, 1073741824
  %.not29 = icmp eq i64 %96, 0
  br i1 %.not29, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dent, %struct.dent* %.34, i64 0, i32 0
  %99 = load %struct.dent*, %struct.dent** %98, align 8
  br label %93, !llvm.loop !16

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %86
  %.45 = phi %struct.dent* [ %.34, %100 ], [ %.23, %86 ]
  br label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.dent, %struct.dent* %.45, i64 0, i32 0
  %104 = load %struct.dent*, %struct.dent** %103, align 8
  br label %85, !llvm.loop !17

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.dent, %struct.dent* %.2, i64 1
  br label %82, !llvm.loop !18

108:                                              ; preds = %82
  %109 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %110 = load i32, i32* @hashsize, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.dent, %struct.dent* %109, i64 %111
  br label %113

113:                                              ; preds = %131, %108
  %.3 = phi %struct.dent* [ %109, %108 ], [ %132, %131 ]
  %114 = icmp ult %struct.dent* %.3, %112
  br i1 %114, label %115, label %133

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.dent, %struct.dent* %.3, i64 0, i32 2, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %117, 201326592
  %119 = icmp eq i64 %118, 201326592
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.dent, %struct.dent* %.3, i64 0, i32 2, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = and i64 %122, 805306368
  %.not26 = icmp eq i64 %123, 805306368
  br i1 %.not26, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.dent, %struct.dent* %.3, i64 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %.not27 = icmp eq i8* %126, null
  br i1 %.not27, label %129, label %127

127:                                              ; preds = %124
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  call void @toutent(%struct._IO_FILE* noundef %128, %struct.dent* noundef %.3, i32 noundef 1) #8
  br label %129

129:                                              ; preds = %127, %124, %120
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.dent, %struct.dent* %.3, i64 1
  br label %113, !llvm.loop !19

133:                                              ; preds = %113
  br label %204

134:                                              ; preds = %75
  %135 = load %struct.dent*, %struct.dent** @pershtab, align 8
  %136 = load i32, i32* @pershsize, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.dent, %struct.dent* %135, i64 %137
  br label %139

139:                                              ; preds = %163, %134
  %.016 = phi %struct.dent** [ %.015, %134 ], [ %.117, %163 ]
  %.4 = phi %struct.dent* [ %135, %134 ], [ %164, %163 ]
  %140 = icmp ult %struct.dent* %.4, %138
  br i1 %140, label %141, label %165

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %159, %141
  %.117 = phi %struct.dent** [ %.016, %141 ], [ %.218, %159 ]
  %.56 = phi %struct.dent* [ %.4, %141 ], [ %161, %159 ]
  %.not24 = icmp eq %struct.dent* %.56, null
  br i1 %.not24, label %162, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.dent, %struct.dent* %.56, i64 0, i32 2, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = and i64 %145, 201326592
  %147 = icmp eq i64 %146, 201326592
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.dent*, %struct.dent** %.117, i64 1
  store %struct.dent* %.56, %struct.dent** %.117, align 8
  br label %150

150:                                              ; preds = %154, %148
  %.6 = phi %struct.dent* [ %.56, %148 ], [ %156, %154 ]
  %151 = getelementptr inbounds %struct.dent, %struct.dent* %.6, i64 0, i32 2, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = and i64 %152, 1073741824
  %.not25 = icmp eq i64 %153, 0
  br i1 %.not25, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.dent, %struct.dent* %.6, i64 0, i32 0
  %156 = load %struct.dent*, %struct.dent** %155, align 8
  br label %150, !llvm.loop !20

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %143
  %.218 = phi %struct.dent** [ %149, %157 ], [ %.117, %143 ]
  %.7 = phi %struct.dent* [ %.6, %157 ], [ %.56, %143 ]
  br label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.dent, %struct.dent* %.7, i64 0, i32 0
  %161 = load %struct.dent*, %struct.dent** %160, align 8
  br label %142, !llvm.loop !21

162:                                              ; preds = %142
  br label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.dent, %struct.dent* %.4, i64 1
  br label %139, !llvm.loop !22

165:                                              ; preds = %139
  %166 = load %struct.dent*, %struct.dent** @hashtbl, align 8
  %167 = load i32, i32* @hashsize, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.dent, %struct.dent* %166, i64 %168
  br label %170

170:                                              ; preds = %188, %165
  %.319 = phi %struct.dent** [ %.016, %165 ], [ %.521, %188 ]
  %.5 = phi %struct.dent* [ %166, %165 ], [ %189, %188 ]
  %171 = icmp ult %struct.dent* %.5, %169
  br i1 %171, label %172, label %190

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.dent, %struct.dent* %.5, i64 0, i32 2, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = and i64 %174, 201326592
  %176 = icmp eq i64 %175, 201326592
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.dent, %struct.dent* %.5, i64 0, i32 2, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = and i64 %179, 805306368
  %.not = icmp eq i64 %180, 805306368
  br i1 %.not, label %186, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.dent, %struct.dent* %.5, i64 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %.not23 = icmp eq i8* %183, null
  br i1 %.not23, label %186, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.dent*, %struct.dent** %.319, i64 1
  store %struct.dent* %.5, %struct.dent** %.319, align 8
  br label %186

186:                                              ; preds = %184, %181, %177
  %.420 = phi %struct.dent** [ %185, %184 ], [ %.319, %181 ], [ %.319, %177 ]
  br label %187

187:                                              ; preds = %186, %172
  %.521 = phi %struct.dent** [ %.420, %186 ], [ %.319, %172 ]
  br label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.dent, %struct.dent* %.5, i64 1
  br label %170, !llvm.loop !23

190:                                              ; preds = %170
  %191 = bitcast %struct.dent** %.015 to i8*
  %192 = zext i32 %.613 to i64
  call void @qsort(i8* noundef nonnull %191, i64 noundef %192, i64 noundef 8, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.dent**, %struct.dent**)* @pdictcmp to i32 (i8*, i8*)*)) #8
  br label %193

193:                                              ; preds = %195, %190
  %.622 = phi %struct.dent** [ %.015, %190 ], [ %198, %195 ]
  %.714 = phi i32 [ %.613, %190 ], [ %196, %195 ]
  %194 = icmp sgt i32 %.714, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %193
  %196 = add nsw i32 %.714, -1
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %198 = getelementptr inbounds %struct.dent*, %struct.dent** %.622, i64 1
  %199 = load %struct.dent*, %struct.dent** %.622, align 8
  call void @toutent(%struct._IO_FILE* noundef %197, %struct.dent* noundef %199, i32 noundef 1) #8
  br label %193, !llvm.loop !24

200:                                              ; preds = %193
  %201 = bitcast %struct.dent** %.015 to i8*
  call void @free(i8* noundef %201) #8
  store i32 0, i32* @newwords, align 4
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @dictf, align 8
  %203 = call i32 @fclose(%struct._IO_FILE* noundef %202) #8
  br label %204

204:                                              ; preds = %200, %133, %7, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @toutent(%struct._IO_FILE* noundef, %struct.dent* noundef, i32 noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pdictcmp(%struct.dent** nocapture noundef readonly %0, %struct.dent** nocapture noundef readonly %1) #0 {
  %3 = load %struct.dent*, %struct.dent** %0, align 8
  %4 = getelementptr inbounds %struct.dent, %struct.dent* %3, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.dent*, %struct.dent** %1, align 8
  %7 = getelementptr inbounds %struct.dent, %struct.dent* %6, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @casecmp(i8* noundef %5, i8* noundef %8, i32 noundef 1) #8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @mymalloc(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = call noalias i8* @malloc(i64 noundef %2) #8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @myfree(i8* noundef %0) #0 {
  %2 = load i8*, i8** @hashstrings, align 8
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %11, label %3

3:                                                ; preds = %1
  %4 = load i8*, i8** @hashstrings, align 8
  %.not1 = icmp ugt i8* %4, %0
  br i1 %.not1, label %11, label %5

5:                                                ; preds = %3
  %6 = load i8*, i8** @hashstrings, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 6), align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %.not2 = icmp ult i8* %9, %0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %5
  br label %12

11:                                               ; preds = %5, %3, %1
  call void @free(i8* noundef %0) #8
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @casecmp(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
