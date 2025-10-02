; ModuleID = './readpnode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readpnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct.path = type { i16*, i32, i32, i32, [5 x i32] }
%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@maxpnode = external dso_local global i32, align 4
@numpins = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to input a net name \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"in the .twf file\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Current net: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to input a pin name \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to input keyword: nodes \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to input keyword: at \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to input a pair of nodes \00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"following keyword nodes in the .twf file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Failed to input an integer following: at \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Found unknown string: < %s >  \00", align 1
@gnodeArray = external dso_local global %struct.gnode**, align 8
@numnodes = external dso_local global i32, align 4
@gtrace = external dso_local global i16**, align 8
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@MAXPATHS = external dso_local global i32, align 4
@savePaths = external dso_local global i16**, align 8
@pnameArray = external dso_local global i8**, align 8
@nnameArray = external dso_local global i8**, align 8
@pinOffset = external dso_local global i32*, align 8
@segList = external dso_local global i16*, align 8
@sourceList = external dso_local global i16*, align 8
@targetList = external dso_local global i16*, align 8
@delSourceList = external dso_local global i16*, align 8
@addTargetList = external dso_local global i16*, align 8
@EXTRASOURCES = external dso_local global i32, align 4
@pathList = external dso_local global i32**, align 8
@pathArray = external dso_local global %struct.path*, align 8
@tempArray = external dso_local global i16*, align 8
@pnodeAlength = dso_local global i32 0, align 4
@pinlist = external dso_local global %struct.quad*, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"Global Routing Net Number: %d\0A\00", align 1
@pnodeArray = external dso_local global %struct.pnode*, align 8
@netSegArray = external dso_local global i16**, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @readpnode(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* @maxpnode, align 4
  store i32 0, i32* @numpins, align 4
  br label %6

6:                                                ; preds = %185, %1
  %.016 = phi i32 [ 0, %1 ], [ %.218, %185 ]
  %.01 = phi i32 [ 0, %1 ], [ %.12, %185 ]
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %7) #8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %186

10:                                               ; preds = %6
  %11 = bitcast [1024 x i8]* %2 to i32*
  %lhsv87 = load i32, i32* %11, align 16
  %.not89 = icmp eq i32 %lhsv87, 7628142
  br i1 %.not89, label %12, label %28

12:                                               ; preds = %10
  %13 = add nsw i32 %.01, 1
  %14 = load i32, i32* @maxpnode, align 4
  %15 = icmp sgt i32 %.016, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 %.016, i32* @maxpnode, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %18) #8
  %.not112 = icmp eq i32 %19, 1
  br i1 %.not112, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %13) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %17
  br label %185

28:                                               ; preds = %10
  %29 = bitcast [1024 x i8]* %2 to i32*
  %lhsv90 = load i32, i32* %29, align 16
  %.not92 = icmp eq i32 %lhsv90, 7235952
  br i1 %.not92, label %30, label %101

30:                                               ; preds = %28
  %31 = load i32, i32* @numpins, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @numpins, align 4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %33) #8
  %.not103 = icmp eq i32 %34, 1
  br i1 %.not103, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %30
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %43) #8
  %.not104 = icmp eq i32 %44, 1
  br i1 %.not104, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %42
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp105 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %53, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 6)
  %.not106 = icmp eq i32 %bcmp105, 0
  br i1 %.not106, label %61, label %54

54:                                               ; preds = %52
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %56 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #8
  %.not107 = icmp eq i32 %63, 2
  br i1 %.not107, label %71, label %64

64:                                               ; preds = %62
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %62
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %72) #8
  %.not108 = icmp eq i32 %73, 1
  br i1 %.not108, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %76 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %75)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %78 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %71
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp109 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %82, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3)
  %.not110 = icmp eq i32 %bcmp109, 0
  br i1 %.not110, label %90, label %83

83:                                               ; preds = %81
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %87 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %86)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef nonnull %5) #8
  %.not111 = icmp eq i32 %92, 1
  br i1 %.not111, label %100, label %93

93:                                               ; preds = %91
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %95 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %91
  br label %184

101:                                              ; preds = %28
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp93 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %102, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %103 = icmp eq i32 %bcmp93, 0
  br i1 %103, label %104, label %175

104:                                              ; preds = %101
  %105 = load i32, i32* @numpins, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @numpins, align 4
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %107) #8
  %.not94 = icmp eq i32 %108, 1
  br i1 %.not94, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %111 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %110)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %113 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %112)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %104
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %117) #8
  %.not95 = icmp eq i32 %118, 1
  br i1 %.not95, label %126, label %119

119:                                              ; preds = %116
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %121 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %120)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %123 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

126:                                              ; preds = %116
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp96 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %127, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 6)
  %.not97 = icmp eq i32 %bcmp96, 0
  br i1 %.not97, label %135, label %128

128:                                              ; preds = %126
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %130 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #8
  %.not98 = icmp eq i32 %137, 2
  br i1 %.not98, label %145, label %138

138:                                              ; preds = %136
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %140 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %139)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

145:                                              ; preds = %136
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %146) #8
  %.not99 = icmp eq i32 %147, 1
  br i1 %.not99, label %155, label %148

148:                                              ; preds = %145
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %150 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %149)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %152 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %151)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %153, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %145
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp100 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %156, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3)
  %.not101 = icmp eq i32 %bcmp100, 0
  br i1 %.not101, label %164, label %157

157:                                              ; preds = %155
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %159 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %158)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %161 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %160)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef nonnull %5) #8
  %.not102 = icmp eq i32 %166, 1
  br i1 %.not102, label %174, label %167

167:                                              ; preds = %165
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %169 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %168)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %171 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %170)
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %172, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

174:                                              ; preds = %165
  br label %183

175:                                              ; preds = %101
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %177) #8
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %180 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %179)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %181, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #8
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

183:                                              ; preds = %174
  br label %184

