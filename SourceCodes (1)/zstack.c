; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstack.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osbot = external dso_local global %struct.ref_s*, align 8
@zstack_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zclear_stack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcleartomark }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcount }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcounttomark }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdup }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zexch }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zindex }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zpop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zroll }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpop(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexch(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store %struct.ref_s* %4, %struct.ref_s** %5, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %8 = icmp ult %struct.ref_s* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 0
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = bitcast %struct.ref_s* %12 to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 0
  %21 = bitcast %struct.ref_s* %18 to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %10, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdup(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  store %struct.ref_s* %10, %struct.ref_s** %3, align 8
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %23

16:                                               ; preds = %8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %21 = bitcast %struct.ref_s* %18 to i8*
  %22 = bitcast %struct.ref_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %13, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zindex(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %19 = ptrtoint %struct.ref_s* %17 to i64
  %20 = ptrtoint %struct.ref_s* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 16
  %23 = icmp uge i64 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %39

25:                                               ; preds = %12
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %33
  store %struct.ref_s* %34, %struct.ref_s** %4, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %37 = bitcast %struct.ref_s* %35 to i8*
  %38 = bitcast %struct.ref_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %25, %24, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zroll(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_s*, align 8
  %10 = alloca %struct.ref_s, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %14, %struct.ref_s** %4, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 252
  %20 = icmp eq i32 %19, 20
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %132

22:                                               ; preds = %1
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 252
  %28 = icmp eq i32 %27, 20
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 -20, i32* %2, align 4
  br label %132

30:                                               ; preds = %22
  %31 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %37 = ptrtoint %struct.ref_s* %35 to i64
  %38 = ptrtoint %struct.ref_s* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 16
  %41 = icmp ugt i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 -15, i32* %2, align 4
  br label %132

43:                                               ; preds = %30
  %44 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %46 = bitcast %union.v* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %132

54:                                               ; preds = %43
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = srem i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -2
  store %struct.ref_s* %64, %struct.ref_s** @osp, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -2
  store %struct.ref_s* %66, %struct.ref_s** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %78

73:                                               ; preds = %54
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %132

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i64 %86
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 1
  store %struct.ref_s* %88, %struct.ref_s** %9, align 8
  br label %89

89:                                               ; preds = %122, %78
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 %96
  %98 = bitcast %struct.ref_s* %10 to i8*
  %99 = bitcast %struct.ref_s* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  br label %100

100:                                              ; preds = %110, %92
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = srem i32 %105, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %100
  %111 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i64 %113
  %115 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 %117
  %119 = bitcast %struct.ref_s* %114 to i8*
  %120 = bitcast %struct.ref_s* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %11, align 4
  br label %100, !llvm.loop !4

122:                                              ; preds = %100
  %123 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i64 %125
  %127 = bitcast %struct.ref_s* %126 to i8*
  %128 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 16, i1 false)
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %89, !llvm.loop !6

131:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %76, %51, %42, %29, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zclear_stack(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  store %struct.ref_s* %4, %struct.ref_s** @osp, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcount(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %5, %struct.ref_s** %3, align 8
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %14 = ptrtoint %struct.ref_s* %12 to i64
  %15 = ptrtoint %struct.ref_s* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 20, i16* %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcleartomark(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %7 = icmp uge %struct.ref_s* %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %18, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %23

19:                                               ; preds = %8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 -1
  store %struct.ref_s* %21, %struct.ref_s** %3, align 8
  br label %4, !llvm.loop !7

22:                                               ; preds = %4
  store i32 -24, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcounttomark(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  store %struct.ref_s* %5, %struct.ref_s** %4, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %9 = icmp uge %struct.ref_s* %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 255
  %16 = ashr i32 %15, 2
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %20, %struct.ref_s** %3, align 8
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %22 = icmp ugt %struct.ref_s* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %25, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %29 = ptrtoint %struct.ref_s* %27 to i64
  %30 = ptrtoint %struct.ref_s* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 16
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %36 = bitcast %union.v* %35 to i64*
  store i64 %33, i64* %36, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  store i16 20, i16* %38, align 8
  store i32 0, i32* %2, align 4
  br label %43

39:                                               ; preds = %10
  %40 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 -1
  store %struct.ref_s* %41, %struct.ref_s** %4, align 8
  br label %6, !llvm.loop !8

42:                                               ; preds = %6
  store i32 -24, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %26, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zstack_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zstack_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
