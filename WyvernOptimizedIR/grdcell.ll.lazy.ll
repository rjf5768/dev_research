; ModuleID = './grdcell.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grdcell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.bustbox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ecount = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@A = external dso_local global %struct.bustbox*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"padside\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sidespace\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"softcell\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@netarray = external dso_local global %struct.dimbox**, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@pinnames = external dso_local global i8**, align 8
@maxterm = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"asplb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"aspub\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"group\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @grdcell(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca i32, align 4
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
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca [1024 x i8], align 16
  call void @gpass2(%struct._IO_FILE* noundef %0) #6
  store i32 0, i32* @ecount, align 4
  br label %17

17:                                               ; preds = %477, %1
  %.079 = phi %struct.termbox* [ undef, %1 ], [ %.988, %477 ]
  %.073 = phi %struct.cellbox* [ undef, %1 ], [ %.578, %477 ]
  %.061 = phi i32 [ 0, %1 ], [ %.1172, %477 ]
  %.052 = phi i32 [ undef, %1 ], [ %.860, %477 ]
  %.043 = phi i32 [ undef, %1 ], [ %.851, %477 ]
  %.034 = phi i32 [ undef, %1 ], [ %.842, %477 ]
  %.025 = phi i32 [ undef, %1 ], [ %.833, %477 ]
  %.012 = phi i32 [ undef, %1 ], [ %.214, %477 ]
  %.09 = phi i32 [ undef, %1 ], [ %.211, %477 ]
  %.02 = phi i32 [ 0, %1 ], [ %.58, %477 ]
  %.0 = phi %struct.netbox* [ undef, %1 ], [ %.13, %477 ]
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %18) #6
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %478

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %22, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %23 = icmp eq i32 %bcmp, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %21
  %25 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %26 = add nsw i32 %.02, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %25, i64 %27
  %29 = load %struct.cellbox*, %struct.cellbox** %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %12) #6
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %31) #6
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %33) #6
  br label %35

35:                                               ; preds = %44, %24
  %.015 = phi i32 [ 0, %24 ], [ %45, %44 ]
  %36 = icmp ult i32 %.015, 31
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %39 = zext i32 %.015 to i64
  %40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %38, i64 %39, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %42 = zext i32 %.015 to i64
  %43 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 %42, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %37
  %45 = add nuw nsw i32 %.015, 1
  br label %35, !llvm.loop !4

46:                                               ; preds = %35
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %8) #6
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %48) #6
  br label %50

50:                                               ; preds = %67, %46
  %.019 = phi i32 [ 1, %46 ], [ %68, %67 ]
  %51 = load i32, i32* %8, align 4
  %.not109 = icmp sgt i32 %.019, %51
  br i1 %.not109, label %69, label %52

52:                                               ; preds = %50
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #6
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %56 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i64 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %55, i64 %59, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %63 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %62, i64 %65, i32 1
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %52
  %68 = add nuw nsw i32 %.019, 1
  br label %50, !llvm.loop !6

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %108, %69
  %.153 = phi i32 [ %.052, %69 ], [ %.355, %108 ]
  %.144 = phi i32 [ %.043, %69 ], [ %.346, %108 ]
  %.135 = phi i32 [ %.034, %69 ], [ %.337, %108 ]
  %.126 = phi i32 [ %.025, %69 ], [ %.328, %108 ]
  %.116 = phi i32 [ 1, %69 ], [ %109, %108 ]
  %71 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %72 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 0, i32 0
  %73 = load i32, i32* %72, align 4
  %.not110 = icmp sgt i32 %.116, %73
  br i1 %.not110, label %110, label %74

