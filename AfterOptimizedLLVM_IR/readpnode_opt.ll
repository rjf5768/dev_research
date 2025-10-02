; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readpnode.c'
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
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [1024 x i8], align 16
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
  %14 = alloca %struct.list2*, align 8
  %15 = alloca %struct.list2*, align 8
  %16 = alloca %struct.nnode*, align 8
  %17 = alloca %struct.quad*, align 8
  %18 = alloca %struct.quad*, align 8
  %19 = alloca %struct.quad*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* @maxpnode, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* @numpins, align 4
  br label %20

20:                                               ; preds = %269, %1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %270

25:                                               ; preds = %20
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @maxpnode, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* @maxpnode, align 4
  br label %37

37:                                               ; preds = %35, %29
  store i32 0, i32* %13, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %49)
  call void @exit(i32 noundef 0) #6
  unreachable

51:                                               ; preds = %37
  br label %269

52:                                               ; preds = %25
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %54 = call i32 @strcmp(i8* noundef %53, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %155

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @numpins, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @numpins, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %72)
  call void @exit(i32 noundef 0) #6
  unreachable

74:                                               ; preds = %56
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %86)
  call void @exit(i32 noundef 0) #6
  unreachable

88:                                               ; preds = %74
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %90 = call i32 @strcmp(i8* noundef %89, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #5
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %98)
  call void @exit(i32 noundef 0) #6
  unreachable

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef %6, i32* noundef %7)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %107, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %112)
  call void @exit(i32 noundef 0) #6
  unreachable

114:                                              ; preds = %101
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %126)
  call void @exit(i32 noundef 0) #6
  unreachable

128:                                              ; preds = %114
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %130 = call i32 @strcmp(i8* noundef %129, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #5
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %138)
  call void @exit(i32 noundef 0) #6
  unreachable

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef %8)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %151, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %152)
  call void @exit(i32 noundef 0) #6
  unreachable

154:                                              ; preds = %141
  br label %268

155:                                              ; preds = %52
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %157 = call i32 @strcmp(i8* noundef %156, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #5
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %258

159:                                              ; preds = %155
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* @numpins, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @numpins, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %169, label %177

169:                                              ; preds = %159
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %170, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %172, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %174, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %175)
  call void @exit(i32 noundef 0) #6
  unreachable

177:                                              ; preds = %159
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %191

183:                                              ; preds = %177
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %189)
  call void @exit(i32 noundef 0) #6
  unreachable

191:                                              ; preds = %177
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %193 = call i32 @strcmp(i8* noundef %192, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #5
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %200, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %201)
  call void @exit(i32 noundef 0) #6
  unreachable

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %203
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef %6, i32* noundef %7)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 2
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %210, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %212, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %214, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %215)
  call void @exit(i32 noundef 0) #6
  unreachable

217:                                              ; preds = %204
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %219 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %223, label %231

223:                                              ; preds = %217
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %224, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %226, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %229 = load i32, i32* %5, align 4
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %229)
  call void @exit(i32 noundef 0) #6
  unreachable

231:                                              ; preds = %217
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %233 = call i32 @strcmp(i8* noundef %232, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #5
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %236, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %238, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %240, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %241)
  call void @exit(i32 noundef 0) #6
  unreachable

243:                                              ; preds = %231
  br label %244

244:                                              ; preds = %243
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %245, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef %8)
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %250, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %252, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %255 = load i32, i32* %5, align 4
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %255)
  call void @exit(i32 noundef 0) #6
  unreachable

257:                                              ; preds = %244
  br label %267

258:                                              ; preds = %155
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %260 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %259, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %260)
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %262, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %265 = load i32, i32* %5, align 4
  %266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %264, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %265)
  call void @exit(i32 noundef 0) #6
  unreachable

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %267, %154
  br label %269

269:                                              ; preds = %268, %51
  br label %20, !llvm.loop !4

270:                                              ; preds = %20
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* @maxpnode, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* %13, align 4
  store i32 %275, i32* @maxpnode, align 4
  br label %276

276:                                              ; preds = %274, %270
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %277)
  %278 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %279 = bitcast %struct.gnode** %278 to i8*
  %280 = load i32, i32* @numnodes, align 4
  %281 = add nsw i32 1, %280
  %282 = load i32, i32* @maxpnode, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 8
  %286 = call i8* @realloc(i8* noundef %279, i64 noundef %285) #7
  %287 = bitcast i8* %286 to %struct.gnode**
  store %struct.gnode** %287, %struct.gnode*** @gnodeArray, align 8
  %288 = load i32, i32* @numnodes, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %301, %276
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* @numnodes, align 4
  %293 = load i32, i32* @maxpnode, align 4
  %294 = add nsw i32 %292, %293
  %295 = icmp sle i32 %291, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %290
  %297 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.gnode*, %struct.gnode** %297, i64 %299
  store %struct.gnode* null, %struct.gnode** %300, align 8
  br label %301

301:                                              ; preds = %296
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %290, !llvm.loop !6

304:                                              ; preds = %290
  %305 = call noalias i8* @malloc(i64 noundef 40) #7
  %306 = bitcast i8* %305 to i16**
  store i16** %306, i16*** @gtrace, align 8
  store i32 1, i32* %9, align 4
  br label %307

307:                                              ; preds = %321, %304
  %308 = load i32, i32* %9, align 4
  %309 = icmp sle i32 %308, 4
  br i1 %309, label %310, label %324

310:                                              ; preds = %307
  %311 = load i32, i32* @maxpnode, align 4
  %312 = add nsw i32 1, %311
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 2
  %315 = call noalias i8* @malloc(i64 noundef %314) #7
  %316 = bitcast i8* %315 to i16*
  %317 = load i16**, i16*** @gtrace, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i16*, i16** %317, i64 %319
  store i16* %316, i16** %320, align 8
  br label %321

321:                                              ; preds = %310
  %322 = load i32, i32* %9, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %9, align 4
  br label %307, !llvm.loop !7

