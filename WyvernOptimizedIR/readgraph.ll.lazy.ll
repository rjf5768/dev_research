; ModuleID = './readgraph.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@numnodes = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to input a pair of nodes \00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"following keyword edge in the .gph file\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Current edge: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to input length \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"in the .gph file\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to find keyword: length \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"for an edge\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"capacity\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to input capacity \00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed to find keyword: capacity \00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Found unknown string when attempting \00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"to find keyword: edge in the .gph file\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"instead found: %s\0A\00", align 1
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @readgraph(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* @numnodes, align 4
  br label %7

7:                                                ; preds = %91, %1
  %.0 = phi i32 [ 0, %1 ], [ %15, %91 ]
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %8) #7
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %92

11:                                               ; preds = %7
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %12, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %13 = icmp eq i32 %bcmp12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %.0, 1
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #7
  %.not13 = icmp eq i32 %16, 2
  br i1 %.not13, label %24, label %17

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @numnodes, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* @numnodes, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @numnodes, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* @numnodes, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %37) #7
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %bcmp14 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %39, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 7)
  %40 = icmp eq i32 %bcmp14, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %5) #7
  %.not15 = icmp eq i32 %42, 1
  br i1 %.not15, label %50, label %43

43:                                               ; preds = %41
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %41
  br label %58

51:                                               ; preds = %36
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %53 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %50
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %59) #7
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %61, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 9)
  %62 = icmp eq i32 %bcmp16, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %6) #7
  %.not17 = icmp eq i32 %64, 1
  br i1 %.not17, label %72, label %65

65:                                               ; preds = %63
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %63
  br label %80

73:                                               ; preds = %58
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %15) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %72
  br label %91

81:                                               ; preds = %11
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %83 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %82)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %87) #7
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.0) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

91:                                               ; preds = %80
  br label %7, !llvm.loop !4

92:                                               ; preds = %7
  call void @rewind(%struct._IO_FILE* noundef %0) #7
  %93 = load i32, i32* @numnodes, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 3
  %97 = call noalias i8* @malloc(i64 noundef %96) #7
  store i8* %97, i8** bitcast (%struct.gnode*** @gnodeArray to i8**), align 8
  br label %98

98:                                               ; preds = %104, %92
  %.01 = phi i32 [ 1, %92 ], [ %105, %104 ]
  %99 = load i32, i32* @numnodes, align 4
  %.not = icmp sgt i32 %.01, %99
  br i1 %.not, label %106, label %100

100:                                              ; preds = %98
  %101 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %102 = zext i32 %.01 to i64
  %103 = getelementptr inbounds %struct.gnode*, %struct.gnode** %101, i64 %102
  store %struct.gnode* null, %struct.gnode** %103, align 8
  br label %104

104:                                              ; preds = %100
  %105 = add nuw nsw i32 %.01, 1
  br label %98, !llvm.loop !6

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %244, %106
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %108) #7
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %245

111:                                              ; preds = %107
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %112, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %113 = icmp eq i32 %bcmp, 0
  br i1 %113, label %114, label %244