74:                                               ; preds = %70
  %75 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %76 = zext i32 %.116 to i64
  %77 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i64 %76, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = zext i32 %.116 to i64
  %80 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %75, i64 %79, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = icmp eq i32 %.116, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  br label %107

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, %.126
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %86
  %.227 = phi i32 [ %90, %89 ], [ %.126, %86 ]
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, %.144
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %91
  %.245 = phi i32 [ %95, %94 ], [ %.144, %91 ]
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, %.135
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %96
  %.236 = phi i32 [ %100, %99 ], [ %.135, %96 ]
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, %.153
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %101
  %.254 = phi i32 [ %105, %104 ], [ %.153, %101 ]
  br label %107

107:                                              ; preds = %106, %83
  %.355 = phi i32 [ %85, %83 ], [ %.254, %106 ]
  %.346 = phi i32 [ %84, %83 ], [ %.245, %106 ]
  %.337 = phi i32 [ %85, %83 ], [ %.236, %106 ]
  %.328 = phi i32 [ %84, %83 ], [ %.227, %106 ]
  br label %108

108:                                              ; preds = %107
  %109 = add nuw nsw i32 %.116, 1
  br label %70, !llvm.loop !7

110:                                              ; preds = %70
  %111 = add nsw i32 %.144, %.126
  %112 = sdiv i32 %111, 2
  %113 = add nsw i32 %.153, %.135
  %114 = sdiv i32 %113, 2
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %115) #6
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %2) #6
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #6
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %119) #6
  br label %121

121:                                              ; preds = %125, %110
  %.022 = phi i32 [ 1, %110 ], [ %126, %125 ]
  %122 = load i32, i32* %9, align 4
  %.not111 = icmp sgt i32 %.022, %122
  br i1 %.not111, label %127, label %123

123:                                              ; preds = %121
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #6
  br label %125

125:                                              ; preds = %123
  %126 = add nuw nsw i32 %.022, 1
  br label %121, !llvm.loop !8

127:                                              ; preds = %121
  br label %477

128:                                              ; preds = %21
  %129 = bitcast [1024 x i8]* %16 to i32*
  %lhsv = load i32, i32* %129, align 16
  %.not = icmp eq i32 %lhsv, 6578544
  br i1 %.not, label %130, label %221

130:                                              ; preds = %128
  %131 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %132 = add nsw i32 %.02, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %131, i64 %133
  %135 = load %struct.cellbox*, %struct.cellbox** %134, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %12) #6
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %137) #6
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %139) #6
  br label %141

141:                                              ; preds = %150, %130
  %.217 = phi i32 [ 0, %130 ], [ %151, %150 ]
  %142 = icmp ult i32 %.217, 31
  br i1 %142, label %143, label %152

143:                                              ; preds = %141
  %144 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %145 = zext i32 %.217 to i64
  %146 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %144, i64 %145, i32 0
  store i32 0, i32* %146, align 4
  %147 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %148 = zext i32 %.217 to i64
  %149 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %147, i64 %148, i32 1
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %143
  %151 = add nuw nsw i32 %.217, 1
  br label %141, !llvm.loop !9

152:                                              ; preds = %141
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %8) #6
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %154) #6
  br label %156

156:                                              ; preds = %173, %152
  %.120 = phi i32 [ 1, %152 ], [ %174, %173 ]
  %157 = load i32, i32* %8, align 4
  %.not107 = icmp sgt i32 %.120, %157
  br i1 %.not107, label %175, label %158

158:                                              ; preds = %156
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #6
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %162 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %161, i64 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %161, i64 %165, i32 0
  store i32 %160, i32* %166, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %168, i64 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %168, i64 %171, i32 1
  store i32 %167, i32* %172, align 4
  br label %173

173:                                              ; preds = %158
  %174 = add nuw nsw i32 %.120, 1
  br label %156, !llvm.loop !10

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %214, %175
  %.456 = phi i32 [ %.052, %175 ], [ %.658, %214 ]
  %.447 = phi i32 [ %.043, %175 ], [ %.649, %214 ]
  %.438 = phi i32 [ %.034, %175 ], [ %.640, %214 ]
  %.429 = phi i32 [ %.025, %175 ], [ %.631, %214 ]
  %.318 = phi i32 [ 1, %175 ], [ %215, %214 ]
  %177 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %178 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %177, i64 0, i32 0
  %179 = load i32, i32* %178, align 4
  %.not108 = icmp sgt i32 %.318, %179
  br i1 %.not108, label %216, label %180

