; ModuleID = './gpass2.ll'
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
  store i32 0, i32* @netctr, align 4
  call void @maketabl() #5
  br label %17

17:                                               ; preds = %192, %1
  %.09 = phi i32 [ 0, %1 ], [ %.312, %192 ]
  %.02 = phi i32 [ 0, %1 ], [ %.6, %192 ]
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %18) #5
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %193

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %22, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %23 = icmp eq i32 %bcmp, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %8) #5
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %26) #5
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %28) #5
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #5
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %31) #5
  br label %33

33:                                               ; preds = %37, %24
  %.06 = phi i32 [ 1, %24 ], [ %38, %37 ]
  %34 = load i32, i32* %9, align 4
  %.not27 = icmp sgt i32 %.06, %34
  br i1 %.not27, label %39, label %35

35:                                               ; preds = %33
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #5
  br label %37

37:                                               ; preds = %35
  %38 = add nuw nsw i32 %.06, 1
  br label %33, !llvm.loop !4

39:                                               ; preds = %33
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %40) #5
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %4) #5
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %12) #5
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %44) #5
  br label %46

46:                                               ; preds = %50, %39
  %.0 = phi i32 [ 1, %39 ], [ %51, %50 ]
  %47 = load i32, i32* %12, align 4
  %.not28 = icmp sgt i32 %.0, %47
  br i1 %.not28, label %52, label %48

48:                                               ; preds = %46
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #5
  br label %50

50:                                               ; preds = %48
  %51 = add nuw nsw i32 %.0, 1
  br label %46, !llvm.loop !6

52:                                               ; preds = %46
  br label %192

53:                                               ; preds = %21
  %54 = bitcast [1024 x i8]* %16 to i32*
  %lhsv = load i32, i32* %54, align 16
  %.not = icmp eq i32 %lhsv, 7235952
  br i1 %.not, label %55, label %68

55:                                               ; preds = %53
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %56) #5
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %58) #5
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %60) #5
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %62) #5
  %64 = add nsw i32 %.02, 1
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %66 = call i32 @addhash(i8* noundef nonnull %65) #5
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  br label %191

68:                                               ; preds = %53
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp14 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %69, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %70 = icmp eq i32 %bcmp14, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = add nsw i32 %.09, 1
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %73) #5
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %75) #5
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  br label %190

78:                                               ; preds = %68
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %79, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 9)
  %80 = icmp eq i32 %bcmp15, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %8) #5
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %83) #5
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %85) #5
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #5
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %88) #5
  br label %90

90:                                               ; preds = %94, %81
  %.17 = phi i32 [ 1, %81 ], [ %95, %94 ]
  %91 = load i32, i32* %9, align 4
  %.not25 = icmp sgt i32 %.17, %91
  br i1 %.not25, label %96, label %92

92:                                               ; preds = %90
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #5
  br label %94

94:                                               ; preds = %92
  %95 = add nuw nsw i32 %.17, 1
  br label %90, !llvm.loop !7

96:                                               ; preds = %90
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %97) #5
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef nonnull %14) #5
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %100) #5
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef nonnull %13) #5
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %103) #5
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %4) #5
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %12) #5
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %107) #5
  br label %109

109:                                              ; preds = %113, %96
  %.1 = phi i32 [ 1, %96 ], [ %114, %113 ]
  %110 = load i32, i32* %12, align 4
  %.not26 = icmp sgt i32 %.1, %110
  br i1 %.not26, label %115, label %111

111:                                              ; preds = %109
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #5
  br label %113

113:                                              ; preds = %111
  %114 = add nuw nsw i32 %.1, 1
  br label %109, !llvm.loop !8

115:                                              ; preds = %109
  br label %189

116:                                              ; preds = %78
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %117, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 9)
  %118 = icmp eq i32 %bcmp16, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %120, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 6)
  %121 = icmp eq i32 %bcmp17, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119, %116
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %5) #5
  br label %124

124:                                              ; preds = %139, %122
  %.13 = phi i32 [ %.02, %122 ], [ %140, %139 ]
  %.01 = phi i32 [ 1, %122 ], [ %141, %139 ]
  %125 = load i32, i32* %5, align 4
  %.not24 = icmp sgt i32 %.01, %125
  br i1 %.not24, label %142, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %127) #5
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %129) #5
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %131) #5
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %133) #5
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %135) #5
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %138 = call i32 @addhash(i8* noundef nonnull %137) #5
  br label %139

139:                                              ; preds = %126
  %140 = add nsw i32 %.13, 1
  %141 = add nuw nsw i32 %.01, 1
  br label %124, !llvm.loop !9