114:                                              ; preds = %111
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #7
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %116) #7
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %5) #7
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %119) #7
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %6) #7
  %122 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.gnode*, %struct.gnode** %122, i64 %124
  %126 = load %struct.gnode*, %struct.gnode** %125, align 8
  %127 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %128 = sext i32 %123 to i64
  %129 = getelementptr inbounds %struct.gnode*, %struct.gnode** %122, i64 %128
  %130 = bitcast %struct.gnode** %129 to i8**
  store i8* %127, i8** %130, align 8
  %131 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %132 = sext i32 %123 to i64
  %133 = getelementptr inbounds %struct.gnode*, %struct.gnode** %131, i64 %132
  %134 = load %struct.gnode*, %struct.gnode** %133, align 8
  %135 = getelementptr inbounds %struct.gnode, %struct.gnode* %134, i64 0, i32 7
  store %struct.gnode* %126, %struct.gnode** %135, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.gnode*, %struct.gnode** %137, i64 %139
  %141 = load %struct.gnode*, %struct.gnode** %140, align 8
  %142 = getelementptr inbounds %struct.gnode, %struct.gnode* %141, i64 0, i32 0
  store i32 %136, i32* %142, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.gnode*, %struct.gnode** %144, i64 %146
  %148 = load %struct.gnode*, %struct.gnode** %147, align 8
  %149 = getelementptr inbounds %struct.gnode, %struct.gnode* %148, i64 0, i32 2
  store i32 %143, i32* %149, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.gnode*, %struct.gnode** %151, i64 %153
  %155 = load %struct.gnode*, %struct.gnode** %154, align 8
  %156 = getelementptr inbounds %struct.gnode, %struct.gnode* %155, i64 0, i32 1
  store i32 %150, i32* %156, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.gnode*, %struct.gnode** %158, i64 %160
  %162 = load %struct.gnode*, %struct.gnode** %161, align 8
  %163 = getelementptr inbounds %struct.gnode, %struct.gnode* %162, i64 0, i32 3
  store i32 %157, i32* %163, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.gnode*, %struct.gnode** %165, i64 %167
  %169 = load %struct.gnode*, %struct.gnode** %168, align 8
  %170 = getelementptr inbounds %struct.gnode, %struct.gnode* %169, i64 0, i32 4
  store i32 %164, i32* %170, align 8
  %171 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.gnode*, %struct.gnode** %171, i64 %173
  %175 = load %struct.gnode*, %struct.gnode** %174, align 8
  %176 = getelementptr inbounds %struct.gnode, %struct.gnode* %175, i64 0, i32 5
  store i32 0, i32* %176, align 4
  %177 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.gnode*, %struct.gnode** %177, i64 %179
  %181 = load %struct.gnode*, %struct.gnode** %180, align 8
  %182 = getelementptr inbounds %struct.gnode, %struct.gnode* %181, i64 0, i32 6
  store i32 0, i32* %182, align 8
  %183 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.gnode*, %struct.gnode** %183, i64 %185
  %187 = load %struct.gnode*, %struct.gnode** %186, align 8
  %188 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %189 = sext i32 %184 to i64
  %190 = getelementptr inbounds %struct.gnode*, %struct.gnode** %183, i64 %189
  %191 = bitcast %struct.gnode** %190 to i8**
  store i8* %188, i8** %191, align 8
  %192 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %193 = sext i32 %184 to i64
  %194 = getelementptr inbounds %struct.gnode*, %struct.gnode** %192, i64 %193
  %195 = load %struct.gnode*, %struct.gnode** %194, align 8
  %196 = getelementptr inbounds %struct.gnode, %struct.gnode* %195, i64 0, i32 7
  store %struct.gnode* %187, %struct.gnode** %196, align 8
  %197 = load i32, i32* %3, align 4
  %198 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.gnode*, %struct.gnode** %198, i64 %200
  %202 = load %struct.gnode*, %struct.gnode** %201, align 8
  %203 = getelementptr inbounds %struct.gnode, %struct.gnode* %202, i64 0, i32 0
  store i32 %197, i32* %203, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.gnode*, %struct.gnode** %205, i64 %207
  %209 = load %struct.gnode*, %struct.gnode** %208, align 8
  %210 = getelementptr inbounds %struct.gnode, %struct.gnode* %209, i64 0, i32 2
  store i32 %204, i32* %210, align 8
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.gnode*, %struct.gnode** %212, i64 %214
  %216 = load %struct.gnode*, %struct.gnode** %215, align 8
  %217 = getelementptr inbounds %struct.gnode, %struct.gnode* %216, i64 0, i32 1
  store i32 %211, i32* %217, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.gnode*, %struct.gnode** %219, i64 %221
  %223 = load %struct.gnode*, %struct.gnode** %222, align 8
  %224 = getelementptr inbounds %struct.gnode, %struct.gnode* %223, i64 0, i32 3
  store i32 %218, i32* %224, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.gnode*, %struct.gnode** %226, i64 %228
  %230 = load %struct.gnode*, %struct.gnode** %229, align 8
  %231 = getelementptr inbounds %struct.gnode, %struct.gnode* %230, i64 0, i32 4
  store i32 %225, i32* %231, align 8
  %232 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.gnode*, %struct.gnode** %232, i64 %234
  %236 = load %struct.gnode*, %struct.gnode** %235, align 8
  %237 = getelementptr inbounds %struct.gnode, %struct.gnode* %236, i64 0, i32 5
  store i32 0, i32* %237, align 4
  %238 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.gnode*, %struct.gnode** %238, i64 %240
  %242 = load %struct.gnode*, %struct.gnode** %241, align 8
  %243 = getelementptr inbounds %struct.gnode, %struct.gnode* %242, i64 0, i32 6
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %114, %111
  br label %107, !llvm.loop !7

245:                                              ; preds = %107
  ret void

UnifiedUnreachableBlock:                          ; preds = %81, %73, %65, %51, %43, %17
  unreachable
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