180:                                              ; preds = %176
  %181 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %182 = zext i32 %.318 to i64
  %183 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %181, i64 %182, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %10, align 4
  %185 = zext i32 %.318 to i64
  %186 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %181, i64 %185, i32 1
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  %188 = icmp eq i32 %.318, 1
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  br label %213

192:                                              ; preds = %180
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, %.429
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* %10, align 4
  br label %197

197:                                              ; preds = %195, %192
  %.530 = phi i32 [ %196, %195 ], [ %.429, %192 ]
  %198 = load i32, i32* %10, align 4
  %199 = icmp sgt i32 %198, %.447
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  br label %202

202:                                              ; preds = %200, %197
  %.548 = phi i32 [ %201, %200 ], [ %.447, %197 ]
  %203 = load i32, i32* %11, align 4
  %204 = icmp slt i32 %203, %.438
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  br label %207

207:                                              ; preds = %205, %202
  %.539 = phi i32 [ %206, %205 ], [ %.438, %202 ]
  %208 = load i32, i32* %11, align 4
  %209 = icmp sgt i32 %208, %.456
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i32, i32* %11, align 4
  br label %212

212:                                              ; preds = %210, %207
  %.557 = phi i32 [ %211, %210 ], [ %.456, %207 ]
  br label %213

213:                                              ; preds = %212, %189
  %.658 = phi i32 [ %191, %189 ], [ %.557, %212 ]
  %.649 = phi i32 [ %190, %189 ], [ %.548, %212 ]
  %.640 = phi i32 [ %191, %189 ], [ %.539, %212 ]
  %.631 = phi i32 [ %190, %189 ], [ %.530, %212 ]
  br label %214

214:                                              ; preds = %213
  %215 = add nuw nsw i32 %.318, 1
  br label %176, !llvm.loop !11

216:                                              ; preds = %176
  %217 = add nsw i32 %.447, %.429
  %218 = sdiv i32 %217, 2
  %219 = add nsw i32 %.456, %.438
  %220 = sdiv i32 %219, 2
  br label %476

221:                                              ; preds = %128
  %222 = bitcast [1024 x i8]* %16 to i64*
  %lhsv90 = load i64, i64* %222, align 16
  %.not92 = icmp eq i64 %lhsv90, 28539376718078320
  br i1 %.not92, label %223, label %239

223:                                              ; preds = %221
  %224 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %224) #6
  %226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %226) #6
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %2) #6
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #6
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %230) #6
  br label %232

232:                                              ; preds = %236, %223
  %.123 = phi i32 [ 1, %223 ], [ %237, %236 ]
  %233 = load i32, i32* %9, align 4
  %.not106 = icmp sgt i32 %.123, %233
  br i1 %.not106, label %238, label %234

234:                                              ; preds = %232
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #6
  br label %236

236:                                              ; preds = %234
  %237 = add nuw nsw i32 %.123, 1
  br label %232, !llvm.loop !12

238:                                              ; preds = %232
  br label %475

239:                                              ; preds = %221
  %240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp93 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %240, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 10)
  %241 = icmp eq i32 %bcmp93, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double* noundef nonnull %15) #6
  br label %474

244:                                              ; preds = %239
  %245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp94 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %245, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 9)
  %246 = icmp eq i32 %bcmp94, 0
  br i1 %246, label %247, label %281

247:                                              ; preds = %244
  %248 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %249 = add nsw i32 %.02, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %248, i64 %250
  %252 = load %struct.cellbox*, %struct.cellbox** %251, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %12) #6
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %254) #6
  %256 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %256) #6
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %8) #6
  %259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %260 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %259) #6
  br label %261

