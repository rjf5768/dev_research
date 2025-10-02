; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gpass2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gpass2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@netctr = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@termarray = external dso_local global %struct.termnets**, align 8
@pinnames = external dso_local global i8**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @gpass2(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* @netctr, align 4
  store i32 0, i32* %11, align 4
  call void @maketabl()
  br label %24

24:                                               ; preds = %290, %1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %291

29:                                               ; preds = %24
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %31 = call i32 @strcmp(i8* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %10)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %40)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %45)
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %54, %33
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %15, i32* noundef %16)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %47, !llvm.loop !4

57:                                               ; preds = %47
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %59)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %6)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %19)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %66)
  store i32 1, i32* %18, align 4
  br label %68

68:                                               ; preds = %75, %57
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %15)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %68, !llvm.loop !6

78:                                               ; preds = %68
  br label %290

79:                                               ; preds = %29
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %81 = call i32 @strcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %85)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %88)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %94)
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %99 = call i32 @addhash(i8* noundef %98)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %4, i32* noundef %5)
  br label %289

102:                                              ; preds = %79
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %104 = call i32 @strcmp(i8* noundef %103, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %110)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %4, i32* noundef %5)
  br label %288

117:                                              ; preds = %102
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %119 = call i32 @strcmp(i8* noundef %118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %177

121:                                              ; preds = %117
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %10)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %125)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %127, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %128)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %130, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %132, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %133)
  store i32 1, i32* %13, align 4
  br label %135

135:                                              ; preds = %142, %121
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %15, i32* noundef %16)
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %135, !llvm.loop !7

145:                                              ; preds = %135
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %146, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %147)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef %21)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %151, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %154, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef %20)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %157)
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %159, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %6)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %19)
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %163, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %164)
  store i32 1, i32* %18, align 4
  br label %166

166:                                              ; preds = %173, %145
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %19, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %15)
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %166, !llvm.loop !8

176:                                              ; preds = %166
  br label %287

177:                                              ; preds = %117
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %179 = call i32 @strcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %183 = call i32 @strcmp(i8* noundef %182, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %221

185:                                              ; preds = %181, %177
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %7)
  store i32 1, i32* %3, align 4
  br label %188

188:                                              ; preds = %212, %185
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %188
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %193, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %194)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %197 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %197)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %199, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %200)
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %203 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %203)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %206)
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %211 = call i32 @addhash(i8* noundef %210)
  br label %212

212:                                              ; preds = %192
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %188, !llvm.loop !9

215:                                              ; preds = %188
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %216, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %217)
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %219, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %8, i32* noundef %9)
  br label %286

221:                                              ; preds = %181
  %222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %223 = call i32 @strcmp(i8* noundef %222, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %277

225:                                              ; preds = %221
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %226, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %10)
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %229 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %229)
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %231, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %232)
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %234, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %14)
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %237 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %236, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %237)
  store i32 1, i32* %13, align 4
  br label %239

239:                                              ; preds = %246, %225
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %14, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %244, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef %15, i32* noundef %16)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %239, !llvm.loop !10

249:                                              ; preds = %239
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %251 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %252 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %250, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %251)
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %253, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %254)
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %257 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %257)
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %260 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %259, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %6)
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %262 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %261, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %19)
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %264 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %263, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %264)
  store i32 1, i32* %18, align 4
  br label %266

266:                                              ; preds = %273, %249
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %19, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %266
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %271, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef %15)
  br label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %18, align 4
  br label %266, !llvm.loop !11

276:                                              ; preds = %266
  br label %285

277:                                              ; preds = %221
  %278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %279 = call i32 @strcmp(i8* noundef %278, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %283 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %282, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double* noundef %22)
  br label %284

284:                                              ; preds = %281, %277
  br label %285

285:                                              ; preds = %284, %276
  br label %286

286:                                              ; preds = %285, %215
  br label %287

287:                                              ; preds = %286, %176
  br label %288

288:                                              ; preds = %287, %106
  br label %289

289:                                              ; preds = %288, %83
  br label %290

290:                                              ; preds = %289, %78
  br label %24, !llvm.loop !12

291:                                              ; preds = %24
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %292)
  %293 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %294 = bitcast %struct.termnets** %293 to i8*
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %17, align 4
  %297 = add nsw i32 %295, %296
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = mul i64 %299, 8
  %301 = call i8* @realloc(i8* noundef %294, i64 noundef %300) #5
  %302 = bitcast i8* %301 to %struct.termnets**
  store %struct.termnets** %302, %struct.termnets*** @termarray, align 8
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 1, %303
  store i32 %304, i32* %12, align 4
  br label %305

305:                                              ; preds = %316, %291
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %307, %308
  %310 = icmp sle i32 %306, %309
  br i1 %310, label %311, label %319

311:                                              ; preds = %305
  %312 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.termnets*, %struct.termnets** %312, i64 %314
  store %struct.termnets* null, %struct.termnets** %315, align 8
  br label %316

316:                                              ; preds = %311
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %305, !llvm.loop !13

319:                                              ; preds = %305
  %320 = load i8**, i8*** @pinnames, align 8
  %321 = bitcast i8** %320 to i8*
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %17, align 4
  %324 = add nsw i32 %322, %323
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = mul i64 %326, 8
  %328 = call i8* @realloc(i8* noundef %321, i64 noundef %327) #5
  %329 = bitcast i8* %328 to i8**
  store i8** %329, i8*** @pinnames, align 8
  ret void
}

declare dso_local void @maketabl() #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @addhash(i8* noundef) #1

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

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