324:                                              ; preds = %307
  %325 = load i32, i32* %5, align 4
  store i32 %325, i32* @largestNet, align 4
  %326 = load i32, i32* @largestNet, align 4
  %327 = add nsw i32 1, %326
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 24
  %330 = call noalias i8* @malloc(i64 noundef %329) #7
  %331 = bitcast i8* %330 to %struct.nrbox*
  store %struct.nrbox* %331, %struct.nrbox** @netRoutes, align 8
  store i32 1, i32* %9, align 4
  br label %332

332:                                              ; preds = %395, %324
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* @largestNet, align 4
  %335 = icmp sle i32 %333, %334
  br i1 %335, label %336, label %398

336:                                              ; preds = %332
  %337 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %337, i64 %339
  %341 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %340, i32 0, i32 2
  store i32 1, i32* %341, align 4
  %342 = load i32, i32* @MAXPATHS, align 4
  %343 = add nsw i32 1, %342
  %344 = sext i32 %343 to i64
  %345 = mul i64 %344, 8
  %346 = call noalias i8* @malloc(i64 noundef %345) #7
  %347 = bitcast i8* %346 to %struct.altbox**
  %348 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %348, i64 %350
  %352 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %351, i32 0, i32 0
  store %struct.altbox** %347, %struct.altbox*** %352, align 8
  store i32 1, i32* %10, align 4
  br label %353

353:                                              ; preds = %391, %336
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @MAXPATHS, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %394

357:                                              ; preds = %353
  %358 = call noalias i8* @malloc(i64 noundef 24) #7
  %359 = bitcast i8* %358 to %struct.altbox*
  %360 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %360, i64 %362
  %364 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %363, i32 0, i32 0
  %365 = load %struct.altbox**, %struct.altbox*** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.altbox*, %struct.altbox** %365, i64 %367
  store %struct.altbox* %359, %struct.altbox** %368, align 8
  %369 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %369, i64 %371
  %373 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %372, i32 0, i32 0
  %374 = load %struct.altbox**, %struct.altbox*** %373, align 8
  %375 = load i32, i32* %10, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.altbox*, %struct.altbox** %374, i64 %376
  %378 = load %struct.altbox*, %struct.altbox** %377, align 8
  %379 = getelementptr inbounds %struct.altbox, %struct.altbox* %378, i32 0, i32 0
  store i32* null, i32** %379, align 8
  %380 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %380, i64 %382
  %384 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %383, i32 0, i32 0
  %385 = load %struct.altbox**, %struct.altbox*** %384, align 8
  %386 = load i32, i32* %10, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.altbox*, %struct.altbox** %385, i64 %387
  %389 = load %struct.altbox*, %struct.altbox** %388, align 8
  %390 = getelementptr inbounds %struct.altbox, %struct.altbox* %389, i32 0, i32 2
  store %struct.chanbox* null, %struct.chanbox** %390, align 8
  br label %391

391:                                              ; preds = %357
  %392 = load i32, i32* %10, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %10, align 4
  br label %353, !llvm.loop !8

394:                                              ; preds = %353
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %9, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %9, align 4
  br label %332, !llvm.loop !9

398:                                              ; preds = %332
  %399 = load i32, i32* @MAXPATHS, align 4
  %400 = mul nsw i32 2, %399
  %401 = add nsw i32 1, %400
  %402 = sext i32 %401 to i64
  %403 = mul i64 %402, 8
  %404 = call noalias i8* @malloc(i64 noundef %403) #7
  %405 = bitcast i8* %404 to i16**
  store i16** %405, i16*** @savePaths, align 8
  store i32 1, i32* %9, align 4
  br label %406

406:                                              ; preds = %425, %398
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* @MAXPATHS, align 4
  %409 = mul nsw i32 2, %408
  %410 = icmp sle i32 %407, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %406
  %412 = load i32, i32* @numnodes, align 4
  %413 = load i32, i32* @maxpnode, align 4
  %414 = add nsw i32 %412, %413
  %415 = mul nsw i32 3, %414
  %416 = add nsw i32 1, %415
  %417 = sext i32 %416 to i64
  %418 = mul i64 %417, 2
  %419 = call noalias i8* @malloc(i64 noundef %418) #7
  %420 = bitcast i8* %419 to i16*
  %421 = load i16**, i16*** @savePaths, align 8
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i16*, i16** %421, i64 %423
  store i16* %420, i16** %424, align 8
  br label %425

425:                                              ; preds = %411
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %9, align 4
  br label %406, !llvm.loop !10

428:                                              ; preds = %406
  %429 = load i32, i32* @numpins, align 4
  %430 = add nsw i32 1, %429
  %431 = sext i32 %430 to i64
  %432 = mul i64 %431, 8
  %433 = call noalias i8* @malloc(i64 noundef %432) #7
  %434 = bitcast i8* %433 to i8**
  store i8** %434, i8*** @pnameArray, align 8
  store i32 1, i32* %9, align 4
  br label %435

435:                                              ; preds = %444, %428
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* @numpins, align 4
  %438 = icmp sle i32 %436, %437
  br i1 %438, label %439, label %447

439:                                              ; preds = %435
  %440 = load i8**, i8*** @pnameArray, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %440, i64 %442
  store i8* null, i8** %443, align 8
  br label %444

444:                                              ; preds = %439
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %9, align 4
  br label %435, !llvm.loop !11

447:                                              ; preds = %435
  %448 = load i32, i32* %5, align 4
  %449 = add nsw i32 1, %448
  %450 = sext i32 %449 to i64
  %451 = mul i64 %450, 8
  %452 = call noalias i8* @malloc(i64 noundef %451) #7
  %453 = bitcast i8* %452 to i8**
  store i8** %453, i8*** @nnameArray, align 8
  store i32 1, i32* %9, align 4
  br label %454

454:                                              ; preds = %463, %447
  %455 = load i32, i32* %9, align 4
  %456 = load i32, i32* %5, align 4
  %457 = icmp sle i32 %455, %456
  br i1 %457, label %458, label %466

458:                                              ; preds = %454
  %459 = load i8**, i8*** @nnameArray, align 8
  %460 = load i32, i32* %9, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %459, i64 %461
  store i8* null, i8** %462, align 8
  br label %463

463:                                              ; preds = %458
  %464 = load i32, i32* %9, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %9, align 4
  br label %454, !llvm.loop !12