261:                                              ; preds = %265, %247
  %.221 = phi i32 [ 1, %247 ], [ %266, %265 ]
  %262 = load i32, i32* %8, align 4
  %.not104 = icmp sgt i32 %.221, %262
  br i1 %.not104, label %267, label %263

263:                                              ; preds = %261
  %264 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #6
  br label %265

265:                                              ; preds = %263
  %266 = add nuw nsw i32 %.221, 1
  br label %261, !llvm.loop !13

267:                                              ; preds = %261
  %268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %268) #6
  %270 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %2) #6
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #6
  %272 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %272) #6
  br label %274

274:                                              ; preds = %278, %267
  %.224 = phi i32 [ 1, %267 ], [ %279, %278 ]
  %275 = load i32, i32* %9, align 4
  %.not105 = icmp sgt i32 %.224, %275
  br i1 %.not105, label %280, label %276

276:                                              ; preds = %274
  %277 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #6
  br label %278

278:                                              ; preds = %276
  %279 = add nuw nsw i32 %.224, 1
  br label %274, !llvm.loop !14

280:                                              ; preds = %274
  br label %473

281:                                              ; preds = %244
  %282 = bitcast [1024 x i8]* %16 to i32*
  %lhsv95 = load i32, i32* %282, align 16
  %.not97 = icmp eq i32 %lhsv95, 7235952
  br i1 %.not97, label %283, label %341

283:                                              ; preds = %281
  %284 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %284) #6
  %286 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %286) #6
  %288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %289 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %288) #6
  %290 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %291 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %290) #6
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #6
  %293 = add nsw i32 %.061, 1
  %294 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %295 = call i32 @hashfind(i8* noundef nonnull %294) #6
  %296 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %296, i64 %297
  %299 = load %struct.dimbox*, %struct.dimbox** %298, align 8
  %300 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %299, i64 0, i32 0
  br label %301

301:                                              ; preds = %307, %283
  %.1.in = phi %struct.netbox** [ %300, %283 ], [ %308, %307 ]
  %.1 = load %struct.netbox*, %struct.netbox** %.1.in, align 8
  %302 = getelementptr inbounds %struct.netbox, %struct.netbox* %.1, i64 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, %293
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  br label %309

306:                                              ; preds = %301
  br label %307

307:                                              ; preds = %306
  %308 = getelementptr inbounds %struct.netbox, %struct.netbox* %.1, i64 0, i32 0
  br label %301

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.netbox, %struct.netbox* %.1, i64 0, i32 7
  store i32 %.02, i32* %310, align 8
  %311 = getelementptr inbounds %struct.netbox, %struct.netbox* %.1, i64 0, i32 8
  store i32 1, i32* %311, align 4
  %312 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.073, i64 0, i32 10
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %340

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.073, i64 0, i32 21, i64 0
  %317 = load %struct.tilebox*, %struct.tilebox** %316, align 8
  %318 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %317, i64 0, i32 17
  br label %319

319:                                              ; preds = %325, %315
  %.180.in = phi %struct.termbox** [ %318, %315 ], [ %326, %325 ]
  %.180 = load %struct.termbox*, %struct.termbox** %.180.in, align 8
  %320 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, %293
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  br label %327

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324
  %326 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 0
  br label %319

327:                                              ; preds = %323
  %328 = load i32, i32* %3, align 4
  %329 = sub nsw i32 %328, %.09
  %330 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 1
  store i32 %329, i32* %330, align 8
  %331 = load i32, i32* %4, align 4
  %332 = sub nsw i32 %331, %.012
  %333 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 2
  store i32 %332, i32* %333, align 4
  %334 = load i32, i32* %3, align 4
  %335 = sub nsw i32 %334, %.09
  %336 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 3
  store i32 %335, i32* %336, align 8
  %337 = load i32, i32* %4, align 4
  %338 = sub nsw i32 %337, %.012
  %339 = getelementptr inbounds %struct.termbox, %struct.termbox* %.180, i64 0, i32 4
  store i32 %338, i32* %339, align 4
  br label %340