184:                                              ; preds = %183, %100
  %.117 = add nsw i32 %.016, 1
  br label %185

185:                                              ; preds = %184, %27
  %.218 = phi i32 [ 0, %27 ], [ %.117, %184 ]
  %.12 = phi i32 [ %13, %27 ], [ %.01, %184 ]
  br label %6, !llvm.loop !4

186:                                              ; preds = %6
  %187 = load i32, i32* @maxpnode, align 4
  %188 = icmp sgt i32 %.016, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 %.016, i32* @maxpnode, align 4
  br label %190

190:                                              ; preds = %189, %186
  call void @rewind(%struct._IO_FILE* noundef %0) #8
  %191 = load i8*, i8** bitcast (%struct.gnode*** @gnodeArray to i8**), align 8
  %192 = load i32, i32* @numnodes, align 4
  %193 = add nsw i32 %192, 1
  %194 = load i32, i32* @maxpnode, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 3
  %198 = call i8* @realloc(i8* noundef %191, i64 noundef %197) #8
  store i8* %198, i8** bitcast (%struct.gnode*** @gnodeArray to i8**), align 8
  %199 = load i32, i32* @numnodes, align 4
  br label %200

200:                                              ; preds = %208, %190
  %.05.in = phi i32 [ %199, %190 ], [ %.05, %208 ]
  %.05 = add nsw i32 %.05.in, 1
  %201 = load i32, i32* @numnodes, align 4
  %202 = load i32, i32* @maxpnode, align 4
  %203 = add nsw i32 %201, %202
  %.not.not = icmp slt i32 %.05.in, %203
  br i1 %.not.not, label %204, label %209

204:                                              ; preds = %200
  %205 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %206 = sext i32 %.05 to i64
  %207 = getelementptr inbounds %struct.gnode*, %struct.gnode** %205, i64 %206
  store %struct.gnode* null, %struct.gnode** %207, align 8
  br label %208

208:                                              ; preds = %204
  br label %200, !llvm.loop !6

209:                                              ; preds = %200
  %210 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  store i8* %210, i8** bitcast (i16*** @gtrace to i8**), align 8
  br label %211

211:                                              ; preds = %223, %209
  %.16 = phi i32 [ 1, %209 ], [ %224, %223 ]
  %212 = icmp ult i32 %.16, 5
  br i1 %212, label %213, label %225

213:                                              ; preds = %211
  %214 = load i32, i32* @maxpnode, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = shl nsw i64 %216, 1
  %218 = call noalias i8* @malloc(i64 noundef %217) #8
  %219 = load i16**, i16*** @gtrace, align 8
  %220 = zext i32 %.16 to i64
  %221 = getelementptr inbounds i16*, i16** %219, i64 %220
  %222 = bitcast i16** %221 to i8**
  store i8* %218, i8** %222, align 8
  br label %223

223:                                              ; preds = %213
  %224 = add nuw nsw i32 %.16, 1
  br label %211, !llvm.loop !7

225:                                              ; preds = %211
  store i32 %.01, i32* @largestNet, align 4
  %226 = add nsw i32 %.01, 1
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %227, 24
  %229 = call noalias i8* @malloc(i64 noundef %228) #8
  store i8* %229, i8** bitcast (%struct.nrbox** @netRoutes to i8**), align 8
  br label %230

230:                                              ; preds = %275, %225
  %.27 = phi i32 [ 1, %225 ], [ %276, %275 ]
  %231 = load i32, i32* @largestNet, align 4
  %.not = icmp sgt i32 %.27, %231
  br i1 %.not, label %277, label %232

232:                                              ; preds = %230
  %233 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %234 = zext i32 %.27 to i64
  %235 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %233, i64 %234, i32 2
  store i32 1, i32* %235, align 4
  %236 = load i32, i32* @MAXPATHS, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = shl nsw i64 %238, 3
  %240 = call noalias i8* @malloc(i64 noundef %239) #8
  %241 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %242 = zext i32 %.27 to i64
  %243 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %241, i64 %242, i32 0
  %244 = bitcast %struct.altbox*** %243 to i8**
  store i8* %240, i8** %244, align 8
  br label %245

245:                                              ; preds = %272, %232
  %.011 = phi i32 [ 1, %232 ], [ %273, %272 ]
  %246 = load i32, i32* @MAXPATHS, align 4
  %.not86 = icmp sgt i32 %.011, %246
  br i1 %.not86, label %274, label %247

247:                                              ; preds = %245
  %248 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #8
  %249 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %250 = zext i32 %.27 to i64
  %251 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %249, i64 %250, i32 0
  %252 = load %struct.altbox**, %struct.altbox*** %251, align 8
  %253 = zext i32 %.011 to i64
  %254 = getelementptr inbounds %struct.altbox*, %struct.altbox** %252, i64 %253
  %255 = bitcast %struct.altbox** %254 to i8**
  store i8* %248, i8** %255, align 8
  %256 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %257 = zext i32 %.27 to i64
  %258 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %256, i64 %257, i32 0
  %259 = load %struct.altbox**, %struct.altbox*** %258, align 8
  %260 = zext i32 %.011 to i64
  %261 = getelementptr inbounds %struct.altbox*, %struct.altbox** %259, i64 %260
  %262 = load %struct.altbox*, %struct.altbox** %261, align 8
  %263 = getelementptr inbounds %struct.altbox, %struct.altbox* %262, i64 0, i32 0
  store i32* null, i32** %263, align 8
  %264 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %265 = zext i32 %.27 to i64
  %266 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %264, i64 %265, i32 0
  %267 = load %struct.altbox**, %struct.altbox*** %266, align 8
  %268 = zext i32 %.011 to i64
  %269 = getelementptr inbounds %struct.altbox*, %struct.altbox** %267, i64 %268
  %270 = load %struct.altbox*, %struct.altbox** %269, align 8
  %271 = getelementptr inbounds %struct.altbox, %struct.altbox* %270, i64 0, i32 2
  store %struct.chanbox* null, %struct.chanbox** %271, align 8
  br label %272