466:                                              ; preds = %454
  %467 = load i32, i32* %5, align 4
  %468 = add nsw i32 1, %467
  %469 = sext i32 %468 to i64
  %470 = mul i64 %469, 4
  %471 = call noalias i8* @malloc(i64 noundef %470) #7
  %472 = bitcast i8* %471 to i32*
  store i32* %472, i32** @pinOffset, align 8
  store i32 1, i32* %9, align 4
  br label %473

473:                                              ; preds = %482, %466
  %474 = load i32, i32* %9, align 4
  %475 = load i32, i32* %5, align 4
  %476 = icmp sle i32 %474, %475
  br i1 %476, label %477, label %485

477:                                              ; preds = %473
  %478 = load i32*, i32** @pinOffset, align 8
  %479 = load i32, i32* %9, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  store i32 0, i32* %481, align 4
  br label %482

482:                                              ; preds = %477
  %483 = load i32, i32* %9, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %9, align 4
  br label %473, !llvm.loop !13

485:                                              ; preds = %473
  %486 = load i32, i32* @numnodes, align 4
  %487 = load i32, i32* @maxpnode, align 4
  %488 = add nsw i32 %486, %487
  %489 = mul nsw i32 3, %488
  %490 = add nsw i32 1, %489
  %491 = sext i32 %490 to i64
  %492 = mul i64 %491, 2
  %493 = call noalias i8* @malloc(i64 noundef %492) #7
  %494 = bitcast i8* %493 to i16*
  store i16* %494, i16** @segList, align 8
  %495 = load i32, i32* @maxpnode, align 4
  %496 = add nsw i32 1, %495
  %497 = sext i32 %496 to i64
  %498 = mul i64 %497, 2
  %499 = call noalias i8* @malloc(i64 noundef %498) #7
  %500 = bitcast i8* %499 to i16*
  store i16* %500, i16** @sourceList, align 8
  %501 = load i32, i32* @maxpnode, align 4
  %502 = add nsw i32 1, %501
  %503 = load i32, i32* @numnodes, align 4
  %504 = add nsw i32 %502, %503
  %505 = sext i32 %504 to i64
  %506 = mul i64 %505, 2
  %507 = call noalias i8* @malloc(i64 noundef %506) #7
  %508 = bitcast i8* %507 to i16*
  store i16* %508, i16** @targetList, align 8
  %509 = load i32, i32* @maxpnode, align 4
  %510 = add nsw i32 1, %509
  %511 = sext i32 %510 to i64
  %512 = mul i64 %511, 2
  %513 = call noalias i8* @malloc(i64 noundef %512) #7
  %514 = bitcast i8* %513 to i16*
  store i16* %514, i16** @delSourceList, align 8
  %515 = load i32, i32* @maxpnode, align 4
  %516 = add nsw i32 1, %515
  %517 = load i32, i32* @numnodes, align 4
  %518 = add nsw i32 %516, %517
  %519 = sext i32 %518 to i64
  %520 = mul i64 %519, 2
  %521 = call noalias i8* @malloc(i64 noundef %520) #7
  %522 = bitcast i8* %521 to i16*
  store i16* %522, i16** @addTargetList, align 8
  %523 = load i32, i32* @EXTRASOURCES, align 4
  %524 = load i32, i32* @MAXPATHS, align 4
  %525 = mul nsw i32 %523, %524
  %526 = add nsw i32 1, %525
  %527 = sext i32 %526 to i64
  %528 = mul i64 %527, 8
  %529 = call noalias i8* @malloc(i64 noundef %528) #7
  %530 = bitcast i8* %529 to i32**
  store i32** %530, i32*** @pathList, align 8
  store i32 1, i32* %9, align 4
  br label %531

531:                                              ; preds = %570, %485
  %532 = load i32, i32* %9, align 4
  %533 = load i32, i32* @EXTRASOURCES, align 4
  %534 = load i32, i32* @MAXPATHS, align 4
  %535 = mul nsw i32 %533, %534
  %536 = icmp sle i32 %532, %535
  br i1 %536, label %537, label %573

537:                                              ; preds = %531
  %538 = load i32, i32* @numnodes, align 4
  %539 = add nsw i32 2, %538
  %540 = load i32, i32* @maxpnode, align 4
  %541 = add nsw i32 %539, %540
  %542 = sext i32 %541 to i64
  %543 = mul i64 %542, 4
  %544 = call noalias i8* @malloc(i64 noundef %543) #7
  %545 = bitcast i8* %544 to i32*
  %546 = load i32**, i32*** @pathList, align 8
  %547 = load i32, i32* %9, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32*, i32** %546, i64 %548
  store i32* %545, i32** %549, align 8
  store i32 0, i32* %10, align 4
  br label %550

550:                                              ; preds = %566, %537
  %551 = load i32, i32* %10, align 4
  %552 = load i32, i32* @numnodes, align 4
  %553 = load i32, i32* @maxpnode, align 4
  %554 = add nsw i32 %552, %553
  %555 = add nsw i32 %554, 1
  %556 = icmp sle i32 %551, %555
  br i1 %556, label %557, label %569

557:                                              ; preds = %550
  %558 = load i32**, i32*** @pathList, align 8
  %559 = load i32, i32* %9, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32*, i32** %558, i64 %560
  %562 = load i32*, i32** %561, align 8
  %563 = load i32, i32* %10, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, i32* %562, i64 %564
  store i32 0, i32* %565, align 4
  br label %566

566:                                              ; preds = %557
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %10, align 4
  br label %550, !llvm.loop !14

569:                                              ; preds = %550
  br label %570

570:                                              ; preds = %569
  %571 = load i32, i32* %9, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %9, align 4
  br label %531, !llvm.loop !15

573:                                              ; preds = %531
  %574 = load i32, i32* @MAXPATHS, align 4
  %575 = mul nsw i32 2, %574
  %576 = add nsw i32 3, %575
  %577 = sext i32 %576 to i64
  %578 = mul i64 %577, 40
  %579 = call noalias i8* @malloc(i64 noundef %578) #7
  %580 = bitcast i8* %579 to %struct.path*
  store %struct.path* %580, %struct.path** @pathArray, align 8
  store i32 1, i32* %9, align 4
  br label %581