340:                                              ; preds = %327, %309
  %.281 = phi %struct.termbox* [ %.180, %327 ], [ %.079, %309 ]
  br label %472

341:                                              ; preds = %281
  %342 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp98 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %342, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 6)
  %343 = icmp eq i32 %bcmp98, 0
  br i1 %343, label %344, label %412

344:                                              ; preds = %341
  %345 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %346 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %345) #6
  %347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %347) #6
  %349 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %350 = call i64 @strlen(i8* noundef nonnull %349) #7
  %351 = add i64 %350, 1
  %352 = call noalias i8* @malloc(i64 noundef %351) #6
  %353 = load i8**, i8*** @pinnames, align 8
  %354 = load i32, i32* @ecount, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* @ecount, align 4
  %356 = load i32, i32* @maxterm, align 4
  %357 = add nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %353, i64 %358
  store i8* %352, i8** %359, align 8
  %360 = load i8**, i8*** @pinnames, align 8
  %361 = load i32, i32* @ecount, align 4
  %362 = load i32, i32* @maxterm, align 4
  %363 = add nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8*, i8** %360, i64 %364
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %strcpy = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %366, i8* noundef nonnull %367)
  %368 = getelementptr inbounds %struct.netbox, %struct.netbox* %.0, i64 0, i32 0
  %369 = load %struct.netbox*, %struct.netbox** %368, align 8
  %370 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #6
  %371 = bitcast i8* %370 to %struct.netbox*
  %372 = bitcast %struct.netbox* %.0 to i8**
  store i8* %370, i8** %372, align 8
  %373 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 0
  store %struct.netbox* %369, %struct.netbox** %373, align 8
  %374 = load i32, i32* @ecount, align 4
  %375 = load i32, i32* @maxterm, align 4
  %376 = add nsw i32 %374, %375
  %377 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 5
  store i32 %376, i32* %377, align 8
  %378 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 1
  store i32 0, i32* %378, align 8
  %379 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 2
  store i32 0, i32* %379, align 4
  %380 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 3
  store i32 0, i32* %380, align 8
  %381 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 4
  store i32 0, i32* %381, align 4
  %382 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 6
  store i32 0, i32* %382, align 4
  %383 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 7
  store i32 %.02, i32* %383, align 8
  %384 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 8
  store i32 0, i32* %384, align 4
  %385 = getelementptr inbounds %struct.netbox, %struct.netbox* %371, i64 0, i32 9
  store i32 0, i32* %385, align 8
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #6
  %387 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.073, i64 0, i32 8
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = getelementptr inbounds %struct.termbox, %struct.termbox* %.079, i64 0, i32 0
  %391 = load %struct.termbox*, %struct.termbox** %390, align 8
  %392 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #6
  %393 = bitcast i8* %392 to %struct.termbox*
  %394 = bitcast %struct.termbox* %.079 to i8**
  store i8* %392, i8** %394, align 8
  %395 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 0
  store %struct.termbox* %391, %struct.termbox** %395, align 8
  %396 = load i32, i32* @ecount, align 4
  %397 = load i32, i32* @maxterm, align 4
  %398 = add nsw i32 %396, %397
  %399 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 5
  store i32 %398, i32* %399, align 8
  %400 = load i32, i32* %3, align 4
  %401 = sub nsw i32 %400, %.09
  %402 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 1
  store i32 %401, i32* %402, align 8
  %403 = load i32, i32* %4, align 4
  %404 = sub nsw i32 %403, %.012
  %405 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 2
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* %3, align 4
  %407 = sub nsw i32 %406, %.09
  %408 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 3
  store i32 %407, i32* %408, align 8
  %409 = load i32, i32* %4, align 4
  %410 = sub nsw i32 %409, %.012
  %411 = getelementptr inbounds %struct.termbox, %struct.termbox* %393, i64 0, i32 4
  store i32 %410, i32* %411, align 4
  br label %471