272:                                              ; preds = %247
  %273 = add nuw nsw i32 %.011, 1
  br label %245, !llvm.loop !8

274:                                              ; preds = %245
  br label %275

275:                                              ; preds = %274
  %276 = add nuw nsw i32 %.27, 1
  br label %230, !llvm.loop !9

277:                                              ; preds = %230
  %278 = load i32, i32* @MAXPATHS, align 4
  %279 = shl nsw i32 %278, 1
  %280 = or i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 3
  %283 = call noalias i8* @malloc(i64 noundef %282) #8
  store i8* %283, i8** bitcast (i16*** @savePaths to i8**), align 8
  br label %284

284:                                              ; preds = %300, %277
  %.38 = phi i32 [ 1, %277 ], [ %301, %300 ]
  %285 = load i32, i32* @MAXPATHS, align 4
  %286 = shl nsw i32 %285, 1
  %.not63 = icmp sgt i32 %.38, %286
  br i1 %.not63, label %302, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* @numnodes, align 4
  %289 = load i32, i32* @maxpnode, align 4
  %290 = add nsw i32 %288, %289
  %291 = mul nsw i32 %290, 3
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = shl nsw i64 %293, 1
  %295 = call noalias i8* @malloc(i64 noundef %294) #8
  %296 = load i16**, i16*** @savePaths, align 8
  %297 = zext i32 %.38 to i64
  %298 = getelementptr inbounds i16*, i16** %296, i64 %297
  %299 = bitcast i16** %298 to i8**
  store i8* %295, i8** %299, align 8
  br label %300

300:                                              ; preds = %287
  %301 = add nuw nsw i32 %.38, 1
  br label %284, !llvm.loop !10

302:                                              ; preds = %284
  %303 = load i32, i32* @numpins, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = shl nsw i64 %305, 3
  %307 = call noalias i8* @malloc(i64 noundef %306) #8
  store i8* %307, i8** bitcast (i8*** @pnameArray to i8**), align 8
  br label %308

308:                                              ; preds = %314, %302
  %.4 = phi i32 [ 1, %302 ], [ %315, %314 ]
  %309 = load i32, i32* @numpins, align 4
  %.not64 = icmp sgt i32 %.4, %309
  br i1 %.not64, label %316, label %310

310:                                              ; preds = %308
  %311 = load i8**, i8*** @pnameArray, align 8
  %312 = zext i32 %.4 to i64
  %313 = getelementptr inbounds i8*, i8** %311, i64 %312
  store i8* null, i8** %313, align 8
  br label %314

314:                                              ; preds = %310
  %315 = add nuw nsw i32 %.4, 1
  br label %308, !llvm.loop !11

316:                                              ; preds = %308
  %317 = add nsw i32 %.01, 1
  %318 = sext i32 %317 to i64
  %319 = shl nsw i64 %318, 3
  %320 = call noalias i8* @malloc(i64 noundef %319) #8
  store i8* %320, i8** bitcast (i8*** @nnameArray to i8**), align 8
  br label %321

321:                                              ; preds = %326, %316
  %.5 = phi i32 [ 1, %316 ], [ %327, %326 ]
  %.not65 = icmp sgt i32 %.5, %.01
  br i1 %.not65, label %328, label %322

322:                                              ; preds = %321
  %323 = load i8**, i8*** @nnameArray, align 8
  %324 = zext i32 %.5 to i64
  %325 = getelementptr inbounds i8*, i8** %323, i64 %324
  store i8* null, i8** %325, align 8
  br label %326

326:                                              ; preds = %322
  %327 = add nuw nsw i32 %.5, 1
  br label %321, !llvm.loop !12

328:                                              ; preds = %321
  %329 = add nsw i32 %.01, 1
  %330 = sext i32 %329 to i64
  %331 = shl nsw i64 %330, 2
  %332 = call noalias i8* @malloc(i64 noundef %331) #8
  store i8* %332, i8** bitcast (i32** @pinOffset to i8**), align 8
  br label %333

333:                                              ; preds = %338, %328
  %.6 = phi i32 [ 1, %328 ], [ %339, %338 ]
  %.not66 = icmp sgt i32 %.6, %.01
  br i1 %.not66, label %340, label %334

334:                                              ; preds = %333
  %335 = load i32*, i32** @pinOffset, align 8
  %336 = zext i32 %.6 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32 0, i32* %337, align 4
  br label %338

338:                                              ; preds = %334
  %339 = add nuw nsw i32 %.6, 1
  br label %333, !llvm.loop !13

340:                                              ; preds = %333
  %341 = load i32, i32* @numnodes, align 4
  %342 = load i32, i32* @maxpnode, align 4
  %343 = add nsw i32 %341, %342
  %344 = mul nsw i32 %343, 3
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = shl nsw i64 %346, 1
  %348 = call noalias i8* @malloc(i64 noundef %347) #8
  store i8* %348, i8** bitcast (i16** @segList to i8**), align 8
  %349 = load i32, i32* @maxpnode, align 4
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = shl nsw i64 %351, 1
  %353 = call noalias i8* @malloc(i64 noundef %352) #8
  store i8* %353, i8** bitcast (i16** @sourceList to i8**), align 8
  %354 = add nsw i32 %349, 1
  %355 = load i32, i32* @numnodes, align 4
  %356 = add nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = shl nsw i64 %357, 1
  %359 = call noalias i8* @malloc(i64 noundef %358) #8
  store i8* %359, i8** bitcast (i16** @targetList to i8**), align 8
  %360 = load i32, i32* @maxpnode, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = shl nsw i64 %362, 1
  %364 = call noalias i8* @malloc(i64 noundef %363) #8
  store i8* %364, i8** bitcast (i16** @delSourceList to i8**), align 8
  %365 = add nsw i32 %360, 1
  %366 = load i32, i32* @numnodes, align 4
  %367 = add nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = shl nsw i64 %368, 1
  %370 = call noalias i8* @malloc(i64 noundef %369) #8
  store i8* %370, i8** bitcast (i16** @addTargetList to i8**), align 8
  %371 = load i32, i32* @EXTRASOURCES, align 4
  %372 = load i32, i32* @MAXPATHS, align 4
  %373 = mul nsw i32 %371, %372
  %374 = add nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = shl nsw i64 %375, 3
  %377 = call noalias i8* @malloc(i64 noundef %376) #8
  store i8* %377, i8** bitcast (i32*** @pathList to i8**), align 8
  br label %378