581:                                              ; preds = %601, %573
  %582 = load i32, i32* %9, align 4
  %583 = load i32, i32* @MAXPATHS, align 4
  %584 = mul nsw i32 2, %583
  %585 = add nsw i32 2, %584
  %586 = icmp sle i32 %582, %585
  br i1 %586, label %587, label %604

587:                                              ; preds = %581
  %588 = load i32, i32* @numnodes, align 4
  %589 = add nsw i32 1, %588
  %590 = load i32, i32* @maxpnode, align 4
  %591 = add nsw i32 %589, %590
  %592 = sext i32 %591 to i64
  %593 = mul i64 %592, 2
  %594 = call noalias i8* @malloc(i64 noundef %593) #7
  %595 = bitcast i8* %594 to i16*
  %596 = load %struct.path*, %struct.path** @pathArray, align 8
  %597 = load i32, i32* %9, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.path, %struct.path* %596, i64 %598
  %600 = getelementptr inbounds %struct.path, %struct.path* %599, i32 0, i32 0
  store i16* %595, i16** %600, align 8
  br label %601

601:                                              ; preds = %587
  %602 = load i32, i32* %9, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %9, align 4
  br label %581, !llvm.loop !16

604:                                              ; preds = %581
  %605 = load i32, i32* @numnodes, align 4
  %606 = add nsw i32 1, %605
  %607 = load i32, i32* @maxpnode, align 4
  %608 = add nsw i32 %606, %607
  %609 = sext i32 %608 to i64
  %610 = mul i64 %609, 2
  %611 = call noalias i8* @malloc(i64 noundef %610) #7
  %612 = bitcast i8* %611 to i16*
  store i16* %612, i16** @tempArray, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* @pnodeAlength, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  store %struct.quad* null, %struct.quad** %17, align 8
  br label %613

613:                                              ; preds = %952, %604
  %614 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %615 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %616 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %614, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %615)
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %618, label %953

618:                                              ; preds = %613
  %619 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %620 = call i32 @strcmp(i8* noundef %619, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %821

622:                                              ; preds = %618
  %623 = load i32, i32* %5, align 4
  %624 = icmp sgt i32 %623, 0
  br i1 %624, label %625, label %783

625:                                              ; preds = %622
  %626 = load i32, i32* %5, align 4
  %627 = srem i32 %626, 10
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %635

629:                                              ; preds = %625
  %630 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %631 = load i32, i32* %5, align 4
  %632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %630, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 noundef %631)
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %634 = call i32 @fflush(%struct._IO_FILE* noundef %633)
  br label %635

635:                                              ; preds = %629, %625
  %636 = load i32, i32* %13, align 4
  %637 = load i32, i32* @pnodeAlength, align 4
  %638 = icmp sgt i32 %636, %637
  br i1 %638, label %647, label %639

639:                                              ; preds = %635
  %640 = load i32, i32* @pnodeAlength, align 4
  %641 = icmp sgt i32 %640, 30
  br i1 %641, label %642, label %779

642:                                              ; preds = %639
  %643 = load i32, i32* %13, align 4
  %644 = mul nsw i32 2, %643
  %645 = load i32, i32* @pnodeAlength, align 4
  %646 = icmp slt i32 %644, %645
  br i1 %646, label %647, label %779

647:                                              ; preds = %642, %635
  %648 = load i32, i32* @pnodeAlength, align 4
  %649 = icmp sgt i32 %648, 0
  br i1 %649, label %650, label %713

650:                                              ; preds = %647
  store i32 1, i32* %9, align 4
  br label %651

651:                                              ; preds = %690, %650
  %652 = load i32, i32* %9, align 4
  %653 = load i32, i32* @pnodeAlength, align 4
  %654 = icmp sle i32 %652, %653
  br i1 %654, label %655, label %693

655:                                              ; preds = %651
  %656 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %657 = load i32, i32* %9, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.pnode, %struct.pnode* %656, i64 %658
  %660 = getelementptr inbounds %struct.pnode, %struct.pnode* %659, i32 0, i32 2
  %661 = load %struct.list2*, %struct.list2** %660, align 8
  store %struct.list2* %661, %struct.list2** %14, align 8
  br label %662

662:                                              ; preds = %665, %655
  %663 = load %struct.list2*, %struct.list2** %14, align 8
  %664 = icmp ne %struct.list2* %663, null
  br i1 %664, label %665, label %672

665:                                              ; preds = %662
  %666 = load %struct.list2*, %struct.list2** %14, align 8
  %667 = getelementptr inbounds %struct.list2, %struct.list2* %666, i32 0, i32 1
  %668 = load %struct.list2*, %struct.list2** %667, align 8
  store %struct.list2* %668, %struct.list2** %15, align 8
  %669 = load %struct.list2*, %struct.list2** %14, align 8
  %670 = bitcast %struct.list2* %669 to i8*
  call void @free(i8* noundef %670) #7
  %671 = load %struct.list2*, %struct.list2** %15, align 8
  store %struct.list2* %671, %struct.list2** %14, align 8
  br label %662, !llvm.loop !17

672:                                              ; preds = %662
  %673 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %674 = load i32, i32* %9, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.pnode, %struct.pnode* %673, i64 %675
  %677 = getelementptr inbounds %struct.pnode, %struct.pnode* %676, i32 0, i32 1
  %678 = load %struct.nnode*, %struct.nnode** %677, align 8
  store %struct.nnode* %678, %struct.nnode** %16, align 8
  %679 = load %struct.nnode*, %struct.nnode** %16, align 8
  %680 = icmp ne %struct.nnode* %679, null
  br i1 %680, label %681, label %689

681:                                              ; preds = %672
  %682 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %683 = load i32, i32* %9, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.pnode, %struct.pnode* %682, i64 %684
  %686 = getelementptr inbounds %struct.pnode, %struct.pnode* %685, i32 0, i32 1
  %687 = load %struct.nnode*, %struct.nnode** %686, align 8
  %688 = bitcast %struct.nnode* %687 to i8*
  call void @free(i8* noundef %688) #7
  br label %689

689:                                              ; preds = %681, %672
  br label %690

690:                                              ; preds = %689
  %691 = load i32, i32* %9, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %9, align 4
  br label %651, !llvm.loop !18