412:                                              ; preds = %341
  %413 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp99 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %413, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 6)
  %414 = icmp eq i32 %bcmp99, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), double* noundef nonnull %14) #6
  br label %470

417:                                              ; preds = %412
  %418 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp100 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %418, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %419 = icmp eq i32 %bcmp100, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  %421 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), double* noundef nonnull %13) #6
  br label %469

422:                                              ; preds = %417
  %423 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp101 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %423, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64 9)
  %424 = icmp eq i32 %bcmp101, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp102 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %426, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 6)
  %427 = icmp eq i32 %bcmp102, 0
  br i1 %427, label %428, label %468

428:                                              ; preds = %425, %422
  %429 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %5) #6
  br label %430

430:                                              ; preds = %462, %428
  %.162 = phi i32 [ %.061, %428 ], [ %439, %462 ]
  %.01 = phi i32 [ 1, %428 ], [ %463, %462 ]
  %.2 = phi %struct.netbox* [ %.0, %428 ], [ %.3, %462 ]
  %431 = load i32, i32* %5, align 4
  %.not103 = icmp sgt i32 %.01, %431
  br i1 %.not103, label %464, label %432

432:                                              ; preds = %430
  %433 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %433) #6
  %435 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %436 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %435) #6
  %437 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %438 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %437) #6
  %439 = add nsw i32 %.162, 1
  %440 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %441 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %440) #6
  %442 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %443 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %442) #6
  %444 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %445 = call i32 @hashfind(i8* noundef nonnull %444) #6
  %446 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %446, i64 %447
  %449 = load %struct.dimbox*, %struct.dimbox** %448, align 8
  %450 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %449, i64 0, i32 0
  br label %451

451:                                              ; preds = %457, %432
  %.3.in = phi %struct.netbox** [ %450, %432 ], [ %458, %457 ]
  %.3 = load %struct.netbox*, %struct.netbox** %.3.in, align 8
  %452 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 5
  %453 = load i32, i32* %452, align 8
  %454 = icmp eq i32 %453, %439
  br i1 %454, label %455, label %456

455:                                              ; preds = %451
  br label %459

456:                                              ; preds = %451
  br label %457

457:                                              ; preds = %456
  %458 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 0
  br label %451

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 7
  store i32 %.02, i32* %460, align 8
  %461 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 8
  store i32 1, i32* %461, align 4
  br label %462

462:                                              ; preds = %459
  %463 = add nuw nsw i32 %.01, 1
  br label %430, !llvm.loop !15

464:                                              ; preds = %430
  %465 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %465) #6
  %467 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %6, i32* noundef nonnull %7) #6
  br label %468

468:                                              ; preds = %464, %425
  %.263 = phi i32 [ %.162, %464 ], [ %.061, %425 ]
  %.4 = phi %struct.netbox* [ %.2, %464 ], [ %.0, %425 ]
  br label %469

469:                                              ; preds = %468, %420
  %.364 = phi i32 [ %.061, %420 ], [ %.263, %468 ]
  %.5 = phi %struct.netbox* [ %.0, %420 ], [ %.4, %468 ]
  br label %470

470:                                              ; preds = %469, %415
  %.465 = phi i32 [ %.061, %415 ], [ %.364, %469 ]
  %.6 = phi %struct.netbox* [ %.0, %415 ], [ %.5, %469 ]
  br label %471

471:                                              ; preds = %470, %344
  %.382 = phi %struct.termbox* [ %393, %344 ], [ %.079, %470 ]
  %.566 = phi i32 [ %.061, %344 ], [ %.465, %470 ]
  %.7 = phi %struct.netbox* [ %371, %344 ], [ %.6, %470 ]
  br label %472

472:                                              ; preds = %471, %340
  %.483 = phi %struct.termbox* [ %.281, %340 ], [ %.382, %471 ]
  %.667 = phi i32 [ %293, %340 ], [ %.566, %471 ]
  %.8 = phi %struct.netbox* [ %.1, %340 ], [ %.7, %471 ]
  br label %473