378:                                              ; preds = %409, %340
  %.7 = phi i32 [ 1, %340 ], [ %410, %409 ]
  %379 = load i32, i32* @EXTRASOURCES, align 4
  %380 = load i32, i32* @MAXPATHS, align 4
  %381 = mul nsw i32 %379, %380
  %.not67 = icmp sgt i32 %.7, %381
  br i1 %.not67, label %411, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* @numnodes, align 4
  %384 = add nsw i32 %383, 2
  %385 = load i32, i32* @maxpnode, align 4
  %386 = add nsw i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = shl nsw i64 %387, 2
  %389 = call noalias i8* @malloc(i64 noundef %388) #8
  %390 = load i32**, i32*** @pathList, align 8
  %391 = zext i32 %.7 to i64
  %392 = getelementptr inbounds i32*, i32** %390, i64 %391
  %393 = bitcast i32** %392 to i8**
  store i8* %389, i8** %393, align 8
  br label %394

394:                                              ; preds = %406, %382
  %.112 = phi i32 [ 0, %382 ], [ %407, %406 ]
  %395 = load i32, i32* @numnodes, align 4
  %396 = load i32, i32* @maxpnode, align 4
  %397 = add nsw i32 %395, %396
  %398 = add nsw i32 %397, 1
  %.not85 = icmp sgt i32 %.112, %398
  br i1 %.not85, label %408, label %399

399:                                              ; preds = %394
  %400 = load i32**, i32*** @pathList, align 8
  %401 = zext i32 %.7 to i64
  %402 = getelementptr inbounds i32*, i32** %400, i64 %401
  %403 = load i32*, i32** %402, align 8
  %404 = zext i32 %.112 to i64
  %405 = getelementptr inbounds i32, i32* %403, i64 %404
  store i32 0, i32* %405, align 4
  br label %406

406:                                              ; preds = %399
  %407 = add nuw nsw i32 %.112, 1
  br label %394, !llvm.loop !14

408:                                              ; preds = %394
  br label %409

409:                                              ; preds = %408
  %410 = add nuw nsw i32 %.7, 1
  br label %378, !llvm.loop !15

411:                                              ; preds = %378
  %412 = load i32, i32* @MAXPATHS, align 4
  %413 = shl nsw i32 %412, 1
  %414 = add nsw i32 %413, 3
  %415 = sext i32 %414 to i64
  %416 = mul nsw i64 %415, 40
  %417 = call noalias i8* @malloc(i64 noundef %416) #8
  store i8* %417, i8** bitcast (%struct.path** @pathArray to i8**), align 8
  br label %418

418:                                              ; preds = %434, %411
  %.8 = phi i32 [ 1, %411 ], [ %435, %434 ]
  %419 = load i32, i32* @MAXPATHS, align 4
  %420 = shl nsw i32 %419, 1
  %421 = add nsw i32 %420, 2
  %.not68 = icmp sgt i32 %.8, %421
  br i1 %.not68, label %436, label %422

422:                                              ; preds = %418
  %423 = load i32, i32* @numnodes, align 4
  %424 = add nsw i32 %423, 1
  %425 = load i32, i32* @maxpnode, align 4
  %426 = add nsw i32 %424, %425
  %427 = sext i32 %426 to i64
  %428 = shl nsw i64 %427, 1
  %429 = call noalias i8* @malloc(i64 noundef %428) #8
  %430 = load %struct.path*, %struct.path** @pathArray, align 8
  %431 = zext i32 %.8 to i64
  %432 = getelementptr inbounds %struct.path, %struct.path* %430, i64 %431, i32 0
  %433 = bitcast i16** %432 to i8**
  store i8* %429, i8** %433, align 8
  br label %434

434:                                              ; preds = %422
  %435 = add nuw nsw i32 %.8, 1
  br label %418, !llvm.loop !16

436:                                              ; preds = %418
  %437 = load i32, i32* @numnodes, align 4
  %438 = add nsw i32 %437, 1
  %439 = load i32, i32* @maxpnode, align 4
  %440 = add nsw i32 %438, %439
  %441 = sext i32 %440 to i64
  %442 = shl nsw i64 %441, 1
  %443 = call noalias i8* @malloc(i64 noundef %442) #8
  store i8* %443, i8** bitcast (i16** @tempArray to i8**), align 8
  store i32 0, i32* @pnodeAlength, align 4
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  br label %444

444:                                              ; preds = %673, %436
  %.025 = phi %struct.quad* [ null, %436 ], [ %.530, %673 ]
  %.319 = phi i32 [ 0, %436 ], [ %.622, %673 ]
  %.013 = phi i32 [ undef, %436 ], [ %.215, %673 ]
  %.23 = phi i32 [ 0, %436 ], [ %.34, %673 ]
  %.0 = phi i32 [ 0, %436 ], [ %.3, %673 ]
  %445 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %446 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %445) #8
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %674

448:                                              ; preds = %444
  %449 = bitcast [1024 x i8]* %2 to i32*
  %lhsv = load i32, i32* %449, align 16
  %.not74 = icmp eq i32 %lhsv, 7628142
  br i1 %.not74, label %450, label %586