693:                                              ; preds = %651
  store i32 0, i32* %9, align 4
  br label %694

694:                                              ; preds = %705, %693
  %695 = load i32, i32* %9, align 4
  %696 = load i32, i32* @pnodeAlength, align 4
  %697 = icmp slt i32 %695, %696
  br i1 %697, label %698, label %708

698:                                              ; preds = %694
  %699 = load i16**, i16*** @netSegArray, align 8
  %700 = load i32, i32* %9, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i16*, i16** %699, i64 %701
  %703 = load i16*, i16** %702, align 8
  %704 = bitcast i16* %703 to i8*
  call void @free(i8* noundef %704) #7
  br label %705

705:                                              ; preds = %698
  %706 = load i32, i32* %9, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %9, align 4
  br label %694, !llvm.loop !19

708:                                              ; preds = %694
  %709 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %710 = bitcast %struct.pnode* %709 to i8*
  call void @free(i8* noundef %710) #7
  %711 = load i16**, i16*** @netSegArray, align 8
  %712 = bitcast i16** %711 to i8*
  call void @free(i8* noundef %712) #7
  br label %713

713:                                              ; preds = %708, %647
  %714 = load i32, i32* %13, align 4
  store i32 %714, i32* @pnodeAlength, align 4
  %715 = load i32, i32* %13, align 4
  %716 = add nsw i32 1, %715
  %717 = sext i32 %716 to i64
  %718 = mul i64 %717, 24
  %719 = call noalias i8* @malloc(i64 noundef %718) #7
  %720 = bitcast i8* %719 to %struct.pnode*
  store %struct.pnode* %720, %struct.pnode** @pnodeArray, align 8
  store i32 1, i32* %9, align 4
  br label %721

721:                                              ; preds = %749, %713
  %722 = load i32, i32* %9, align 4
  %723 = load i32, i32* %13, align 4
  %724 = icmp sle i32 %722, %723
  br i1 %724, label %725, label %752

725:                                              ; preds = %721
  %726 = load i32, i32* @numnodes, align 4
  %727 = add nsw i32 1, %726
  %728 = load i32, i32* %13, align 4
  %729 = add nsw i32 %727, %728
  %730 = sext i32 %729 to i64
  %731 = mul i64 %730, 12
  %732 = call noalias i8* @malloc(i64 noundef %731) #7
  %733 = bitcast i8* %732 to %struct.nnode*
  %734 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %735 = load i32, i32* %9, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.pnode, %struct.pnode* %734, i64 %736
  %738 = getelementptr inbounds %struct.pnode, %struct.pnode* %737, i32 0, i32 1
  store %struct.nnode* %733, %struct.nnode** %738, align 8
  %739 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %740 = load i32, i32* %9, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.pnode, %struct.pnode* %739, i64 %741
  %743 = getelementptr inbounds %struct.pnode, %struct.pnode* %742, i32 0, i32 0
  store i32 0, i32* %743, align 8
  %744 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %745 = load i32, i32* %9, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.pnode, %struct.pnode* %744, i64 %746
  %748 = getelementptr inbounds %struct.pnode, %struct.pnode* %747, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %748, align 8
  br label %749

749:                                              ; preds = %725
  %750 = load i32, i32* %9, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* %9, align 4
  br label %721, !llvm.loop !20

752:                                              ; preds = %721
  %753 = load i32, i32* %13, align 4
  %754 = sext i32 %753 to i64
  %755 = mul i64 %754, 8
  %756 = call noalias i8* @malloc(i64 noundef %755) #7
  %757 = bitcast i8* %756 to i16**
  store i16** %757, i16*** @netSegArray, align 8
  store i32 0, i32* %9, align 4
  br label %758

758:                                              ; preds = %775, %752
  %759 = load i32, i32* %9, align 4
  %760 = load i32, i32* %13, align 4
  %761 = icmp slt i32 %759, %760
  br i1 %761, label %762, label %778

762:                                              ; preds = %758
  %763 = load i32, i32* @numnodes, align 4
  %764 = add nsw i32 1, %763
  %765 = load i32, i32* %13, align 4
  %766 = add nsw i32 %764, %765
  %767 = sext i32 %766 to i64
  %768 = mul i64 %767, 2
  %769 = call noalias i8* @malloc(i64 noundef %768) #7
  %770 = bitcast i8* %769 to i16*
  %771 = load i16**, i16*** @netSegArray, align 8
  %772 = load i32, i32* %9, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i16*, i16** %771, i64 %773
  store i16* %770, i16** %774, align 8
  br label %775

775:                                              ; preds = %762
  %776 = load i32, i32* %9, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %9, align 4
  br label %758, !llvm.loop !21

778:                                              ; preds = %758
  br label %779

779:                                              ; preds = %778, %642, %639
  %780 = load i32, i32* %5, align 4
  %781 = load i32, i32* %11, align 4
  %782 = load i32, i32* %13, align 4
  call void @procesnet(i32 noundef %780, i32 noundef %781, i32 noundef %782)
  br label %783

783:                                              ; preds = %779, %622
  %784 = load i32, i32* %5, align 4
  %785 = add nsw i32 %784, 1
  store i32 %785, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %786 = load i32, i32* %4, align 4
  %787 = load i32*, i32** @pinOffset, align 8
  %788 = load i32, i32* %5, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  store i32 %786, i32* %790, align 4
  %791 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %792 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %793 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %791, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %792)
  %794 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %795 = call i64 @strlen(i8* noundef %794) #5
  %796 = add i64 %795, 1
  %797 = mul i64 %796, 1
  %798 = call noalias i8* @malloc(i64 noundef %797) #7
  %799 = load i8**, i8*** @nnameArray, align 8
  %800 = load i32, i32* %5, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds i8*, i8** %799, i64 %801
  store i8* %798, i8** %802, align 8
  %803 = load i8**, i8*** @nnameArray, align 8
  %804 = load i32, i32* %5, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i8*, i8** %803, i64 %805
  %807 = load i8*, i8** %806, align 8
  %808 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %809 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %807, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %808) #7
  store i32 0, i32* %13, align 4
  br label %810