473:                                              ; preds = %472, %280
  %.584 = phi %struct.termbox* [ %.079, %280 ], [ %.483, %472 ]
  %.174 = phi %struct.cellbox* [ %252, %280 ], [ %.073, %472 ]
  %.768 = phi i32 [ %.061, %280 ], [ %.667, %472 ]
  %.14 = phi i32 [ %249, %280 ], [ %.02, %472 ]
  %.9 = phi %struct.netbox* [ %.0, %280 ], [ %.8, %472 ]
  br label %474

474:                                              ; preds = %473, %242
  %.685 = phi %struct.termbox* [ %.079, %242 ], [ %.584, %473 ]
  %.275 = phi %struct.cellbox* [ %.073, %242 ], [ %.174, %473 ]
  %.869 = phi i32 [ %.061, %242 ], [ %.768, %473 ]
  %.25 = phi i32 [ %.02, %242 ], [ %.14, %473 ]
  %.10 = phi %struct.netbox* [ %.0, %242 ], [ %.9, %473 ]
  br label %475

475:                                              ; preds = %474, %238
  %.786 = phi %struct.termbox* [ %.079, %238 ], [ %.685, %474 ]
  %.376 = phi %struct.cellbox* [ %.073, %238 ], [ %.275, %474 ]
  %.970 = phi i32 [ %.061, %238 ], [ %.869, %474 ]
  %.36 = phi i32 [ %.02, %238 ], [ %.25, %474 ]
  %.11 = phi %struct.netbox* [ %.0, %238 ], [ %.10, %474 ]
  br label %476

476:                                              ; preds = %475, %216
  %.887 = phi %struct.termbox* [ %.079, %216 ], [ %.786, %475 ]
  %.477 = phi %struct.cellbox* [ %135, %216 ], [ %.376, %475 ]
  %.1071 = phi i32 [ %.061, %216 ], [ %.970, %475 ]
  %.759 = phi i32 [ %.456, %216 ], [ %.052, %475 ]
  %.750 = phi i32 [ %.447, %216 ], [ %.043, %475 ]
  %.741 = phi i32 [ %.438, %216 ], [ %.034, %475 ]
  %.732 = phi i32 [ %.429, %216 ], [ %.025, %475 ]
  %.113 = phi i32 [ %220, %216 ], [ %.012, %475 ]
  %.110 = phi i32 [ %218, %216 ], [ %.09, %475 ]
  %.47 = phi i32 [ %132, %216 ], [ %.36, %475 ]
  %.12 = phi %struct.netbox* [ %.0, %216 ], [ %.11, %475 ]
  br label %477

477:                                              ; preds = %476, %127
  %.988 = phi %struct.termbox* [ %.079, %127 ], [ %.887, %476 ]
  %.578 = phi %struct.cellbox* [ %29, %127 ], [ %.477, %476 ]
  %.1172 = phi i32 [ %.061, %127 ], [ %.1071, %476 ]
  %.860 = phi i32 [ %.153, %127 ], [ %.759, %476 ]
  %.851 = phi i32 [ %.144, %127 ], [ %.750, %476 ]
  %.842 = phi i32 [ %.135, %127 ], [ %.741, %476 ]
  %.833 = phi i32 [ %.126, %127 ], [ %.732, %476 ]
  %.214 = phi i32 [ %114, %127 ], [ %.113, %476 ]
  %.211 = phi i32 [ %112, %127 ], [ %.110, %476 ]
  %.58 = phi i32 [ %26, %127 ], [ %.47, %476 ]
  %.13 = phi %struct.netbox* [ %.0, %127 ], [ %.12, %476 ]
  br label %17, !llvm.loop !16

478:                                              ; preds = %17
  call void @ggenorien() #6
  ret void
}

declare dso_local void @gpass2(%struct._IO_FILE* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @hashfind(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local void @ggenorien() #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