450:                                              ; preds = %448
  %451 = icmp sgt i32 %.23, 0
  br i1 %451, label %452, label %561

452:                                              ; preds = %450
  %453 = srem i32 %.23, 10
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %452
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %456, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 noundef %.23) #8
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %459 = call i32 @fflush(%struct._IO_FILE* noundef %458) #8
  br label %460

460:                                              ; preds = %455, %452
  %461 = load i32, i32* @pnodeAlength, align 4
  %462 = icmp sgt i32 %.319, %461
  br i1 %462, label %470, label %463

463:                                              ; preds = %460
  %464 = load i32, i32* @pnodeAlength, align 4
  %465 = icmp sgt i32 %464, 30
  br i1 %465, label %466, label %560

466:                                              ; preds = %463
  %467 = shl nsw i32 %.319, 1
  %468 = load i32, i32* @pnodeAlength, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %560

470:                                              ; preds = %466, %460
  %471 = load i32, i32* @pnodeAlength, align 4
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %515

473:                                              ; preds = %470
  br label %474

474:                                              ; preds = %498, %473
  %.9 = phi i32 [ 1, %473 ], [ %499, %498 ]
  %475 = load i32, i32* @pnodeAlength, align 4
  %.not82 = icmp sgt i32 %.9, %475
  br i1 %.not82, label %500, label %476

476:                                              ; preds = %474
  %477 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %478 = zext i32 %.9 to i64
  %479 = getelementptr inbounds %struct.pnode, %struct.pnode* %477, i64 %478, i32 2
  %480 = load %struct.list2*, %struct.list2** %479, align 8
  br label %481

481:                                              ; preds = %482, %476
  %.023 = phi %struct.list2* [ %480, %476 ], [ %484, %482 ]
  %.not83 = icmp eq %struct.list2* %.023, null
  br i1 %.not83, label %486, label %482

482:                                              ; preds = %481
  %483 = getelementptr inbounds %struct.list2, %struct.list2* %.023, i64 0, i32 1
  %484 = load %struct.list2*, %struct.list2** %483, align 8
  %485 = bitcast %struct.list2* %.023 to i8*
  call void @free(i8* noundef %485) #8
  br label %481, !llvm.loop !17

486:                                              ; preds = %481
  %487 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %488 = zext i32 %.9 to i64
  %489 = getelementptr inbounds %struct.pnode, %struct.pnode* %487, i64 %488, i32 1
  %490 = load %struct.nnode*, %struct.nnode** %489, align 8
  %.not84 = icmp eq %struct.nnode* %490, null
  br i1 %.not84, label %497, label %491

491:                                              ; preds = %486
  %492 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %493 = zext i32 %.9 to i64
  %494 = getelementptr inbounds %struct.pnode, %struct.pnode* %492, i64 %493, i32 1
  %495 = bitcast %struct.nnode** %494 to i8**
  %496 = load i8*, i8** %495, align 8
  call void @free(i8* noundef %496) #8
  br label %497

497:                                              ; preds = %491, %486
  br label %498

498:                                              ; preds = %497
  %499 = add nuw nsw i32 %.9, 1
  br label %474, !llvm.loop !18

500:                                              ; preds = %474
  br label %501

501:                                              ; preds = %510, %500
  %.10 = phi i32 [ 0, %500 ], [ %511, %510 ]
  %502 = load i32, i32* @pnodeAlength, align 4
  %503 = icmp slt i32 %.10, %502
  br i1 %503, label %504, label %512

504:                                              ; preds = %501
  %505 = load i16**, i16*** @netSegArray, align 8
  %506 = zext i32 %.10 to i64
  %507 = getelementptr inbounds i16*, i16** %505, i64 %506
  %508 = bitcast i16** %507 to i8**
  %509 = load i8*, i8** %508, align 8
  call void @free(i8* noundef %509) #8
  br label %510

510:                                              ; preds = %504
  %511 = add nuw nsw i32 %.10, 1
  br label %501, !llvm.loop !19

512:                                              ; preds = %501
  %513 = load i8*, i8** bitcast (%struct.pnode** @pnodeArray to i8**), align 8
  call void @free(i8* noundef %513) #8
  %514 = load i8*, i8** bitcast (i16*** @netSegArray to i8**), align 8
  call void @free(i8* noundef %514) #8
  br label %515

515:                                              ; preds = %512, %470
  store i32 %.319, i32* @pnodeAlength, align 4
  %516 = add nsw i32 %.319, 1
  %517 = sext i32 %516 to i64
  %518 = mul nsw i64 %517, 24
  %519 = call noalias i8* @malloc(i64 noundef %518) #8
  store i8* %519, i8** bitcast (%struct.pnode** @pnodeArray to i8**), align 8
  br label %520

520:                                              ; preds = %538, %515
  %.11 = phi i32 [ 1, %515 ], [ %539, %538 ]
  %.not81 = icmp sgt i32 %.11, %.319
  br i1 %.not81, label %540, label %521

521:                                              ; preds = %520
  %522 = load i32, i32* @numnodes, align 4
  %523 = add nsw i32 %522, 1
  %524 = add nsw i32 %523, %.319
  %525 = sext i32 %524 to i64
  %526 = mul nsw i64 %525, 12
  %527 = call noalias i8* @malloc(i64 noundef %526) #8
  %528 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %529 = zext i32 %.11 to i64
  %530 = getelementptr inbounds %struct.pnode, %struct.pnode* %528, i64 %529, i32 1
  %531 = bitcast %struct.nnode** %530 to i8**
  store i8* %527, i8** %531, align 8
  %532 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %533 = zext i32 %.11 to i64
  %534 = getelementptr inbounds %struct.pnode, %struct.pnode* %532, i64 %533, i32 0
  store i32 0, i32* %534, align 8
  %535 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %536 = zext i32 %.11 to i64
  %537 = getelementptr inbounds %struct.pnode, %struct.pnode* %535, i64 %536, i32 2
  store %struct.list2* null, %struct.list2** %537, align 8
  br label %538