810:                                              ; preds = %813, %783
  %811 = load %struct.quad*, %struct.quad** %17, align 8
  %812 = icmp ne %struct.quad* %811, null
  br i1 %812, label %813, label %820

813:                                              ; preds = %810
  %814 = load %struct.quad*, %struct.quad** %17, align 8
  %815 = getelementptr inbounds %struct.quad, %struct.quad* %814, i32 0, i32 5
  %816 = load %struct.quad*, %struct.quad** %815, align 8
  store %struct.quad* %816, %struct.quad** %18, align 8
  %817 = load %struct.quad*, %struct.quad** %17, align 8
  %818 = bitcast %struct.quad* %817 to i8*
  call void @free(i8* noundef %818) #7
  %819 = load %struct.quad*, %struct.quad** %18, align 8
  store %struct.quad* %819, %struct.quad** %17, align 8
  br label %810, !llvm.loop !22

820:                                              ; preds = %810
  store %struct.quad* null, %struct.quad** %17, align 8
  store %struct.quad* null, %struct.quad** @pinlist, align 8
  br label %952

821:                                              ; preds = %618
  %822 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %823 = call i32 @strcmp(i8* noundef %822, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %825, label %891

825:                                              ; preds = %821
  %826 = load i32, i32* %4, align 4
  %827 = add nsw i32 %826, 1
  store i32 %827, i32* %4, align 4
  %828 = load i32, i32* %13, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %13, align 4
  %830 = load i32, i32* %11, align 4
  %831 = add nsw i32 %830, 1
  store i32 %831, i32* %11, align 4
  %832 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %833 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %834 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %832, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %833)
  %835 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %836 = call i64 @strlen(i8* noundef %835) #5
  %837 = add i64 %836, 1
  %838 = mul i64 %837, 1
  %839 = call noalias i8* @malloc(i64 noundef %838) #7
  %840 = load i8**, i8*** @pnameArray, align 8
  %841 = load i32, i32* %4, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i8*, i8** %840, i64 %842
  store i8* %839, i8** %843, align 8
  %844 = load i8**, i8*** @pnameArray, align 8
  %845 = load i32, i32* %4, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i8*, i8** %844, i64 %846
  %848 = load i8*, i8** %847, align 8
  %849 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %850 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %848, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %849) #7
  %851 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %852 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %853 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %851, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %852)
  %854 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %855 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %854, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef %6, i32* noundef %7)
  %856 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %857 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %858 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %856, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %857)
  %859 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %860 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %859, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef %8)
  %861 = load %struct.quad*, %struct.quad** %17, align 8
  %862 = icmp eq %struct.quad* %861, null
  br i1 %862, label %863, label %868

863:                                              ; preds = %825
  %864 = call noalias i8* @malloc(i64 noundef 32) #7
  %865 = bitcast i8* %864 to %struct.quad*
  store %struct.quad* %865, %struct.quad** %17, align 8
  store %struct.quad* %865, %struct.quad** @pinlist, align 8
  %866 = load %struct.quad*, %struct.quad** %17, align 8
  %867 = getelementptr inbounds %struct.quad, %struct.quad* %866, i32 0, i32 5
  store %struct.quad* null, %struct.quad** %867, align 8
  br label %877

868:                                              ; preds = %825
  %869 = load %struct.quad*, %struct.quad** %17, align 8
  store %struct.quad* %869, %struct.quad** %19, align 8
  %870 = call noalias i8* @malloc(i64 noundef 32) #7
  %871 = bitcast i8* %870 to %struct.quad*
  %872 = load %struct.quad*, %struct.quad** %17, align 8
  %873 = getelementptr inbounds %struct.quad, %struct.quad* %872, i32 0, i32 4
  store %struct.quad* %871, %struct.quad** %873, align 8
  store %struct.quad* %871, %struct.quad** %17, align 8
  %874 = load %struct.quad*, %struct.quad** %19, align 8
  %875 = load %struct.quad*, %struct.quad** %17, align 8
  %876 = getelementptr inbounds %struct.quad, %struct.quad* %875, i32 0, i32 5
  store %struct.quad* %874, %struct.quad** %876, align 8
  br label %877

877:                                              ; preds = %868, %863
  %878 = load %struct.quad*, %struct.quad** %17, align 8
  %879 = getelementptr inbounds %struct.quad, %struct.quad* %878, i32 0, i32 4
  store %struct.quad* null, %struct.quad** %879, align 8
  %880 = load %struct.quad*, %struct.quad** %17, align 8
  %881 = getelementptr inbounds %struct.quad, %struct.quad* %880, i32 0, i32 0
  store i32 1, i32* %881, align 8
  %882 = load i32, i32* %6, align 4
  %883 = load %struct.quad*, %struct.quad** %17, align 8
  %884 = getelementptr inbounds %struct.quad, %struct.quad* %883, i32 0, i32 1
  store i32 %882, i32* %884, align 4
  %885 = load i32, i32* %7, align 4
  %886 = load %struct.quad*, %struct.quad** %17, align 8
  %887 = getelementptr inbounds %struct.quad, %struct.quad* %886, i32 0, i32 2
  store i32 %885, i32* %887, align 8
  %888 = load i32, i32* %8, align 4
  %889 = load %struct.quad*, %struct.quad** %17, align 8
  %890 = getelementptr inbounds %struct.quad, %struct.quad* %889, i32 0, i32 3
  store i32 %888, i32* %890, align 4
  br label %951

