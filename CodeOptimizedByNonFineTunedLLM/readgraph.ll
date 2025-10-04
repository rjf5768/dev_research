; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readgraph.c'
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
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gnode*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* @numnodes, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %118, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %14)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %119

17:                                               ; preds = %12
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %19 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef %4, i32* noundef %5)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %34)
  call void @exit(i32 noundef 0) #6
  unreachable

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @numnodes, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* @numnodes, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @numnodes, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* @numnodes, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %50)
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %53 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef %6)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %66)
  call void @exit(i32 noundef 0) #6
  unreachable

68:                                               ; preds = %55
  br label %77

69:                                               ; preds = %48
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %75)
  call void @exit(i32 noundef 0) #6
  unreachable

77:                                               ; preds = %68
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %79)
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %82 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #5
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef %7)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %95)
  call void @exit(i32 noundef 0) #6
  unreachable

97:                                               ; preds = %84
  br label %106

98:                                               ; preds = %77
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %104)
  call void @exit(i32 noundef 0) #6
  unreachable

106:                                              ; preds = %97
  br label %118

107:                                              ; preds = %17
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %113 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %116)
  call void @exit(i32 noundef 0) #6
  unreachable

118:                                              ; preds = %106
  br label %12, !llvm.loop !4

119:                                              ; preds = %12
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %120)
  %121 = load i32, i32* @numnodes, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 8
  %125 = call noalias i8* @malloc(i64 noundef %124) #7
  %126 = bitcast i8* %125 to %struct.gnode**
  store %struct.gnode** %126, %struct.gnode*** @gnodeArray, align 8
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %136, %119
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @numnodes, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.gnode*, %struct.gnode** %132, i64 %134
  store %struct.gnode* null, %struct.gnode** %135, align 8
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %127, !llvm.loop !6

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %292, %139
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %141, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %142)
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %293