538:                                              ; preds = %521
  %539 = add nuw nsw i32 %.11, 1
  br label %520, !llvm.loop !20

540:                                              ; preds = %520
  %541 = sext i32 %.319 to i64
  %542 = shl nsw i64 %541, 3
  %543 = call noalias i8* @malloc(i64 noundef %542) #8
  store i8* %543, i8** bitcast (i16*** @netSegArray to i8**), align 8
  br label %544

544:                                              ; preds = %557, %540
  %.129 = phi i32 [ 0, %540 ], [ %558, %557 ]
  %545 = icmp slt i32 %.129, %.319
  br i1 %545, label %546, label %559

546:                                              ; preds = %544
  %547 = load i32, i32* @numnodes, align 4
  %548 = add nsw i32 %547, 1
  %549 = add nsw i32 %548, %.319
  %550 = sext i32 %549 to i64
  %551 = shl nsw i64 %550, 1
  %552 = call noalias i8* @malloc(i64 noundef %551) #8
  %553 = load i16**, i16*** @netSegArray, align 8
  %554 = zext i32 %.129 to i64
  %555 = getelementptr inbounds i16*, i16** %553, i64 %554
  %556 = bitcast i16** %555 to i8**
  store i8* %552, i8** %556, align 8
  br label %557

557:                                              ; preds = %546
  %558 = add nuw nsw i32 %.129, 1
  br label %544, !llvm.loop !21

559:                                              ; preds = %544
  br label %560

560:                                              ; preds = %559, %466, %463
  call void @procesnet(i32 noundef %.23, i32 noundef %.013, i32 noundef %.319) #8
  br label %561

561:                                              ; preds = %560, %450
  %562 = add nsw i32 %.23, 1
  %563 = load i32*, i32** @pinOffset, align 8
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds i32, i32* %563, i64 %564
  store i32 %.0, i32* %565, align 4
  %566 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %567 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %566) #8
  %568 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %569 = call i64 @strlen(i8* noundef nonnull %568) #10
  %570 = add i64 %569, 1
  %571 = call noalias i8* @malloc(i64 noundef %570) #8
  %572 = load i8**, i8*** @nnameArray, align 8
  %573 = sext i32 %562 to i64
  %574 = getelementptr inbounds i8*, i8** %572, i64 %573
  store i8* %571, i8** %574, align 8
  %575 = load i8**, i8*** @nnameArray, align 8
  %576 = sext i32 %562 to i64
  %577 = getelementptr inbounds i8*, i8** %575, i64 %576
  %578 = load i8*, i8** %577, align 8
  %579 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %strcpy79 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %578, i8* noundef nonnull %579)
  br label %580

580:                                              ; preds = %581, %561
  %.126 = phi %struct.quad* [ %.025, %561 ], [ %583, %581 ]
  %.not80 = icmp eq %struct.quad* %.126, null
  br i1 %.not80, label %585, label %581

581:                                              ; preds = %580
  %582 = getelementptr inbounds %struct.quad, %struct.quad* %.126, i64 0, i32 5
  %583 = load %struct.quad*, %struct.quad** %582, align 8
  %584 = bitcast %struct.quad* %.126 to i8*
  call void @free(i8* noundef %584) #8
  br label %580, !llvm.loop !22

585:                                              ; preds = %580
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  br label %673

586:                                              ; preds = %448
  %587 = bitcast [1024 x i8]* %2 to i32*
  %lhsv75 = load i32, i32* %587, align 16
  %.not77 = icmp eq i32 %lhsv75, 7235952
  br i1 %.not77, label %588, label %632

588:                                              ; preds = %586
  %589 = add nsw i32 %.0, 1
  %590 = add nsw i32 %.319, 1
  %591 = add nsw i32 %.013, 1
  %592 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %593 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %592) #8
  %594 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %595 = call i64 @strlen(i8* noundef nonnull %594) #10
  %596 = add i64 %595, 1
  %597 = call noalias i8* @malloc(i64 noundef %596) #8
  %598 = load i8**, i8*** @pnameArray, align 8
  %599 = sext i32 %589 to i64
  %600 = getelementptr inbounds i8*, i8** %598, i64 %599
  store i8* %597, i8** %600, align 8
  %601 = load i8**, i8*** @pnameArray, align 8
  %602 = sext i32 %589 to i64
  %603 = getelementptr inbounds i8*, i8** %601, i64 %602
  %604 = load i8*, i8** %603, align 8
  %605 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %strcpy78 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %604, i8* noundef nonnull %605)
  %606 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %607 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %606) #8
  %608 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #8
  %609 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %610 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %609) #8
  %611 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef nonnull %5) #8
  %612 = icmp eq %struct.quad* %.025, null
  br i1 %612, label %613, label %617

613:                                              ; preds = %588
  %614 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #8
  %615 = bitcast i8* %614 to %struct.quad*
  store i8* %614, i8** bitcast (%struct.quad** @pinlist to i8**), align 8
  %616 = getelementptr inbounds %struct.quad, %struct.quad* %615, i64 0, i32 5
  store %struct.quad* null, %struct.quad** %616, align 8
  br label %623

617:                                              ; preds = %588
  %618 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #8
  %619 = bitcast i8* %618 to %struct.quad*
  %620 = getelementptr inbounds %struct.quad, %struct.quad* %.025, i64 0, i32 4
  %621 = bitcast %struct.quad** %620 to i8**
  store i8* %618, i8** %621, align 8
  %622 = getelementptr inbounds %struct.quad, %struct.quad* %619, i64 0, i32 5
  store %struct.quad* %.025, %struct.quad** %622, align 8
  br label %623

