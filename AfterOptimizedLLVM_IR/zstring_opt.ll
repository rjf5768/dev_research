; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstring.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zstring_op_init.my_defs = internal global [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zanchorsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zstring }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @ztoken }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"2anchorsearch\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"2search\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1string\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1token\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstring(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %23, 4294967295
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 -15, i32* %2, align 4
  br label %51

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @alloc(i32 noundef %32, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 -25, i32* %2, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to i8**
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  store i16 822, i16* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = trunc i32 %44 to i16
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 2
  store i16 %45, i16* %47, align 2
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %48, i8 0, i64 %50, i1 false)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %37, %36, %25, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zanchorsearch(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** %4, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 252
  %17 = icmp eq i32 %16, 52
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %24, 512
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -7, i32* %2, align 4
  br label %114

28:                                               ; preds = %19
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 252
  %34 = icmp eq i32 %33, 52
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 -20, i32* %2, align 4
  br label %114

36:                                               ; preds = %28
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 8
  %40 = zext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %41, 512
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -7, i32* %2, align 4
  br label %114

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 2
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp ule i32 %46, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %45
  %53 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %59 = bitcast %union.v* %58 to i8**
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = call i32 @memcmp(i8* noundef %56, i8* noundef %60, i64 noundef %62) #5
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %107, label %65

65:                                               ; preds = %52
  %66 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 8
  %69 = zext i16 %68 to i32
  %70 = or i32 %69, 32768
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %74 = bitcast %struct.ref_s* %72 to i8*
  %75 = bitcast %struct.ref_s* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  %76 = load i32, i32* %5, align 4
  %77 = trunc i32 %76 to i16
  %78 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 2
  store i16 %77, i16* %79, align 2
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %83 = bitcast %union.v* %82 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %83, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 2
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = sub i32 %91, %87
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %89, align 2
  %94 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 1
  store %struct.ref_s* %95, %struct.ref_s** %3, align 8
  store %struct.ref_s* %95, %struct.ref_s** @osp, align 8
  %96 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %97 = icmp ugt %struct.ref_s* %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %65
  %99 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 -1
  store %struct.ref_s* %100, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %114

101:                                              ; preds = %65
  %102 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %104 = bitcast %union.v* %103 to i16*
  store i16 1, i16* %104, align 8
  %105 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 1
  store i16 4, i16* %106, align 8
  br label %113

107:                                              ; preds = %52, %45
  %108 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %110 = bitcast %union.v* %109 to i16*
  store i16 0, i16* %110, align 8
  %111 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  store i16 4, i16* %112, align 8
  br label %113

113:                                              ; preds = %107, %101
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %98, %44, %35, %27, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsearch(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %9, %struct.ref_s** %4, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 252
  %19 = icmp eq i32 %18, 52
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %161

21:                                               ; preds = %1
  %22 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = xor i32 %25, -1
  %27 = and i32 %26, 512
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -7, i32* %2, align 4
  br label %161

30:                                               ; preds = %21
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 252
  %36 = icmp eq i32 %35, 52
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 -20, i32* %2, align 4
  br label %161

38:                                               ; preds = %30
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 8
  %42 = zext i16 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -7, i32* %2, align 4
  br label %161

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 2
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp ugt i32 %48, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i16*
  store i16 0, i16* %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 4, i16* %59, align 8
  store i32 0, i32* %2, align 4
  br label %161

60:                                               ; preds = %47
  %61 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 2
  %63 = load i16, i16* %62, align 2
  %64 = zext i16 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %69 = bitcast %union.v* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %151, %60
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %75 = bitcast %union.v* %74 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = call i32 @memcmp(i8* noundef %72, i8* noundef %76, i64 noundef %78) #5
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %148, label %81

81:                                               ; preds = %71
  %82 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 1
  store i16 %84, i16* %86, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 1
  %89 = load i16, i16* %88, align 8
  %90 = zext i16 %89 to i32
  %91 = or i32 %90, 32768
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %88, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 0
  %96 = bitcast %union.v* %95 to i8**
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = trunc i32 %97 to i16
  %99 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 2
  store i16 %98, i16* %100, align 2
  %101 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 1
  store %struct.ref_s* %102, %struct.ref_s** %3, align 8
  store %struct.ref_s* %102, %struct.ref_s** @osp, align 8
  %103 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %104 = icmp ugt %struct.ref_s* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i64 -1
  store %struct.ref_s* %107, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %161

108:                                              ; preds = %81
  %109 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %110 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %111 = bitcast %struct.ref_s* %109 to i8*
  %112 = bitcast %struct.ref_s* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 0
  %116 = bitcast %union.v* %115 to i8**
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %113 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i16
  %122 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 2
  store i16 %121, i16* %123, align 2
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i32 0, i32 0
  %130 = bitcast %union.v* %129 to i8**
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* %6, align 4
  %132 = trunc i32 %131 to i16
  %133 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 2
  store i16 %132, i16* %134, align 2
  %135 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i64 1
  store %struct.ref_s* %136, %struct.ref_s** %3, align 8
  store %struct.ref_s* %136, %struct.ref_s** @osp, align 8
  %137 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %138 = icmp ugt %struct.ref_s* %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %108
  %140 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i64 -1
  store %struct.ref_s* %141, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %161

142:                                              ; preds = %108
  %143 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %143, i32 0, i32 0
  %145 = bitcast %union.v* %144 to i16*
  store i16 1, i16* %145, align 8
  %146 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 1
  store i16 4, i16* %147, align 8
  store i32 0, i32* %2, align 4
  br label %161

148:                                              ; preds = %71
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %7, align 8
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, -1
  store i32 %153, i32* %6, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %71, label %155, !llvm.loop !4

155:                                              ; preds = %151
  %156 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %156, i32 0, i32 0
  %158 = bitcast %union.v* %157 to i16*
  store i16 0, i16* %158, align 8
  %159 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i32 0, i32 1
  store i16 4, i16* %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %142, %139, %105, %54, %46, %37, %29, %20
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztoken(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.stream_s, align 8
  %5 = alloca %struct.stream_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store %struct.stream_s* %4, %struct.stream_s** %5, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %15 [
    i32 3, label %16
    i32 13, label %19
  ]

15:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @ztoken_file to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %17)
  store i32 %18, i32* %2, align 4
  br label %102

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %25, 512
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -7, i32* %2, align 4
  br label %102

29:                                               ; preds = %20
  %30 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  call void @sread_string(%struct.stream_s* noundef %30, i8* noundef %34, i32 noundef %38)
  %39 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %40 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %39, i32 noundef 1, %struct.ref_s* noundef %7)
  store i32 %40, i32* %6, align 4
  switch i32 %40, label %100 [
    i32 0, label %41
    i32 1, label %94
  ]

41:                                               ; preds = %29
  %42 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %43 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load %struct.stream_s*, %struct.stream_s** %5, align 8
  %53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %60 = bitcast %union.v* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = zext i32 %57 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %60, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = sub i32 %68, %64
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %66, align 2
  %71 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 8
  %74 = zext i16 %73 to i32
  %75 = or i32 %74, 32768
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %72, align 8
  %77 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i64 2
  store %struct.ref_s* %78, %struct.ref_s** %3, align 8
  store %struct.ref_s* %78, %struct.ref_s** @osp, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %80 = icmp ugt %struct.ref_s* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %41
  %82 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -2
  store %struct.ref_s* %83, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %102

84:                                               ; preds = %41
  %85 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -1
  %87 = bitcast %struct.ref_s* %86 to i8*
  %88 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 0
  %91 = bitcast %union.v* %90 to i16*
  store i16 1, i16* %91, align 8
  %92 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  store i16 4, i16* %93, align 8
  store i32 0, i32* %2, align 4
  br label %102

94:                                               ; preds = %29
  %95 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %97 = bitcast %union.v* %96 to i16*
  store i16 0, i16* %97, align 8
  %98 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i32 0, i32 1
  store i16 4, i16* %99, align 8
  store i32 0, i32* %2, align 4
  br label %102

100:                                              ; preds = %29
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %94, %84, %81, %28, %16, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ztoken_file(...) #1

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @scan_token(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zstring_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([5 x %struct.op_def], [5 x %struct.op_def]* @zstring_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