145:                                              ; preds = %140
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %147 = call i32 @strcmp(i8* noundef %146, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %292

149:                                              ; preds = %145
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %150, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* noundef %4, i32* noundef %5)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %153)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef %6)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %158 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %158)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %160, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* noundef %7)
  %162 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.gnode*, %struct.gnode** %162, i64 %164
  %166 = load %struct.gnode*, %struct.gnode** %165, align 8
  store %struct.gnode* %166, %struct.gnode** %11, align 8
  %167 = call noalias i8* @malloc(i64 noundef 40) #7
  %168 = bitcast i8* %167 to %struct.gnode*
  %169 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.gnode*, %struct.gnode** %169, i64 %171
  store %struct.gnode* %168, %struct.gnode** %172, align 8
  %173 = load %struct.gnode*, %struct.gnode** %11, align 8
  %174 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.gnode*, %struct.gnode** %174, i64 %176
  %178 = load %struct.gnode*, %struct.gnode** %177, align 8
  %179 = getelementptr inbounds %struct.gnode, %struct.gnode* %178, i32 0, i32 7
  store %struct.gnode* %173, %struct.gnode** %179, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.gnode*, %struct.gnode** %181, i64 %183
  %185 = load %struct.gnode*, %struct.gnode** %184, align 8
  %186 = getelementptr inbounds %struct.gnode, %struct.gnode* %185, i32 0, i32 0
  store i32 %180, i32* %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.gnode*, %struct.gnode** %188, i64 %190
  %192 = load %struct.gnode*, %struct.gnode** %191, align 8
  %193 = getelementptr inbounds %struct.gnode, %struct.gnode* %192, i32 0, i32 2
  store i32 %187, i32* %193, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.gnode*, %struct.gnode** %195, i64 %197
  %199 = load %struct.gnode*, %struct.gnode** %198, align 8
  %200 = getelementptr inbounds %struct.gnode, %struct.gnode* %199, i32 0, i32 1
  store i32 %194, i32* %200, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.gnode*, %struct.gnode** %202, i64 %204
  %206 = load %struct.gnode*, %struct.gnode** %205, align 8
  %207 = getelementptr inbounds %struct.gnode, %struct.gnode* %206, i32 0, i32 3
  store i32 %201, i32* %207, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.gnode*, %struct.gnode** %209, i64 %211
  %213 = load %struct.gnode*, %struct.gnode** %212, align 8
  %214 = getelementptr inbounds %struct.gnode, %struct.gnode* %213, i32 0, i32 4
  store i32 %208, i32* %214, align 8
  %215 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.gnode*, %struct.gnode** %215, i64 %217
  %219 = load %struct.gnode*, %struct.gnode** %218, align 8
  %220 = getelementptr inbounds %struct.gnode, %struct.gnode* %219, i32 0, i32 5
  store i32 0, i32* %220, align 4
  %221 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.gnode*, %struct.gnode** %221, i64 %223
  %225 = load %struct.gnode*, %struct.gnode** %224, align 8
  %226 = getelementptr inbounds %struct.gnode, %struct.gnode* %225, i32 0, i32 6
  store i32 0, i32* %226, align 8
  %227 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.gnode*, %struct.gnode** %227, i64 %229
  %231 = load %struct.gnode*, %struct.gnode** %230, align 8
  store %struct.gnode* %231, %struct.gnode** %11, align 8
  %232 = call noalias i8* @malloc(i64 noundef 40) #7
  %233 = bitcast i8* %232 to %struct.gnode*
  %234 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.gnode*, %struct.gnode** %234, i64 %236
  store %struct.gnode* %233, %struct.gnode** %237, align 8
  %238 = load %struct.gnode*, %struct.gnode** %11, align 8
  %239 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.gnode*, %struct.gnode** %239, i64 %241
  %243 = load %struct.gnode*, %struct.gnode** %242, align 8
  %244 = getelementptr inbounds %struct.gnode, %struct.gnode* %243, i32 0, i32 7
  store %struct.gnode* %238, %struct.gnode** %244, align 8
  %245 = load i32, i32* %4, align 4
  %246 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.gnode*, %struct.gnode** %246, i64 %248
  %250 = load %struct.gnode*, %struct.gnode** %249, align 8
  %251 = getelementptr inbounds %struct.gnode, %struct.gnode* %250, i32 0, i32 0
  store i32 %245, i32* %251, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.gnode*, %struct.gnode** %253, i64 %255
  %257 = load %struct.gnode*, %struct.gnode** %256, align 8
  %258 = getelementptr inbounds %struct.gnode, %struct.gnode* %257, i32 0, i32 2
  store i32 %252, i32* %258, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.gnode*, %struct.gnode** %260, i64 %262
  %264 = load %struct.gnode*, %struct.gnode** %263, align 8
  %265 = getelementptr inbounds %struct.gnode, %struct.gnode* %264, i32 0, i32 1
  store i32 %259, i32* %265, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.gnode*, %struct.gnode** %267, i64 %269
  %271 = load %struct.gnode*, %struct.gnode** %270, align 8
  %272 = getelementptr inbounds %struct.gnode, %struct.gnode* %271, i32 0, i32 3
  store i32 %266, i32* %272, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.gnode*, %struct.gnode** %274, i64 %276
  %278 = load %struct.gnode*, %struct.gnode** %277, align 8
  %279 = getelementptr inbounds %struct.gnode, %struct.gnode* %278, i32 0, i32 4
  store i32 %273, i32* %279, align 8
  %280 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.gnode*, %struct.gnode** %280, i64 %282
  %284 = load %struct.gnode*, %struct.gnode** %283, align 8
  %285 = getelementptr inbounds %struct.gnode, %struct.gnode* %284, i32 0, i32 5
  store i32 0, i32* %285, align 4
  %286 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.gnode*, %struct.gnode** %286, i64 %288
  %290 = load %struct.gnode*, %struct.gnode** %289, align 8
  %291 = getelementptr inbounds %struct.gnode, %struct.gnode* %290, i32 0, i32 6
  store i32 0, i32* %291, align 8
  br label %292

292:                                              ; preds = %149, %145
  br label %140, !llvm.loop !7

293:                                              ; preds = %140
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