142:                                              ; preds = %124
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %143) #5
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %6, i32* noundef nonnull %7) #5
  br label %188

146:                                              ; preds = %119
  %147 = bitcast [1024 x i8]* %16 to i32*
  %lhsv18 = load i32, i32* %147, align 16
  %.not20 = icmp eq i32 %lhsv18, 6578544
  br i1 %.not20, label %148, label %181

148:                                              ; preds = %146
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %8) #5
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %150) #5
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %152) #5
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %9) #5
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %155) #5
  br label %157

157:                                              ; preds = %161, %148
  %.28 = phi i32 [ 1, %148 ], [ %162, %161 ]
  %158 = load i32, i32* %9, align 4
  %.not22 = icmp sgt i32 %.28, %158
  br i1 %.not22, label %163, label %159

159:                                              ; preds = %157
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %10, i32* noundef nonnull %11) #5
  br label %161

161:                                              ; preds = %159
  %162 = add nuw nsw i32 %.28, 1
  br label %157, !llvm.loop !10

163:                                              ; preds = %157
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %164) #5
  %166 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %166) #5
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %168) #5
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %4) #5
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %12) #5
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %172) #5
  br label %174

174:                                              ; preds = %178, %163
  %.2 = phi i32 [ 1, %163 ], [ %179, %178 ]
  %175 = load i32, i32* %12, align 4
  %.not23 = icmp sgt i32 %.2, %175
  br i1 %.not23, label %180, label %176

176:                                              ; preds = %174
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %10) #5
  br label %178

178:                                              ; preds = %176
  %179 = add nuw nsw i32 %.2, 1
  br label %174, !llvm.loop !11

180:                                              ; preds = %174
  br label %187

181:                                              ; preds = %146
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %182, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 10)
  %183 = icmp eq i32 %bcmp21, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double* noundef nonnull %15) #5
  br label %186

186:                                              ; preds = %184, %181
  br label %187

187:                                              ; preds = %186, %180
  br label %188

188:                                              ; preds = %187, %142
  %.24 = phi i32 [ %.13, %142 ], [ %.02, %187 ]
  br label %189

189:                                              ; preds = %188, %115
  %.3 = phi i32 [ %.02, %115 ], [ %.24, %188 ]
  br label %190

190:                                              ; preds = %189, %71
  %.110 = phi i32 [ %72, %71 ], [ %.09, %189 ]
  %.4 = phi i32 [ %.02, %71 ], [ %.3, %189 ]
  br label %191

191:                                              ; preds = %190, %55
  %.211 = phi i32 [ %.09, %55 ], [ %.110, %190 ]
  %.5 = phi i32 [ %64, %55 ], [ %.4, %190 ]
  br label %192

192:                                              ; preds = %191, %52
  %.312 = phi i32 [ %.09, %52 ], [ %.211, %191 ]
  %.6 = phi i32 [ %.02, %52 ], [ %.5, %191 ]
  br label %17, !llvm.loop !12

193:                                              ; preds = %17
  call void @rewind(%struct._IO_FILE* noundef %0) #5
  %194 = load i8*, i8** bitcast (%struct.termnets*** @termarray to i8**), align 8
  %195 = add nsw i32 %.02, %.09
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = shl nsw i64 %197, 3
  %199 = call i8* @realloc(i8* noundef %194, i64 noundef %198) #5
  store i8* %199, i8** bitcast (%struct.termnets*** @termarray to i8**), align 8
  br label %200

200:                                              ; preds = %206, %193
  %.05.in = phi i32 [ %.02, %193 ], [ %.05, %206 ]
  %.05 = add nsw i32 %.05.in, 1
  %201 = add nsw i32 %.02, %.09
  %.not.not = icmp slt i32 %.05.in, %201
  br i1 %.not.not, label %202, label %207

202:                                              ; preds = %200
  %203 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %204 = sext i32 %.05 to i64
  %205 = getelementptr inbounds %struct.termnets*, %struct.termnets** %203, i64 %204
  store %struct.termnets* null, %struct.termnets** %205, align 8
  br label %206

206:                                              ; preds = %202
  br label %200, !llvm.loop !13

207:                                              ; preds = %200
  %208 = load i8*, i8** bitcast (i8*** @pinnames to i8**), align 8
  %209 = add nsw i32 %.02, %.09
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 3
  %213 = call i8* @realloc(i8* noundef %208, i64 noundef %212) #5
  store i8* %213, i8** bitcast (i8*** @pinnames to i8**), align 8
  ret void
}

declare dso_local void @maketabl() #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @addhash(i8* noundef) #1

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
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