623:                                              ; preds = %617, %613
  %.227 = phi %struct.quad* [ %615, %613 ], [ %619, %617 ]
  %624 = getelementptr inbounds %struct.quad, %struct.quad* %.227, i64 0, i32 4
  store %struct.quad* null, %struct.quad** %624, align 8
  %625 = getelementptr inbounds %struct.quad, %struct.quad* %.227, i64 0, i32 0
  store i32 1, i32* %625, align 8
  %626 = load i32, i32* %3, align 4
  %627 = getelementptr inbounds %struct.quad, %struct.quad* %.227, i64 0, i32 1
  store i32 %626, i32* %627, align 4
  %628 = load i32, i32* %4, align 4
  %629 = getelementptr inbounds %struct.quad, %struct.quad* %.227, i64 0, i32 2
  store i32 %628, i32* %629, align 8
  %630 = load i32, i32* %5, align 4
  %631 = getelementptr inbounds %struct.quad, %struct.quad* %.227, i64 0, i32 3
  store i32 %630, i32* %631, align 4
  br label %672

632:                                              ; preds = %586
  %633 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %633, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %634 = icmp eq i32 %bcmp, 0
  br i1 %634, label %635, label %671

635:                                              ; preds = %632
  %636 = add nsw i32 %.0, 1
  %637 = add nsw i32 %.319, 1
  %638 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %639 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %638) #8
  %640 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %641 = call i64 @strlen(i8* noundef nonnull %640) #10
  %642 = add i64 %641, 1
  %643 = call noalias i8* @malloc(i64 noundef %642) #8
  %644 = load i8**, i8*** @pnameArray, align 8
  %645 = sext i32 %636 to i64
  %646 = getelementptr inbounds i8*, i8** %644, i64 %645
  store i8* %643, i8** %646, align 8
  %647 = load i8**, i8*** @pnameArray, align 8
  %648 = sext i32 %636 to i64
  %649 = getelementptr inbounds i8*, i8** %647, i64 %648
  %650 = load i8*, i8** %649, align 8
  %651 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %strcpy = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %650, i8* noundef nonnull %651)
  %652 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %653 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %652) #8
  %654 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #8
  %655 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %656 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %655) #8
  %657 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef nonnull %5) #8
  %658 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #8
  %659 = bitcast i8* %658 to %struct.quad*
  %660 = getelementptr inbounds %struct.quad, %struct.quad* %.025, i64 0, i32 4
  %661 = bitcast %struct.quad** %660 to i8**
  store i8* %658, i8** %661, align 8
  %662 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 5
  store %struct.quad* %.025, %struct.quad** %662, align 8
  %663 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 4
  store %struct.quad* null, %struct.quad** %663, align 8
  %664 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 0
  store i32 -1, i32* %664, align 8
  %665 = load i32, i32* %3, align 4
  %666 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 1
  store i32 %665, i32* %666, align 4
  %667 = load i32, i32* %4, align 4
  %668 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 2
  store i32 %667, i32* %668, align 8
  %669 = load i32, i32* %5, align 4
  %670 = getelementptr inbounds %struct.quad, %struct.quad* %659, i64 0, i32 3
  store i32 %669, i32* %670, align 4
  br label %671

671:                                              ; preds = %635, %632
  %.328 = phi %struct.quad* [ %659, %635 ], [ %.025, %632 ]
  %.420 = phi i32 [ %637, %635 ], [ %.319, %632 ]
  %.1 = phi i32 [ %636, %635 ], [ %.0, %632 ]
  br label %672

672:                                              ; preds = %671, %623
  %.429 = phi %struct.quad* [ %.227, %623 ], [ %.328, %671 ]
  %.521 = phi i32 [ %590, %623 ], [ %.420, %671 ]
  %.114 = phi i32 [ %591, %623 ], [ %.013, %671 ]
  %.2 = phi i32 [ %589, %623 ], [ %.1, %671 ]
  br label %673

673:                                              ; preds = %672, %585
  %.530 = phi %struct.quad* [ null, %585 ], [ %.429, %672 ]
  %.622 = phi i32 [ 0, %585 ], [ %.521, %672 ]
  %.215 = phi i32 [ 0, %585 ], [ %.114, %672 ]
  %.34 = phi i32 [ %562, %585 ], [ %.23, %672 ]
  %.3 = phi i32 [ %.0, %585 ], [ %.2, %672 ]
  br label %444, !llvm.loop !23

674:                                              ; preds = %444
  %675 = load i32, i32* @pnodeAlength, align 4
  %676 = icmp sgt i32 %.319, %675
  br i1 %676, label %681, label %677

677:                                              ; preds = %674
  %678 = mul nsw i32 %.319, 10
  %679 = load i32, i32* @pnodeAlength, align 4
  %680 = icmp slt i32 %678, %679
  br i1 %680, label %681, label %771

681:                                              ; preds = %677, %674
  %682 = load i32, i32* @pnodeAlength, align 4
  %683 = icmp sgt i32 %682, 0
  br i1 %683, label %684, label %726

684:                                              ; preds = %681
  br label %685

685:                                              ; preds = %709, %684
  %.13 = phi i32 [ 1, %684 ], [ %710, %709 ]
  %686 = load i32, i32* @pnodeAlength, align 4
  %.not70 = icmp sgt i32 %.13, %686
  br i1 %.not70, label %711, label %687

687:                                              ; preds = %685
  %688 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %689 = zext i32 %.13 to i64
  %690 = getelementptr inbounds %struct.pnode, %struct.pnode* %688, i64 %689, i32 2
  %691 = load %struct.list2*, %struct.list2** %690, align 8
  br label %692

692:                                              ; preds = %693, %687
  %.124 = phi %struct.list2* [ %691, %687 ], [ %695, %693 ]
  %.not71 = icmp eq %struct.list2* %.124, null
  br i1 %.not71, label %697, label %693

