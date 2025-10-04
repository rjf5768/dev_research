; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/ialloc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_state_s = type { %struct.alloc_chunk_s, %struct.alloc_chunk_s*, i32, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, i64, i32, [32 x i8*], %struct.alloc_block_s*, %struct.alloc_save_s*, i32, %struct.alloc_change_s* }
%struct.alloc_chunk_s = type { i8*, i8*, i8*, i8*, i32, %struct.alloc_chunk_s* }
%struct.alloc_block_s = type { %struct.alloc_block_s*, i32, i32, %struct.alloc_state_s* }
%struct.alloc_save_s = type { %struct.alloc_state_s, %struct.alloc_state_s* }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i8*, i32 }

@as_current = internal global %struct.alloc_state_s zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"alloc_shrink\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"alloc_save_state\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"alloc_save_change\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"alloc_restore_state(malloc'ed)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alloc_restore_state\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"alloc chunk\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"large object\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_init(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8* (i32, i32, i8*)*, align 8
  %5 = alloca void (i8*, i32, i32, i8*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alloc_state_s*, align 8
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %4, align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %7, align 8
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %7, align 8
  %9 = bitcast %struct.alloc_state_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 392, i1 false)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.alloc_state_s*, %struct.alloc_state_s** %7, align 8
  %12 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %13, 4
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %7, align 8
  %16 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %4, align 8
  %18 = load %struct.alloc_state_s*, %struct.alloc_state_s** %7, align 8
  %19 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %18, i32 0, i32 4
  store i8* (i32, i32, i8*)* %17, i8* (i32, i32, i8*)** %19, align 8
  %20 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %5, align 8
  %21 = load %struct.alloc_state_s*, %struct.alloc_state_s** %7, align 8
  %22 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %21, i32 0, i32 5
  store void (i8*, i32, i32, i8*)* %20, void (i8*, i32, i32, i8*)** %22, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_status(i64* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.alloc_state_s*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %5, align 8
  %6 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %7 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %11 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = ptrtoint i8* %9 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %18 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %22 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %20 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = add nsw i64 %16, %27
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %30 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i64*, i64** %3, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %35 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %39 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %37 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %46 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i64*, i64** %4, align 8
  store i64 %48, i64* %49, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alloc_state_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %21 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @alloc_large(%struct.alloc_state_s* noundef %25, i32 noundef %26, i8* noundef %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  store i8* %32, i8** %4, align 8
  br label %109

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 7
  %37 = and i32 %36, -8
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ule i32 %38, 255
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %42 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %41, i32 0, i32 9
  %43 = load i32, i32* %10, align 4
  %44 = lshr i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i8*], [32 x i8*]* %42, i64 0, i64 %45
  store i8** %46, i8*** %13, align 8
  %47 = load i8**, i8*** %13, align 8
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i8*, i8** %14, align 8
  %53 = bitcast i8* %52 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %13, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %14, align 8
  store i8* %56, i8** %4, align 8
  br label %109

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %60 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %64 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %62 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %58
  %75 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %76 = call i32 @alloc_add_chunk(%struct.alloc_state_s* noundef %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i8* null, i8** %4, align 8
  br label %109

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %58
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %86 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = zext i32 %84 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %87, align 8
  %92 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %93 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %4, align 8
  br label %109

96:                                               ; preds = %80
  %97 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %98 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %15, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %103 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = zext i32 %101 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %104, align 8
  %108 = load i8*, i8** %15, align 8
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %96, %83, %78, %51, %31
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @alloc_large(%struct.alloc_state_s* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alloc_state_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alloc_block_s*, align 8
  %9 = alloca i8*, align 8
  store %struct.alloc_state_s* %0, %struct.alloc_state_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %11 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %10, i32 0, i32 4
  %12 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = add i32 24, %13
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* %12(i32 noundef 1, i32 noundef %14, i8* noundef %15)
  %17 = bitcast i8* %16 to %struct.alloc_block_s*
  store %struct.alloc_block_s* %17, %struct.alloc_block_s** %8, align 8
  %18 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %19 = icmp eq %struct.alloc_block_s* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %23 = bitcast %struct.alloc_block_s* %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 24
  store i8* %24, i8** %9, align 8
  %25 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %26 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %25, i32 0, i32 10
  %27 = load %struct.alloc_block_s*, %struct.alloc_block_s** %26, align 8
  %28 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %29 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %28, i32 0, i32 0
  store %struct.alloc_block_s* %27, %struct.alloc_block_s** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %32 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %34 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %37 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %39 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %40 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %39, i32 0, i32 3
  store %struct.alloc_state_s* %38, %struct.alloc_state_s** %40, align 8
  %41 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %42 = load %struct.alloc_state_s*, %struct.alloc_state_s** %5, align 8
  %43 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %42, i32 0, i32 10
  store %struct.alloc_block_s* %41, %struct.alloc_block_s** %43, align 8
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %21, %20
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @alloc_add_chunk(%struct.alloc_state_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alloc_state_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.alloc_state_s* %0, %struct.alloc_state_s** %3, align 8
  %5 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %6 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %5, i32 0, i32 4
  %7 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %6, align 8
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i8* %7(i32 noundef 1, i32 noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %17 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %16, i32 0, i32 6
  %18 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %19 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %18, i32 0, i32 7
  call void @alloc_status(i64* noundef %17, i64* noundef %19)
  %20 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %21 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 1
  %26 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %25, align 8
  %27 = icmp ne %struct.alloc_chunk_s* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %30 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %29, i32 0, i32 1
  %31 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %30, align 8
  %32 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %33 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %32, i32 0, i32 0
  %34 = bitcast %struct.alloc_chunk_s* %31 to i8*
  %35 = bitcast %struct.alloc_chunk_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 48, i1 false)
  br label %36

36:                                               ; preds = %28, %15
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 48
  %39 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %40 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %43 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %43, i32 0, i32 0
  store i8* %38, i8** %44, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %47 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %52 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %55 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %55, i32 0, i32 3
  store i8* %50, i8** %56, align 8
  %57 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %58 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %57, i32 0, i32 1
  %59 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %58, align 8
  %60 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %61 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %61, i32 0, i32 5
  store %struct.alloc_chunk_s* %59, %struct.alloc_chunk_s** %62, align 8
  %63 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %64 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %67 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = bitcast i8* %69 to %struct.alloc_chunk_s*
  %71 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %72 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %71, i32 0, i32 1
  store %struct.alloc_chunk_s* %70, %struct.alloc_chunk_s** %72, align 8
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %36, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_free(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alloc_state_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alloc_chunk_s*, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %20 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %8, align 8
  call void @alloc_free_large(i8* noundef %24, i32 noundef %25, i8* noundef %26)
  br label %212

27:                                               ; preds = %4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %30 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %28, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %27
  %35 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %36 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %41 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %45 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %51 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %50, i32 0, i32 11
  %52 = load %struct.alloc_save_s*, %struct.alloc_save_s** %51, align 8
  %53 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ult i8* %49, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48, %39, %34
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %61 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = zext i32 %59 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %62, align 8
  br label %66

66:                                               ; preds = %58, %48
  br label %212

67:                                               ; preds = %27
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 7
  %71 = and i32 %70, -8
  store i32 %71, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %75 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %73, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %67
  %80 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %81 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  %85 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %86 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %90 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %84
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %96 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %95, i32 0, i32 11
  %97 = load %struct.alloc_save_s*, %struct.alloc_save_s** %96, align 8
  %98 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp uge i8* %94, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %93, %84, %79
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %106 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %93
  br label %212

109:                                              ; preds = %67
  %110 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %111 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = icmp ule i8* %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i8*, i8** %5, align 8
  %118 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %119 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ult i8* %117, %121
  br i1 %122, label %180, label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %125 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %12, align 4
  %127 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %128 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %128, i32 0, i32 5
  %130 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %129, align 8
  store %struct.alloc_chunk_s* %130, %struct.alloc_chunk_s** %13, align 8
  br label %131

131:                                              ; preds = %175, %123
  %132 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %133 = icmp ne %struct.alloc_chunk_s* %132, null
  br i1 %133, label %134, label %174

134:                                              ; preds = %131
  %135 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %136 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  switch i32 %139, label %173 [
    i32 0, label %140
    i32 -1, label %161
  ]

140:                                              ; preds = %134
  %141 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %142 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = icmp ule i8* %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %149 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ult i8* %147, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load i8*, i8** %5, align 8
  %154 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %155 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ult i8* %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %179

159:                                              ; preds = %152
  br label %173

160:                                              ; preds = %146, %140
  br label %175

161:                                              ; preds = %134
  %162 = load i8*, i8** %5, align 8
  %163 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %164 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %163, i32 0, i32 11
  %165 = load %struct.alloc_save_s*, %struct.alloc_save_s** %164, align 8
  %166 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ult i8* %162, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %179

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %134, %159
  br label %174

174:                                              ; preds = %173, %131
  br label %212

175:                                              ; preds = %160
  %176 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %13, align 8
  %177 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %176, i32 0, i32 5
  %178 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %177, align 8
  store %struct.alloc_chunk_s* %178, %struct.alloc_chunk_s** %13, align 8
  br label %131

179:                                              ; preds = %171, %158
  br label %189

180:                                              ; preds = %116
  %181 = load i8*, i8** %5, align 8
  %182 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %183 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = icmp uge i8* %181, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %212

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %179
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = icmp ule i32 %193, 255
  br i1 %194, label %195, label %212

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = icmp uge i64 %197, 8
  br i1 %198, label %199, label %212

199:                                              ; preds = %195
  %200 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %201 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %200, i32 0, i32 9
  %202 = load i32, i32* %11, align 4
  %203 = lshr i32 %202, 3
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [32 x i8*], [32 x i8*]* %201, i64 0, i64 %204
  store i8** %205, i8*** %14, align 8
  %206 = load i8**, i8*** %14, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = bitcast i8* %208 to i8**
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = load i8**, i8*** %14, align 8
  store i8* %210, i8** %211, align 8
  br label %212

212:                                              ; preds = %23, %66, %108, %174, %187, %199, %195, %192
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_free_large(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.alloc_block_s**, align 8
  %8 = alloca %struct.alloc_block_s*, align 8
  %9 = alloca %struct.alloc_state_s*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to %struct.alloc_block_s*
  store %struct.alloc_block_s* %12, %struct.alloc_block_s** %8, align 8
  %13 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %14 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %13, i32 0, i32 3
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %14, align 8
  store %struct.alloc_state_s* %15, %struct.alloc_state_s** %9, align 8
  %16 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %17 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %20 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %3
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 10
  store %struct.alloc_block_s** %25, %struct.alloc_block_s*** %7, align 8
  br label %26

26:                                               ; preds = %51, %23
  %27 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %7, align 8
  %28 = load %struct.alloc_block_s*, %struct.alloc_block_s** %27, align 8
  %29 = icmp ne %struct.alloc_block_s* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %7, align 8
  %32 = load %struct.alloc_block_s*, %struct.alloc_block_s** %31, align 8
  store %struct.alloc_block_s* %32, %struct.alloc_block_s** %8, align 8
  %33 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %34 = bitcast %struct.alloc_block_s* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 24
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %40 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %39, i32 0, i32 0
  %41 = load %struct.alloc_block_s*, %struct.alloc_block_s** %40, align 8
  %42 = load %struct.alloc_block_s**, %struct.alloc_block_s*** %7, align 8
  store %struct.alloc_block_s* %41, %struct.alloc_block_s** %42, align 8
  %43 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  %44 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %43, i32 0, i32 5
  %45 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %44, align 8
  %46 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %47 = bitcast %struct.alloc_block_s* %46 to i8*
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 24
  call void %45(i8* noundef %47, i32 noundef 1, i32 noundef %49, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %55

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.alloc_block_s*, %struct.alloc_block_s** %8, align 8
  %53 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %52, i32 0, i32 0
  store %struct.alloc_block_s** %53, %struct.alloc_block_s*** %7, align 8
  br label %26, !llvm.loop !4

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %38, %54, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc_grow(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.alloc_state_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %6, align 8
  br label %146

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %34 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %128

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %40 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %38, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = zext i32 %48 to i64
  %50 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %51 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %55 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %53 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = icmp sle i64 %49, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %44
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %65 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = zext i32 %63 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %66, align 8
  %71 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %72 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %75, i64 %77, i1 false)
  %78 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %79 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %6, align 8
  br label %146

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82, %37
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 7
  %86 = and i32 %85, -8
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 7
  %89 = and i32 %88, -8
  store i32 %89, i32* %17, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %95 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp eq i8* %93, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %83
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %16, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %106 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %110 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %108 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = icmp sle i64 %104, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %99
  %118 = load i32, i32* %19, align 4
  %119 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %120 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = zext i32 %118 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %121, align 8
  %125 = load i8*, i8** %7, align 8
  store i8* %125, i8** %6, align 8
  br label %146

126:                                              ; preds = %99
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127, %31
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i8*, i8** %11, align 8
  %132 = call i8* @alloc(i32 noundef %129, i32 noundef %130, i8* noundef %131)
  store i8* %132, i8** %15, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i8* null, i8** %6, align 8
  br label %146

136:                                              ; preds = %128
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %137, i8* align 1 %138, i64 %140, i1 false)
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i8*, i8** %11, align 8
  call void @alloc_free(i8* noundef %141, i32 noundef %142, i32 noundef %143, i8* noundef %144)
  %145 = load i8*, i8** %15, align 8
  store i8* %145, i8** %6, align 8
  br label %146

146:                                              ; preds = %136, %135, %117, %62, %29
  %147 = load i8*, i8** %6, align 8
  ret i8* %147
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloc_shrink(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.alloc_state_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %6, align 8
  br label %102

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %33 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @alloc(i32 noundef %37, i32 noundef %38, i8* noundef %39)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %6, align 8
  br label %102

45:                                               ; preds = %36
  %46 = load i8*, i8** %15, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %47, i64 %49, i1 false)
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %11, align 8
  call void @alloc_free(i8* noundef %50, i32 noundef %51, i32 noundef %52, i8* noundef %53)
  %54 = load i8*, i8** %15, align 8
  store i8* %54, i8** %6, align 8
  br label %102

55:                                               ; preds = %30
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %58 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %56, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** %16, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %17, align 8
  br label %71

71:                                               ; preds = %75, %62
  %72 = load i8*, i8** %16, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ugt i8* %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %16, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %80, i8** %17, align 8
  store i8 %78, i8* %80, align 1
  br label %71, !llvm.loop !6

81:                                               ; preds = %71
  %82 = load i8*, i8** %17, align 8
  %83 = load %struct.alloc_state_s*, %struct.alloc_state_s** %12, align 8
  %84 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  store i8* %82, i8** %7, align 8
  br label %99

86:                                               ; preds = %55
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 7
  %89 = and i32 %88, -8
  store i32 %89, i32* %18, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 7
  %96 = and i32 %95, -8
  %97 = load i32, i32* %18, align 4
  %98 = sub i32 %96, %97
  call void @alloc_free(i8* noundef %93, i32 noundef 1, i32 noundef %98, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %86, %81
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %6, align 8
  br label %102

102:                                              ; preds = %100, %45, %43, %28
  %103 = load i8*, i8** %6, align 8
  ret i8* %103
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alloc_save_s* @alloc_save_state() #0 {
  %1 = alloca %struct.alloc_save_s*, align 8
  %2 = alloca %struct.alloc_state_s*, align 8
  %3 = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %2, align 8
  %4 = call i8* @alloc(i32 noundef 1, i32 noundef 400, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %5 = bitcast i8* %4 to %struct.alloc_save_s*
  store %struct.alloc_save_s* %5, %struct.alloc_save_s** %3, align 8
  %6 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  %7 = icmp eq %struct.alloc_save_s* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %1, align 8
  br label %31

9:                                                ; preds = %0
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  %11 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %10, i32 0, i32 0
  %12 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %13 = bitcast %struct.alloc_state_s* %11 to i8*
  %14 = bitcast %struct.alloc_state_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 392, i1 false)
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %16 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 9
  %17 = getelementptr inbounds [32 x i8*], [32 x i8*]* %16, i64 0, i64 0
  %18 = bitcast i8** %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 256, i1 false)
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %20 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 10
  store %struct.alloc_block_s* null, %struct.alloc_block_s** %20, align 8
  %21 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  %22 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %23 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %22, i32 0, i32 11
  store %struct.alloc_save_s* %21, %struct.alloc_save_s** %23, align 8
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.alloc_state_s*, %struct.alloc_state_s** %2, align 8
  %29 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %28, i32 0, i32 13
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %29, align 8
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  store %struct.alloc_save_s* %30, %struct.alloc_save_s** %1, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load %struct.alloc_save_s*, %struct.alloc_save_s** %1, align 8
  ret %struct.alloc_save_s* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alloc_save_change(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alloc_state_s*, align 8
  %7 = alloca %struct.alloc_change_s*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.alloc_state_s* @as_current, %struct.alloc_state_s** %6, align 8
  %8 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  %9 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 24, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @alloc(i32 noundef 1, i32 noundef %17, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = bitcast i8* %18 to %struct.alloc_change_s*
  store %struct.alloc_change_s* %19, %struct.alloc_change_s** %7, align 8
  %20 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %21 = icmp eq %struct.alloc_change_s* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %44

23:                                               ; preds = %13
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 13
  %26 = load %struct.alloc_change_s*, %struct.alloc_change_s** %25, align 8
  %27 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %28 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %27, i32 0, i32 0
  store %struct.alloc_change_s* %26, %struct.alloc_change_s** %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %31 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %34 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %36 = bitcast %struct.alloc_change_s* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 24
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 %40, i1 false)
  %41 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %42 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  %43 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %42, i32 0, i32 13
  store %struct.alloc_change_s* %41, %struct.alloc_change_s** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %23, %22, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alloc_save_level() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.alloc_state_s, %struct.alloc_state_s* @as_current, i32 0, i32 12), align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alloc_is_since_save(i8* noundef %0, %struct.alloc_save_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alloc_save_s*, align 8
  %6 = alloca %struct.alloc_state_s*, align 8
  %7 = alloca %struct.alloc_chunk_s*, align 8
  %8 = alloca %struct.alloc_state_s*, align 8
  %9 = alloca %struct.alloc_block_s*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.alloc_save_s* %1, %struct.alloc_save_s** %5, align 8
  %10 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %11 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %10, i32 0, i32 1
  %12 = load %struct.alloc_state_s*, %struct.alloc_state_s** %11, align 8
  store %struct.alloc_state_s* %12, %struct.alloc_state_s** %6, align 8
  %13 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %14 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ule i8* %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %23 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ult i8* %21, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %31 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp uge i8* %29, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %39 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ult i8* %37, %42
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %109

47:                                               ; preds = %20, %2
  %48 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  %49 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %48, i32 0, i32 0
  store %struct.alloc_chunk_s* %49, %struct.alloc_chunk_s** %7, align 8
  br label %50

50:                                               ; preds = %72, %47
  %51 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %7, align 8
  %52 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %55 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %7, align 8
  %61 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ule i8* %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %7, align 8
  %68 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ult i8* %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %109

72:                                               ; preds = %65, %59
  %73 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %7, align 8
  %74 = getelementptr inbounds %struct.alloc_chunk_s, %struct.alloc_chunk_s* %73, i32 0, i32 5
  %75 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %74, align 8
  store %struct.alloc_chunk_s* %75, %struct.alloc_chunk_s** %7, align 8
  br label %50, !llvm.loop !7

76:                                               ; preds = %50
  %77 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  store %struct.alloc_state_s* %77, %struct.alloc_state_s** %8, align 8
  br label %78

78:                                               ; preds = %103, %76
  %79 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %80 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %81 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %80, i32 0, i32 0
  %82 = icmp ne %struct.alloc_state_s* %79, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %78
  %84 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %85 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %84, i32 0, i32 10
  %86 = load %struct.alloc_block_s*, %struct.alloc_block_s** %85, align 8
  store %struct.alloc_block_s* %86, %struct.alloc_block_s** %9, align 8
  br label %87

87:                                               ; preds = %98, %83
  %88 = load %struct.alloc_block_s*, %struct.alloc_block_s** %9, align 8
  %89 = icmp ne %struct.alloc_block_s* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.alloc_block_s*, %struct.alloc_block_s** %9, align 8
  %92 = bitcast %struct.alloc_block_s* %91 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 24
  %94 = load i8*, i8** %4, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %3, align 4
  br label %109

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.alloc_block_s*, %struct.alloc_block_s** %9, align 8
  %100 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %99, i32 0, i32 0
  %101 = load %struct.alloc_block_s*, %struct.alloc_block_s** %100, align 8
  store %struct.alloc_block_s* %101, %struct.alloc_block_s** %9, align 8
  br label %87, !llvm.loop !8

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.alloc_state_s*, %struct.alloc_state_s** %8, align 8
  %105 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %104, i32 0, i32 11
  %106 = load %struct.alloc_save_s*, %struct.alloc_save_s** %105, align 8
  %107 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %106, i32 0, i32 0
  store %struct.alloc_state_s* %107, %struct.alloc_state_s** %8, align 8
  br label %78, !llvm.loop !9

108:                                              ; preds = %78
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %96, %71, %44
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alloc_save_s*, align 8
  %4 = alloca %struct.alloc_save_s*, align 8
  store %struct.alloc_save_s* %0, %struct.alloc_save_s** %3, align 8
  %5 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  %6 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %5, i32 0, i32 1
  %7 = load %struct.alloc_state_s*, %struct.alloc_state_s** %6, align 8
  %8 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %7, i32 0, i32 11
  %9 = load %struct.alloc_save_s*, %struct.alloc_save_s** %8, align 8
  store %struct.alloc_save_s* %9, %struct.alloc_save_s** %4, align 8
  br label %10

10:                                               ; preds = %18, %1
  %11 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %12 = load %struct.alloc_save_s*, %struct.alloc_save_s** %3, align 8
  %13 = icmp ne %struct.alloc_save_s* %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %16 = icmp eq %struct.alloc_save_s* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %24

18:                                               ; preds = %14
  %19 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %20 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %20, i32 0, i32 11
  %22 = load %struct.alloc_save_s*, %struct.alloc_save_s** %21, align 8
  store %struct.alloc_save_s* %22, %struct.alloc_save_s** %4, align 8
  br label %10, !llvm.loop !10

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alloc_restore_state(%struct.alloc_save_s* noundef %0) #0 {
  %2 = alloca %struct.alloc_save_s*, align 8
  %3 = alloca %struct.alloc_state_s*, align 8
  %4 = alloca %struct.alloc_save_s*, align 8
  %5 = alloca %struct.alloc_chunk_s*, align 8
  %6 = alloca %struct.alloc_block_s*, align 8
  %7 = alloca %struct.alloc_change_s*, align 8
  store %struct.alloc_save_s* %0, %struct.alloc_save_s** %2, align 8
  %8 = load %struct.alloc_save_s*, %struct.alloc_save_s** %2, align 8
  %9 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %8, i32 0, i32 1
  %10 = load %struct.alloc_state_s*, %struct.alloc_state_s** %9, align 8
  store %struct.alloc_state_s* %10, %struct.alloc_state_s** %3, align 8
  br label %11

11:                                               ; preds = %75, %1
  %12 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %13 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %12, i32 0, i32 11
  %14 = load %struct.alloc_save_s*, %struct.alloc_save_s** %13, align 8
  store %struct.alloc_save_s* %14, %struct.alloc_save_s** %4, align 8
  %15 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %16 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %15, i32 0, i32 1
  %17 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %16, align 8
  store %struct.alloc_chunk_s* %17, %struct.alloc_chunk_s** %5, align 8
  %18 = load %struct.alloc_chunk_s*, %struct.alloc_chunk_s** %5, align 8
  %19 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %20 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %19, i32 0, i32 0
  %21 = bitcast %struct.alloc_chunk_s* %18 to i8*
  %22 = bitcast %struct.alloc_chunk_s* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 48, i1 false)
  br label %23

23:                                               ; preds = %28, %11
  %24 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %25 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %24, i32 0, i32 10
  %26 = load %struct.alloc_block_s*, %struct.alloc_block_s** %25, align 8
  %27 = icmp ne %struct.alloc_block_s* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %30 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %29, i32 0, i32 10
  %31 = load %struct.alloc_block_s*, %struct.alloc_block_s** %30, align 8
  store %struct.alloc_block_s* %31, %struct.alloc_block_s** %6, align 8
  %32 = load %struct.alloc_block_s*, %struct.alloc_block_s** %6, align 8
  %33 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %32, i32 0, i32 0
  %34 = load %struct.alloc_block_s*, %struct.alloc_block_s** %33, align 8
  %35 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %36 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %35, i32 0, i32 10
  store %struct.alloc_block_s* %34, %struct.alloc_block_s** %36, align 8
  %37 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %38 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %37, i32 0, i32 5
  %39 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %38, align 8
  %40 = load %struct.alloc_block_s*, %struct.alloc_block_s** %6, align 8
  %41 = bitcast %struct.alloc_block_s* %40 to i8*
  %42 = load %struct.alloc_block_s*, %struct.alloc_block_s** %6, align 8
  %43 = getelementptr inbounds %struct.alloc_block_s, %struct.alloc_block_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add i32 24, %44
  call void %39(i8* noundef %41, i32 noundef 1, i32 noundef %45, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %23, !llvm.loop !11

46:                                               ; preds = %23
  %47 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %48 = getelementptr inbounds %struct.alloc_state_s, %struct.alloc_state_s* %47, i32 0, i32 13
  %49 = load %struct.alloc_change_s*, %struct.alloc_change_s** %48, align 8
  store %struct.alloc_change_s* %49, %struct.alloc_change_s** %7, align 8
  br label %50

50:                                               ; preds = %53, %46
  %51 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %52 = icmp ne %struct.alloc_change_s* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %55 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %58 = bitcast %struct.alloc_change_s* %57 to i8*
  %59 = getelementptr inbounds i8, i8* %58, i64 24
  %60 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %61 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 %59, i64 %63, i1 false)
  %64 = load %struct.alloc_change_s*, %struct.alloc_change_s** %7, align 8
  %65 = getelementptr inbounds %struct.alloc_change_s, %struct.alloc_change_s* %64, i32 0, i32 0
  %66 = load %struct.alloc_change_s*, %struct.alloc_change_s** %65, align 8
  store %struct.alloc_change_s* %66, %struct.alloc_change_s** %7, align 8
  br label %50, !llvm.loop !12

67:                                               ; preds = %50
  %68 = load %struct.alloc_state_s*, %struct.alloc_state_s** %3, align 8
  %69 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %70 = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %69, i32 0, i32 0
  %71 = bitcast %struct.alloc_state_s* %68 to i8*
  %72 = bitcast %struct.alloc_state_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 392, i1 false)
  %73 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %74 = bitcast %struct.alloc_save_s* %73 to i8*
  call void @alloc_free(i8* noundef %74, i32 noundef 1, i32 noundef 400, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %67
  %76 = load %struct.alloc_save_s*, %struct.alloc_save_s** %4, align 8
  %77 = load %struct.alloc_save_s*, %struct.alloc_save_s** %2, align 8
  %78 = icmp ne %struct.alloc_save_s* %76, %77
  br i1 %78, label %11, label %79, !llvm.loop !13

79:                                               ; preds = %75
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
