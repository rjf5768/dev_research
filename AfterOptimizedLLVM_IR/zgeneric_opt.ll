; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zgeneric.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zgeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osbot = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@zgeneric_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopy }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zforall }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zget }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetinterval }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zlength }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zput }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zputinterval }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopy(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 255
  %11 = ashr i32 %10, 2
  switch i32 %11, label %74 [
    i32 5, label %12
    i32 0, label %66
    i32 10, label %66
    i32 13, label %66
    i32 2, label %71
  ]

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
  %23 = icmp ugt i64 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %101

25:                                               ; preds = %12
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %34
  %36 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %37 = icmp ugt %struct.ref_s* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 -16, i32* %2, align 4
  br label %101

39:                                               ; preds = %25
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %45
  %47 = bitcast %struct.ref_s* %46 to i8*
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %47, i64 %50, i1 false)
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 %54
  store %struct.ref_s* %55, %struct.ref_s** %3, align 8
  store %struct.ref_s* %55, %struct.ref_s** @osp, align 8
  %56 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %57 = icmp ugt %struct.ref_s* %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %39
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %62 = sext i32 %60 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 %63
  store %struct.ref_s* %64, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %101

65:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %101

66:                                               ; preds = %1, %1, %1
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %70 = call i32 @copy_interval(%struct.ref_s* noundef %67, i32 noundef 0, %struct.ref_s* noundef %69)
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %1
  %72 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %73 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcopy_dict to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %72)
  store i32 %73, i32* %2, align 4
  br label %101

74:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %101

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %101

80:                                               ; preds = %75
  %81 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -1
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 2
  %84 = load i16, i16* %83, align 2
  %85 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 2
  store i16 %84, i16* %86, align 2
  %87 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 -1
  %89 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %90 = bitcast %struct.ref_s* %88 to i8*
  %91 = bitcast %struct.ref_s* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 -1
  %94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 0, i32 1
  %95 = load i16, i16* %94, align 8
  %96 = zext i16 %95 to i32
  %97 = or i32 %96, 32768
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %94, align 8
  %99 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 -1
  store %struct.ref_s* %100, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %80, %78, %74, %71, %65, %58, %38, %24
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @copy_interval(%struct.ref_s* noundef %0, i32 noundef %1, %struct.ref_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ref_s* %2, %struct.ref_s** %7, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = ashr i32 %12, 2
  %14 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 255
  %19 = ashr i32 %18, 2
  %20 = icmp ne i32 %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -20, i32* %4, align 4
  br label %94

22:                                               ; preds = %3
  %23 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %27, 512
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -7, i32* %4, align 4
  br label %94

31:                                               ; preds = %22
  %32 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = xor i32 %35, -1
  %37 = and i32 %36, 256
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -7, i32* %4, align 4
  br label %94

40:                                               ; preds = %31
  %41 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 2
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %48, %49
  %51 = icmp ugt i32 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 -15, i32* %4, align 4
  br label %94

53:                                               ; preds = %40
  %54 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 8
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 255
  %59 = ashr i32 %58, 2
  switch i32 %59, label %93 [
    i32 0, label %60
    i32 10, label %60
    i32 13, label %77
  ]

60:                                               ; preds = %53, %53
  %61 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to %struct.ref_s**
  %64 = load %struct.ref_s*, %struct.ref_s** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 %66
  %68 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to %struct.ref_s**
  %71 = load %struct.ref_s*, %struct.ref_s** %70, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 2
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %67, %struct.ref_s* noundef %71, i32 noundef %75)
  br label %93

77:                                               ; preds = %53
  %78 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %80 = bitcast %union.v* %79 to i8**
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %87 = bitcast %union.v* %86 to i8**
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 2
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %88, i64 %92, i1 false)
  br label %93