891:                                              ; preds = %821
  %892 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %893 = call i32 @strcmp(i8* noundef %892, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #5
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %950

895:                                              ; preds = %891
  %896 = load i32, i32* %4, align 4
  %897 = add nsw i32 %896, 1
  store i32 %897, i32* %4, align 4
  %898 = load i32, i32* %13, align 4
  %899 = add nsw i32 %898, 1
  store i32 %899, i32* %13, align 4
  %900 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %901 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %902 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %900, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %901)
  %903 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %904 = call i64 @strlen(i8* noundef %903) #5
  %905 = add i64 %904, 1
  %906 = mul i64 %905, 1
  %907 = call noalias i8* @malloc(i64 noundef %906) #7
  %908 = load i8**, i8*** @pnameArray, align 8
  %909 = load i32, i32* %4, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds i8*, i8** %908, i64 %910
  store i8* %907, i8** %911, align 8
  %912 = load i8**, i8*** @pnameArray, align 8
  %913 = load i32, i32* %4, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i8*, i8** %912, i64 %914
  %916 = load i8*, i8** %915, align 8
  %917 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %918 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %916, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %917) #7
  %919 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %920 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %921 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %919, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %920)
  %922 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %923 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %922, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* noundef %6, i32* noundef %7)
  %924 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %925 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %926 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %924, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %925)
  %927 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %928 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %927, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* noundef %8)
  %929 = load %struct.quad*, %struct.quad** %17, align 8
  store %struct.quad* %929, %struct.quad** %19, align 8
  %930 = call noalias i8* @malloc(i64 noundef 32) #7
  %931 = bitcast i8* %930 to %struct.quad*
  %932 = load %struct.quad*, %struct.quad** %17, align 8
  %933 = getelementptr inbounds %struct.quad, %struct.quad* %932, i32 0, i32 4
  store %struct.quad* %931, %struct.quad** %933, align 8
  store %struct.quad* %931, %struct.quad** %17, align 8
  %934 = load %struct.quad*, %struct.quad** %19, align 8
  %935 = load %struct.quad*, %struct.quad** %17, align 8
  %936 = getelementptr inbounds %struct.quad, %struct.quad* %935, i32 0, i32 5
  store %struct.quad* %934, %struct.quad** %936, align 8
  %937 = load %struct.quad*, %struct.quad** %17, align 8
  %938 = getelementptr inbounds %struct.quad, %struct.quad* %937, i32 0, i32 4
  store %struct.quad* null, %struct.quad** %938, align 8
  %939 = load %struct.quad*, %struct.quad** %17, align 8
  %940 = getelementptr inbounds %struct.quad, %struct.quad* %939, i32 0, i32 0
  store i32 -1, i32* %940, align 8
  %941 = load i32, i32* %6, align 4
  %942 = load %struct.quad*, %struct.quad** %17, align 8
  %943 = getelementptr inbounds %struct.quad, %struct.quad* %942, i32 0, i32 1
  store i32 %941, i32* %943, align 4
  %944 = load i32, i32* %7, align 4
  %945 = load %struct.quad*, %struct.quad** %17, align 8
  %946 = getelementptr inbounds %struct.quad, %struct.quad* %945, i32 0, i32 2
  store i32 %944, i32* %946, align 8
  %947 = load i32, i32* %8, align 4
  %948 = load %struct.quad*, %struct.quad** %17, align 8
  %949 = getelementptr inbounds %struct.quad, %struct.quad* %948, i32 0, i32 3
  store i32 %947, i32* %949, align 4
  br label %950

950:                                              ; preds = %895, %891
  br label %951

951:                                              ; preds = %950, %877
  br label %952

952:                                              ; preds = %951, %820
  br label %613, !llvm.loop !23

953:                                              ; preds = %613
  %954 = load i32, i32* %13, align 4
  %955 = load i32, i32* @pnodeAlength, align 4
  %956 = icmp sgt i32 %954, %955
  br i1 %956, label %962, label %957

957:                                              ; preds = %953
  %958 = load i32, i32* %13, align 4
  %959 = mul nsw i32 10, %958
  %960 = load i32, i32* @pnodeAlength, align 4
  %961 = icmp slt i32 %959, %960
  br i1 %961, label %962, label %1094

962:                                              ; preds = %957, %953
  %963 = load i32, i32* @pnodeAlength, align 4
  %964 = icmp sgt i32 %963, 0
  br i1 %964, label %965, label %1028

965:                                              ; preds = %962
  store i32 1, i32* %9, align 4
  br label %966

966:                                              ; preds = %1005, %965
  %967 = load i32, i32* %9, align 4
  %968 = load i32, i32* @pnodeAlength, align 4
  %969 = icmp sle i32 %967, %968
  br i1 %969, label %970, label %1008

970:                                              ; preds = %966
  %971 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %972 = load i32, i32* %9, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds %struct.pnode, %struct.pnode* %971, i64 %973
  %975 = getelementptr inbounds %struct.pnode, %struct.pnode* %974, i32 0, i32 2
  %976 = load %struct.list2*, %struct.list2** %975, align 8
  store %struct.list2* %976, %struct.list2** %14, align 8
  br label %977

977:                                              ; preds = %980, %970
  %978 = load %struct.list2*, %struct.list2** %14, align 8
  %979 = icmp ne %struct.list2* %978, null
  br i1 %979, label %980, label %987

980:                                              ; preds = %977
  %981 = load %struct.list2*, %struct.list2** %14, align 8
  %982 = getelementptr inbounds %struct.list2, %struct.list2* %981, i32 0, i32 1
  %983 = load %struct.list2*, %struct.list2** %982, align 8
  store %struct.list2* %983, %struct.list2** %15, align 8
  %984 = load %struct.list2*, %struct.list2** %14, align 8
  %985 = bitcast %struct.list2* %984 to i8*
  call void @free(i8* noundef %985) #7
  %986 = load %struct.list2*, %struct.list2** %15, align 8
  store %struct.list2* %986, %struct.list2** %14, align 8
  br label %977, !llvm.loop !24

987:                                              ; preds = %977
  %988 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %989 = load i32, i32* %9, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds %struct.pnode, %struct.pnode* %988, i64 %990
  %992 = getelementptr inbounds %struct.pnode, %struct.pnode* %991, i32 0, i32 1
  %993 = load %struct.nnode*, %struct.nnode** %992, align 8
  store %struct.nnode* %993, %struct.nnode** %16, align 8
  %994 = load %struct.nnode*, %struct.nnode** %16, align 8
  %995 = icmp ne %struct.nnode* %994, null
  br i1 %995, label %996, label %1004

996:                                              ; preds = %987
  %997 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %998 = load i32, i32* %9, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds %struct.pnode, %struct.pnode* %997, i64 %999
  %1001 = getelementptr inbounds %struct.pnode, %struct.pnode* %1000, i32 0, i32 1
  %1002 = load %struct.nnode*, %struct.nnode** %1001, align 8
  %1003 = bitcast %struct.nnode* %1002 to i8*
  call void @free(i8* noundef %1003) #7
  br label %1004