693:                                              ; preds = %692
  %694 = getelementptr inbounds %struct.list2, %struct.list2* %.124, i64 0, i32 1
  %695 = load %struct.list2*, %struct.list2** %694, align 8
  %696 = bitcast %struct.list2* %.124 to i8*
  call void @free(i8* noundef %696) #8
  br label %692, !llvm.loop !24

697:                                              ; preds = %692
  %698 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %699 = zext i32 %.13 to i64
  %700 = getelementptr inbounds %struct.pnode, %struct.pnode* %698, i64 %699, i32 1
  %701 = load %struct.nnode*, %struct.nnode** %700, align 8
  %.not72 = icmp eq %struct.nnode* %701, null
  br i1 %.not72, label %708, label %702

702:                                              ; preds = %697
  %703 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %704 = zext i32 %.13 to i64
  %705 = getelementptr inbounds %struct.pnode, %struct.pnode* %703, i64 %704, i32 1
  %706 = bitcast %struct.nnode** %705 to i8**
  %707 = load i8*, i8** %706, align 8
  call void @free(i8* noundef %707) #8
  br label %708

708:                                              ; preds = %702, %697
  br label %709

709:                                              ; preds = %708
  %710 = add nuw nsw i32 %.13, 1
  br label %685, !llvm.loop !25

711:                                              ; preds = %685
  br label %712

712:                                              ; preds = %721, %711
  %.14 = phi i32 [ 0, %711 ], [ %722, %721 ]
  %713 = load i32, i32* @pnodeAlength, align 4
  %714 = icmp slt i32 %.14, %713
  br i1 %714, label %715, label %723

715:                                              ; preds = %712
  %716 = load i16**, i16*** @netSegArray, align 8
  %717 = zext i32 %.14 to i64
  %718 = getelementptr inbounds i16*, i16** %716, i64 %717
  %719 = bitcast i16** %718 to i8**
  %720 = load i8*, i8** %719, align 8
  call void @free(i8* noundef %720) #8
  br label %721

721:                                              ; preds = %715
  %722 = add nuw nsw i32 %.14, 1
  br label %712, !llvm.loop !26

723:                                              ; preds = %712
  %724 = load i8*, i8** bitcast (%struct.pnode** @pnodeArray to i8**), align 8
  call void @free(i8* noundef %724) #8
  %725 = load i8*, i8** bitcast (i16*** @netSegArray to i8**), align 8
  call void @free(i8* noundef %725) #8
  br label %726

726:                                              ; preds = %723, %681
  store i32 %.319, i32* @pnodeAlength, align 4
  %727 = add nsw i32 %.319, 1
  %728 = sext i32 %727 to i64
  %729 = mul nsw i64 %728, 24
  %730 = call noalias i8* @malloc(i64 noundef %729) #8
  store i8* %730, i8** bitcast (%struct.pnode** @pnodeArray to i8**), align 8
  br label %731

731:                                              ; preds = %749, %726
  %.15 = phi i32 [ 1, %726 ], [ %750, %749 ]
  %.not69 = icmp sgt i32 %.15, %.319
  br i1 %.not69, label %751, label %732

732:                                              ; preds = %731
  %733 = load i32, i32* @numnodes, align 4
  %734 = add nsw i32 %733, 1
  %735 = add nsw i32 %734, %.319
  %736 = sext i32 %735 to i64
  %737 = mul nsw i64 %736, 12
  %738 = call noalias i8* @malloc(i64 noundef %737) #8
  %739 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %740 = zext i32 %.15 to i64
  %741 = getelementptr inbounds %struct.pnode, %struct.pnode* %739, i64 %740, i32 1
  %742 = bitcast %struct.nnode** %741 to i8**
  store i8* %738, i8** %742, align 8
  %743 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %744 = zext i32 %.15 to i64
  %745 = getelementptr inbounds %struct.pnode, %struct.pnode* %743, i64 %744, i32 0
  store i32 0, i32* %745, align 8
  %746 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %747 = zext i32 %.15 to i64
  %748 = getelementptr inbounds %struct.pnode, %struct.pnode* %746, i64 %747, i32 2
  store %struct.list2* null, %struct.list2** %748, align 8
  br label %749

749:                                              ; preds = %732
  %750 = add nuw nsw i32 %.15, 1
  br label %731, !llvm.loop !27

751:                                              ; preds = %731
  %752 = sext i32 %.319 to i64
  %753 = shl nsw i64 %752, 3
  %754 = call noalias i8* @malloc(i64 noundef %753) #8
  store i8* %754, i8** bitcast (i16*** @netSegArray to i8**), align 8
  br label %755

755:                                              ; preds = %768, %751
  %.1610 = phi i32 [ 0, %751 ], [ %769, %768 ]
  %756 = icmp slt i32 %.1610, %.319
  br i1 %756, label %757, label %770

757:                                              ; preds = %755
  %758 = load i32, i32* @numnodes, align 4
  %759 = add nsw i32 %758, 1
  %760 = add nsw i32 %759, %.319
  %761 = sext i32 %760 to i64
  %762 = shl nsw i64 %761, 1
  %763 = call noalias i8* @malloc(i64 noundef %762) #8
  %764 = load i16**, i16*** @netSegArray, align 8
  %765 = zext i32 %.1610 to i64
  %766 = getelementptr inbounds i16*, i16** %764, i64 %765
  %767 = bitcast i16** %766 to i8**
  store i8* %763, i8** %767, align 8
  br label %768

768:                                              ; preds = %757
  %769 = add nuw nsw i32 %.1610, 1
  br label %755, !llvm.loop !28

770:                                              ; preds = %755
  br label %771

771:                                              ; preds = %770, %677
  call void @procesnet(i32 noundef %.23, i32 noundef %.013, i32 noundef %.319) #8
  ret void

UnifiedUnreachableBlock:                          ; preds = %175, %167, %157, %148, %138, %128, %119, %109, %93, %83, %74, %64, %54, %45, %35, %20
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
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local void @procesnet(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