93:                                               ; preds = %77, %53, %60
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %52, %39, %30, %21
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @zcopy_dict(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlength(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 2
  switch i32 %10, label %60 [
    i32 0, label %11
    i32 10, label %11
    i32 13, label %11
    i32 2, label %30
    i32 7, label %49
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = xor i32 %15, -1
  %17 = and i32 %16, 512
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 -7, i32* %2, align 4
  br label %61

20:                                               ; preds = %11
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  store i16 20, i16* %29, align 8
  store i32 0, i32* %2, align 4
  br label %61

30:                                               ; preds = %1
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %31)
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = xor i32 %35, -1
  %37 = and i32 %36, 512
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -7, i32* %2, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = call i32 @dict_length(%struct.ref_s* noundef %41)
  %43 = zext i32 %42 to i64
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %46 = bitcast %union.v* %45 to i64*
  store i64 %43, i64* %46, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  store i16 20, i16* %48, align 8
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %1
  %50 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %51 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_string_ref to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef %50, %struct.ref_s* noundef %4)
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i64
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 20, i16* %59, align 8
  store i32 0, i32* %2, align 4
  br label %61

60:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %49, %40, %39, %20, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #2

declare dso_local i32 @dict_length(%struct.ref_s* noundef) #2

declare dso_local i32 @name_string_ref(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zget(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %8, %struct.ref_s** %4, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %124 [
    i32 2, label %15
    i32 0, label %33
    i32 10, label %33
    i32 13, label %73
  ]

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %16)
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %21, 512
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -7, i32* %2, align 4
  br label %133

25:                                               ; preds = %15
  %26 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = call i32 @dict_lookup(%struct.ref_s* noundef %26, %struct.ref_s* noundef %27, %struct.ref_s* noundef %28, %struct.ref_s** noundef %5)
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -21, i32* %2, align 4
  br label %133

32:                                               ; preds = %25
  br label %125

33:                                               ; preds = %1, %1
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 252
  %39 = icmp eq i32 %38, 20
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -20, i32* %2, align 4
  br label %133

41:                                               ; preds = %33
  %42 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = and i32 %46, 512
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -7, i32* %2, align 4
  br label %133

50:                                               ; preds = %41
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %53 = bitcast %union.v* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i64
  %59 = icmp uge i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 -15, i32* %2, align 4
  br label %133

61:                                               ; preds = %50
  %62 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to %struct.ref_s**
  %65 = load %struct.ref_s*, %struct.ref_s** %64, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %68 = bitcast %union.v* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 %71
  store %struct.ref_s* %72, %struct.ref_s** %5, align 8
  br label %125

73:                                               ; preds = %1
  %74 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %76 = load i16, i16* %75, align 8
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 252
  %79 = icmp eq i32 %78, 20
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i32 -20, i32* %2, align 4
  br label %133

81:                                               ; preds = %73
  %82 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 8
  %85 = zext i16 %84 to i32
  %86 = xor i32 %85, -1
  %87 = and i32 %86, 512
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 -7, i32* %2, align 4
  br label %133

90:                                               ; preds = %81
  %91 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 0
  %93 = bitcast %union.v* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 2
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i64
  %99 = icmp uge i64 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 -15, i32* %2, align 4
  br label %133

101:                                              ; preds = %90
  %102 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %104 = bitcast %union.v* %103 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %108 = bitcast %union.v* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %105, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %117, i32 0, i32 0
  %119 = bitcast %union.v* %118 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 1
  store i16 20, i16* %121, align 8
  %122 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i64 -1
  store %struct.ref_s* %123, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %133

124:                                              ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %133

125:                                              ; preds = %61, %32
  %126 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %126, i64 -1
  %128 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %129 = bitcast %struct.ref_s* %127 to i8*
  %130 = bitcast %struct.ref_s* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 16, i1 false)
  %131 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 -1
  store %struct.ref_s* %132, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %125, %124, %101, %100, %89, %80, %60, %49, %40, %31, %24
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zput(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %8, %struct.ref_s** %4, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** %5, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 255
  %16 = ashr i32 %15, 2
  switch i32 %16, label %153 [
    i32 2, label %17
    i32 0, label %37
    i32 10, label %86
    i32 13, label %87
  ]

17:                                               ; preds = %1
  %18 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %19 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %18)
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -7, i32* %2, align 4
  br label %157

27:                                               ; preds = %17
  %28 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = call i32 @dict_put(%struct.ref_s* noundef %28, %struct.ref_s* noundef %29, %struct.ref_s* noundef %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %157

36:                                               ; preds = %27
  br label %154

37:                                               ; preds = %1
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 252
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 -20, i32* %2, align 4
  br label %157

45:                                               ; preds = %37
  %46 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %48 = load i16, i16* %47, align 8
  %49 = zext i16 %48 to i32
  %50 = xor i32 %49, -1
  %51 = and i32 %50, 256
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -7, i32* %2, align 4
  br label %157

54:                                               ; preds = %45
  %55 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i64
  %69 = icmp sge i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60, %54
  store i32 -15, i32* %2, align 4
  br label %157

71:                                               ; preds = %60
  %72 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %74 = bitcast %union.v* %73 to %struct.ref_s**
  %75 = load %struct.ref_s*, %struct.ref_s** %74, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %78 = bitcast %union.v* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 %81
  %83 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %84 = bitcast %struct.ref_s* %82 to i8*
  %85 = bitcast %struct.ref_s* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  br label %154

86:                                               ; preds = %1
  store i32 -7, i32* %2, align 4
  br label %157

87:                                               ; preds = %1
  %88 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 8
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 252
  %93 = icmp eq i32 %92, 20
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 -20, i32* %2, align 4
  br label %157

95:                                               ; preds = %87
  %96 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = zext i16 %98 to i32
  %100 = xor i32 %99, -1
  %101 = and i32 %100, 256
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 -7, i32* %2, align 4
  br label %157

104:                                              ; preds = %95
  %105 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %107 = bitcast %union.v* %106 to i64*
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %104
  %111 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 0
  %113 = bitcast %union.v* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i32 0, i32 2
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i64
  %119 = icmp sge i64 %114, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110, %104
  store i32 -15, i32* %2, align 4
  br label %157

121:                                              ; preds = %110
  %122 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i32 0, i32 1
  %124 = load i16, i16* %123, align 8
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 252
  %127 = icmp eq i32 %126, 20
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  store i32 -20, i32* %2, align 4
  br label %157

129:                                              ; preds = %121
  %130 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i32 0, i32 0
  %132 = bitcast %union.v* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = icmp ugt i64 %133, 255
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 -15, i32* %2, align 4
  br label %157

136:                                              ; preds = %129
  %137 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %137, i32 0, i32 0
  %139 = bitcast %union.v* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i8
  %142 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 0
  %144 = bitcast %union.v* %143 to i8**
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %146, i32 0, i32 0
  %148 = bitcast %union.v* %147 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %145, i64 %151
  store i8 %141, i8* %152, align 1
  br label %154

153:                                              ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %157

154:                                              ; preds = %136, %71, %36
  %155 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %155, i64 -3
  store %struct.ref_s* %156, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %154, %153, %135, %128, %120, %103, %94, %86, %70, %53, %44, %34, %26
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgetinterval(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %9, %struct.ref_s** %4, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** %5, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 252
  %17 = icmp eq i32 %16, 20
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 252
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -20, i32* %2, align 4
  br label %116

27:                                               ; preds = %19
  %28 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 255
  %33 = ashr i32 %32, 2
  switch i32 %33, label %34 [
    i32 0, label %35
    i32 10, label %35
    i32 13, label %35
  ]

34:                                               ; preds = %27
  store i32 -20, i32* %2, align 4
  br label %116

35:                                               ; preds = %27, %27, %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 8
  %40 = zext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %41, 512
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -7, i32* %2, align 4
  br label %116

45:                                               ; preds = %36
  %46 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 2
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i64
  %54 = icmp ugt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -15, i32* %2, align 4
  br label %116

56:                                               ; preds = %45
  %57 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %59 = bitcast %union.v* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load i32, i32* %6, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = icmp ugt i64 %65, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 -15, i32* %2, align 4
  br label %116

75:                                               ; preds = %56
  %76 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %78 = bitcast %union.v* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 8
  %84 = zext i16 %83 to i32
  %85 = and i32 %84, 255
  %86 = ashr i32 %85, 2
  switch i32 %86, label %103 [
    i32 0, label %87
    i32 10, label %87
    i32 13, label %95
  ]

87:                                               ; preds = %75, %75
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 0
  %91 = bitcast %union.v* %90 to %struct.ref_s**
  %92 = load %struct.ref_s*, %struct.ref_s** %91, align 8
  %93 = zext i32 %88 to i64
  %94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i64 %93
  store %struct.ref_s* %94, %struct.ref_s** %91, align 8
  br label %103

95:                                               ; preds = %75
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %99 = bitcast %union.v* %98 to i8**
  %100 = load i8*, i8** %99, align 8
  %101 = zext i32 %96 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %99, align 8
  br label %103

103:                                              ; preds = %75, %95, %87
  %104 = load i32, i32* %7, align 4
  %105 = trunc i32 %104 to i16
  %106 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 2
  store i16 %105, i16* %107, align 2
  %108 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 1
  %110 = load i16, i16* %109, align 8
  %111 = zext i16 %110 to i32
  %112 = or i32 %111, 32768
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %109, align 8
  %114 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i64 -2
  store %struct.ref_s* %115, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %103, %74, %55, %44, %34, %26, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zputinterval(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %8, %struct.ref_s** %4, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** %5, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 252
  %16 = icmp eq i32 %15, 20
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = ashr i32 %23, 2
  switch i32 %24, label %25 [
    i32 10, label %26
    i32 0, label %27
    i32 13, label %27
  ]

25:                                               ; preds = %18
  store i32 -20, i32* %2, align 4
  br label %63

26:                                               ; preds = %18
  store i32 -7, i32* %2, align 4
  br label %63

27:                                               ; preds = %18, %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = xor i32 %32, -1
  %34 = and i32 %33, 256
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -7, i32* %2, align 4
  br label %63

37:                                               ; preds = %28
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 2
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i64
  %46 = icmp ugt i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 -15, i32* %2, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %52 = bitcast %union.v* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = call i32 @copy_interval(%struct.ref_s* noundef %49, i32 noundef %54, %struct.ref_s* noundef %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -3
  store %struct.ref_s* %61, %struct.ref_s** @osp, align 8
  br label %62

62:                                               ; preds = %59, %48
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %47, %36, %26, %25, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zforall(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32 (%struct.ref_s*)*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %8, %struct.ref_s** %5, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %15 [
    i32 0, label %16
    i32 10, label %16
    i32 13, label %26
    i32 2, label %36
  ]

15:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %89

16:                                               ; preds = %1, %1
  %17 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %21, 512
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -7, i32* %2, align 4
  br label %89

25:                                               ; preds = %16
  store i32 (%struct.ref_s*)* @array_continue, i32 (%struct.ref_s*)** %4, align 8
  store i32 0, i32* %6, align 4
  br label %49

26:                                               ; preds = %1
  %27 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = xor i32 %30, -1
  %32 = and i32 %31, 512
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -7, i32* %2, align 4
  br label %89

35:                                               ; preds = %26
  store i32 (%struct.ref_s*)* @string_continue, i32 (%struct.ref_s*)** %4, align 8
  store i32 0, i32* %6, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %38 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %37)
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %42, 512
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 -7, i32* %2, align 4
  br label %89

46:                                               ; preds = %36
  store i32 (%struct.ref_s*)* @dict_continue, i32 (%struct.ref_s*)** %4, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %48 = call i32 @dict_first(%struct.ref_s* noundef %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %35, %25
  %50 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 6
  %52 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %53 = icmp ugt %struct.ref_s* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -5, i32* %2, align 4
  br label %89

55:                                               ; preds = %49
  %56 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 1
  store %struct.ref_s* %57, %struct.ref_s** @esp, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %60 = bitcast %union.v* %59 to i16*
  store i16 2, i16* %60, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  store i16 33, i16* %62, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 1
  store %struct.ref_s* %64, %struct.ref_s** @esp, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %66 = bitcast %struct.ref_s* %64 to i8*
  %67 = bitcast %struct.ref_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 1
  store %struct.ref_s* %69, %struct.ref_s** @esp, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %74 = bitcast %union.v* %73 to i64*
  store i64 %71, i64* %74, align 8
  %75 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 1
  store i16 20, i16* %76, align 8
  %77 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 1
  store %struct.ref_s* %78, %struct.ref_s** @esp, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %80 = bitcast %struct.ref_s* %78 to i8*
  %81 = bitcast %struct.ref_s* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  %82 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -2
  store %struct.ref_s* %83, %struct.ref_s** @osp, align 8
  %84 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 -2
  store %struct.ref_s* %85, %struct.ref_s** %3, align 8
  %86 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %4, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %88 = call i32 %86(%struct.ref_s* noundef %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %55, %54, %45, %34, %24, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @array_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, -1
  store i16 %10, i16* %8, align 2
  %11 = icmp ne i16 %9, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  store %struct.ref_s* %14, %struct.ref_s** %3, align 8
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %52

20:                                               ; preds = %12
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to %struct.ref_s**
  %25 = load %struct.ref_s*, %struct.ref_s** %24, align 8
  %26 = bitcast %struct.ref_s* %21 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to %struct.ref_s**
  %31 = load %struct.ref_s*, %struct.ref_s** %30, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 1
  store %struct.ref_s* %32, %struct.ref_s** %30, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @array_continue, i32 (%struct.ref_s*)** %37, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  store i16 37, i16* %39, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 2
  store i16 0, i16* %41, align 2
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 1
  store %struct.ref_s* %43, %struct.ref_s** @esp, align 8
  %44 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 2
  %46 = bitcast %struct.ref_s* %43 to i8*
  %47 = bitcast %struct.ref_s* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  br label %51

48:                                               ; preds = %1
  %49 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -4
  store %struct.ref_s* %50, %struct.ref_s** @esp, align 8
  br label %51

51:                                               ; preds = %48, %20
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @string_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, -1
  store i16 %10, i16* %8, align 2
  %11 = icmp ne i16 %9, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  store %struct.ref_s* %14, %struct.ref_s** %3, align 8
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 20, i16* %31, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %34 = bitcast %union.v* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 1
  store %struct.ref_s* %38, %struct.ref_s** @esp, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @string_continue, i32 (%struct.ref_s*)** %41, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  store i16 37, i16* %43, align 8
  %44 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 2
  store i16 0, i16* %45, align 2
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 1
  store %struct.ref_s* %47, %struct.ref_s** @esp, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 2
  %50 = bitcast %struct.ref_s* %47 to i8*
  %51 = bitcast %struct.ref_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  br label %55

52:                                               ; preds = %1
  %53 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -4
  store %struct.ref_s* %54, %struct.ref_s** @esp, align 8
  br label %55

55:                                               ; preds = %52, %20
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dict_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %7, %struct.ref_s** %4, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %11 = bitcast %union.v* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 2
  store %struct.ref_s* %15, %struct.ref_s** %3, align 8
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %17 = icmp ugt %struct.ref_s* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %26 = call i32 @dict_next(%struct.ref_s* noundef %22, i32 noundef %23, %struct.ref_s* noundef %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %34 = bitcast %union.v* %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 1
  store %struct.ref_s* %36, %struct.ref_s** @esp, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %39 = bitcast %union.v* %38 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @dict_continue, i32 (%struct.ref_s*)** %39, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  store i16 37, i16* %41, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 2
  store i16 0, i16* %43, align 2
  %44 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 1
  store %struct.ref_s* %45, %struct.ref_s** @esp, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 2
  %48 = bitcast %struct.ref_s* %45 to i8*
  %49 = bitcast %struct.ref_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %55

50:                                               ; preds = %21
  %51 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -2
  store %struct.ref_s* %52, %struct.ref_s** @osp, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -4
  store %struct.ref_s* %54, %struct.ref_s** @esp, align 8
  br label %55

55:                                               ; preds = %50, %28
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dict_first(%struct.ref_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @zgeneric_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zgeneric_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare dso_local i32 @dict_next(%struct.ref_s* noundef, i32 noundef, %struct.ref_s* noundef) #2

declare dso_local i32 @refcpy(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