1004:                                             ; preds = %996, %987
  br label %1005

1005:                                             ; preds = %1004
  %1006 = load i32, i32* %9, align 4
  %1007 = add nsw i32 %1006, 1
  store i32 %1007, i32* %9, align 4
  br label %966, !llvm.loop !25

1008:                                             ; preds = %966
  store i32 0, i32* %9, align 4
  br label %1009

1009:                                             ; preds = %1020, %1008
  %1010 = load i32, i32* %9, align 4
  %1011 = load i32, i32* @pnodeAlength, align 4
  %1012 = icmp slt i32 %1010, %1011
  br i1 %1012, label %1013, label %1023

1013:                                             ; preds = %1009
  %1014 = load i16**, i16*** @netSegArray, align 8
  %1015 = load i32, i32* %9, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i16*, i16** %1014, i64 %1016
  %1018 = load i16*, i16** %1017, align 8
  %1019 = bitcast i16* %1018 to i8*
  call void @free(i8* noundef %1019) #7
  br label %1020

1020:                                             ; preds = %1013
  %1021 = load i32, i32* %9, align 4
  %1022 = add nsw i32 %1021, 1
  store i32 %1022, i32* %9, align 4
  br label %1009, !llvm.loop !26

1023:                                             ; preds = %1009
  %1024 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %1025 = bitcast %struct.pnode* %1024 to i8*
  call void @free(i8* noundef %1025) #7
  %1026 = load i16**, i16*** @netSegArray, align 8
  %1027 = bitcast i16** %1026 to i8*
  call void @free(i8* noundef %1027) #7
  br label %1028

1028:                                             ; preds = %1023, %962
  %1029 = load i32, i32* %13, align 4
  store i32 %1029, i32* @pnodeAlength, align 4
  %1030 = load i32, i32* %13, align 4
  %1031 = add nsw i32 1, %1030
  %1032 = sext i32 %1031 to i64
  %1033 = mul i64 %1032, 24
  %1034 = call noalias i8* @malloc(i64 noundef %1033) #7
  %1035 = bitcast i8* %1034 to %struct.pnode*
  store %struct.pnode* %1035, %struct.pnode** @pnodeArray, align 8
  store i32 1, i32* %9, align 4
  br label %1036

1036:                                             ; preds = %1064, %1028
  %1037 = load i32, i32* %9, align 4
  %1038 = load i32, i32* %13, align 4
  %1039 = icmp sle i32 %1037, %1038
  br i1 %1039, label %1040, label %1067

1040:                                             ; preds = %1036
  %1041 = load i32, i32* @numnodes, align 4
  %1042 = add nsw i32 1, %1041
  %1043 = load i32, i32* %13, align 4
  %1044 = add nsw i32 %1042, %1043
  %1045 = sext i32 %1044 to i64
  %1046 = mul i64 %1045, 12
  %1047 = call noalias i8* @malloc(i64 noundef %1046) #7
  %1048 = bitcast i8* %1047 to %struct.nnode*
  %1049 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %1050 = load i32, i32* %9, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.pnode, %struct.pnode* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.pnode, %struct.pnode* %1052, i32 0, i32 1
  store %struct.nnode* %1048, %struct.nnode** %1053, align 8
  %1054 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %1055 = load i32, i32* %9, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds %struct.pnode, %struct.pnode* %1054, i64 %1056
  %1058 = getelementptr inbounds %struct.pnode, %struct.pnode* %1057, i32 0, i32 0
  store i32 0, i32* %1058, align 8
  %1059 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %1060 = load i32, i32* %9, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.pnode, %struct.pnode* %1059, i64 %1061
  %1063 = getelementptr inbounds %struct.pnode, %struct.pnode* %1062, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %1063, align 8
  br label %1064

1064:                                             ; preds = %1040
  %1065 = load i32, i32* %9, align 4
  %1066 = add nsw i32 %1065, 1
  store i32 %1066, i32* %9, align 4
  br label %1036, !llvm.loop !27

1067:                                             ; preds = %1036
  %1068 = load i32, i32* %13, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = mul i64 %1069, 8
  %1071 = call noalias i8* @malloc(i64 noundef %1070) #7
  %1072 = bitcast i8* %1071 to i16**
  store i16** %1072, i16*** @netSegArray, align 8
  store i32 0, i32* %9, align 4
  br label %1073

1073:                                             ; preds = %1090, %1067
  %1074 = load i32, i32* %9, align 4
  %1075 = load i32, i32* %13, align 4
  %1076 = icmp slt i32 %1074, %1075
  br i1 %1076, label %1077, label %1093

1077:                                             ; preds = %1073
  %1078 = load i32, i32* @numnodes, align 4
  %1079 = add nsw i32 1, %1078
  %1080 = load i32, i32* %13, align 4
  %1081 = add nsw i32 %1079, %1080
  %1082 = sext i32 %1081 to i64
  %1083 = mul i64 %1082, 2
  %1084 = call noalias i8* @malloc(i64 noundef %1083) #7
  %1085 = bitcast i8* %1084 to i16*
  %1086 = load i16**, i16*** @netSegArray, align 8
  %1087 = load i32, i32* %9, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds i16*, i16** %1086, i64 %1088
  store i16* %1085, i16** %1089, align 8
  br label %1090

1090:                                             ; preds = %1077
  %1091 = load i32, i32* %9, align 4
  %1092 = add nsw i32 %1091, 1
  store i32 %1092, i32* %9, align 4
  br label %1073, !llvm.loop !28

1093:                                             ; preds = %1073
  br label %1094

1094:                                             ; preds = %1093, %957
  %1095 = load i32, i32* %5, align 4
  %1096 = load i32, i32* %11, align 4
  %1097 = load i32, i32* %13, align 4
  call void @procesnet(i32 noundef %1095, i32 noundef %1096, i32 noundef %1097)
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
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local void @procesnet(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

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
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
!153 = distinct !{!153, !5}
!154 = distinct !{!154, !5}
!155 = distinct !{!155, !5}
!156 = distinct !{!156, !5}
