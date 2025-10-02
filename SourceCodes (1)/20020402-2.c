; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkEntrySType = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }
%struct.ShrPcPteSType = type { %struct.ShrPcStatsSType }
%struct.ShrPcStatsSType = type { i32, i32, %struct.ShrPcCommonStatSType, %union.ShrPcStatUnion }
%struct.ShrPcCommonStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.ShrPcStatUnion = type { %struct.ShrPcGemStatSType }
%struct.ShrPcGemStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [40 x i64] }

@Local1 = dso_local global i64* null, align 8
@Local2 = dso_local global i64* null, align 8
@Local3 = dso_local global i64* null, align 8
@RDbf1 = dso_local global i64* null, align 8
@RDbf2 = dso_local global i64* null, align 8
@RDbf3 = dso_local global i64* null, align 8
@IntVc1 = dso_local global i64* null, align 8
@IntVc2 = dso_local global i64* null, align 8
@IntCode3 = dso_local global i64* null, align 8
@IntCode4 = dso_local global i64* null, align 8
@IntCode5 = dso_local global i64* null, align 8
@IntCode6 = dso_local global i64* null, align 8
@Lom1 = dso_local global i64* null, align 8
@Lom2 = dso_local global i64* null, align 8
@Lom3 = dso_local global i64* null, align 8
@Lom4 = dso_local global i64* null, align 8
@Lom5 = dso_local global i64* null, align 8
@Lom6 = dso_local global i64* null, align 8
@Lom7 = dso_local global i64* null, align 8
@Lom8 = dso_local global i64* null, align 8
@Lom9 = dso_local global i64* null, align 8
@Lom10 = dso_local global i64* null, align 8
@RDbf11 = dso_local global i64* null, align 8
@RDbf12 = dso_local global i64* null, align 8
@Workspace = dso_local global %struct.WorkEntrySType zeroinitializer, align 8
@MyPte = dso_local global %struct.ShrPcPteSType zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitCache(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  call void @initPte(i8* noundef null, i64 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initPte(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ShrPcPteSType*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ShrPcPteSType* @MyPte, %struct.ShrPcPteSType** %5, align 8
  %6 = load %struct.ShrPcPteSType*, %struct.ShrPcPteSType** %5, align 8
  %7 = getelementptr inbounds %struct.ShrPcPteSType, %struct.ShrPcPteSType* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  call void @setStatPointers(%struct.ShrPcStatsSType* noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @InitCache(i32 noundef 5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @setStatPointers(%struct.ShrPcStatsSType* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.ShrPcStatsSType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.WorkEntrySType*, align 8
  store %struct.ShrPcStatsSType* %0, %struct.ShrPcStatsSType** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %9 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %11 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %14 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %14, i32 0, i32 1
  store i64 5, i64* %15, align 8
  %16 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %17 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %17, i32 0, i32 2
  store i64* %18, i64** @Local1, align 8
  %19 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %20 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %20, i32 0, i32 3
  store i64* %21, i64** @Local2, align 8
  %22 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %23 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %23, i32 0, i32 4
  store i64* %24, i64** @Local3, align 8
  %25 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %26 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %26, i32 0, i32 5
  store i64* %27, i64** @RDbf1, align 8
  %28 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %29 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %29, i32 0, i32 6
  store i64* %30, i64** @RDbf2, align 8
  %31 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %32 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ShrPcCommonStatSType, %struct.ShrPcCommonStatSType* %32, i32 0, i32 7
  store i64* %33, i64** @RDbf3, align 8
  %34 = load i64*, i64** @RDbf3, align 8
  store i64 1, i64* %34, align 8
  %35 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %36 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %35, i32 0, i32 3
  %37 = bitcast %union.ShrPcStatUnion* %36 to %struct.ShrPcGemStatSType*
  %38 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %37, i32 0, i32 12
  store i64* %38, i64** @IntVc1, align 8
  %39 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %40 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %39, i32 0, i32 3
  %41 = bitcast %union.ShrPcStatUnion* %40 to %struct.ShrPcGemStatSType*
  %42 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %41, i32 0, i32 13
  store i64* %42, i64** @IntVc2, align 8
  %43 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %44 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %43, i32 0, i32 3
  %45 = bitcast %union.ShrPcStatUnion* %44 to %struct.ShrPcGemStatSType*
  %46 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %45, i32 0, i32 14
  store i64* %46, i64** @IntCode3, align 8
  %47 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %48 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %47, i32 0, i32 3
  %49 = bitcast %union.ShrPcStatUnion* %48 to %struct.ShrPcGemStatSType*
  %50 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %49, i32 0, i32 15
  store i64* %50, i64** @IntCode4, align 8
  %51 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %52 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %51, i32 0, i32 3
  %53 = bitcast %union.ShrPcStatUnion* %52 to %struct.ShrPcGemStatSType*
  %54 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %53, i32 0, i32 16
  store i64* %54, i64** @IntCode5, align 8
  %55 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %56 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %55, i32 0, i32 3
  %57 = bitcast %union.ShrPcStatUnion* %56 to %struct.ShrPcGemStatSType*
  %58 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %57, i32 0, i32 17
  store i64* %58, i64** @IntCode6, align 8
  store %struct.WorkEntrySType* @Workspace, %struct.WorkEntrySType** %5, align 8
  %59 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %60 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %59, i32 0, i32 3
  %61 = bitcast %union.ShrPcStatUnion* %60 to %struct.ShrPcGemStatSType*
  %62 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %61, i32 0, i32 18
  %63 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %64 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %63, i32 0, i32 0
  store i64* %62, i64** %64, align 8
  %65 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %66 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %65, i32 0, i32 3
  %67 = bitcast %union.ShrPcStatUnion* %66 to %struct.ShrPcGemStatSType*
  %68 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %67, i32 0, i32 19
  %69 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %70 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %69, i32 0, i32 1
  store i64* %68, i64** %70, align 8
  %71 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %72 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %71, i32 0, i32 3
  %73 = bitcast %union.ShrPcStatUnion* %72 to %struct.ShrPcGemStatSType*
  %74 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %73, i32 0, i32 20
  %75 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %76 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %75, i32 0, i32 2
  store i64* %74, i64** %76, align 8
  %77 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %78 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %77, i32 0, i32 3
  %79 = bitcast %union.ShrPcStatUnion* %78 to %struct.ShrPcGemStatSType*
  %80 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %79, i32 0, i32 21
  %81 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %82 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %81, i32 0, i32 3
  store i64* %80, i64** %82, align 8
  %83 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %84 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %83, i32 0, i32 3
  %85 = bitcast %union.ShrPcStatUnion* %84 to %struct.ShrPcGemStatSType*
  %86 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %85, i32 0, i32 22
  %87 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %88 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %87, i32 0, i32 4
  store i64* %86, i64** %88, align 8
  %89 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %90 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %89, i32 0, i32 3
  %91 = bitcast %union.ShrPcStatUnion* %90 to %struct.ShrPcGemStatSType*
  %92 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %91, i32 0, i32 23
  %93 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %94 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %93, i32 0, i32 5
  store i64* %92, i64** %94, align 8
  %95 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %96 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %95, i32 0, i32 3
  %97 = bitcast %union.ShrPcStatUnion* %96 to %struct.ShrPcGemStatSType*
  %98 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %97, i32 0, i32 24
  %99 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %100 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %99, i32 0, i32 6
  store i64* %98, i64** %100, align 8
  %101 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %102 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %101, i32 0, i32 3
  %103 = bitcast %union.ShrPcStatUnion* %102 to %struct.ShrPcGemStatSType*
  %104 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %103, i32 0, i32 25
  %105 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %106 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %105, i32 0, i32 7
  store i64* %104, i64** %106, align 8
  %107 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %108 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %107, i32 0, i32 3
  %109 = bitcast %union.ShrPcStatUnion* %108 to %struct.ShrPcGemStatSType*
  %110 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %109, i32 0, i32 26
  %111 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %112 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %111, i32 0, i32 8
  store i64* %110, i64** %112, align 8
  %113 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %114 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %113, i32 0, i32 3
  %115 = bitcast %union.ShrPcStatUnion* %114 to %struct.ShrPcGemStatSType*
  %116 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %115, i32 0, i32 27
  %117 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %118 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %117, i32 0, i32 9
  store i64* %116, i64** %118, align 8
  %119 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %120 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %119, i32 0, i32 3
  %121 = bitcast %union.ShrPcStatUnion* %120 to %struct.ShrPcGemStatSType*
  %122 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %121, i32 0, i32 28
  %123 = load %struct.WorkEntrySType*, %struct.WorkEntrySType** %5, align 8
  %124 = getelementptr inbounds %struct.WorkEntrySType, %struct.WorkEntrySType* %123, i32 0, i32 10
  store i64* %122, i64** %124, align 8
  %125 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %126 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %125, i32 0, i32 3
  %127 = bitcast %union.ShrPcStatUnion* %126 to %struct.ShrPcGemStatSType*
  %128 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %127, i32 0, i32 0
  store i64* %128, i64** @Lom1, align 8
  %129 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %130 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %129, i32 0, i32 3
  %131 = bitcast %union.ShrPcStatUnion* %130 to %struct.ShrPcGemStatSType*
  %132 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %131, i32 0, i32 1
  store i64* %132, i64** @Lom2, align 8
  %133 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %134 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %133, i32 0, i32 3
  %135 = bitcast %union.ShrPcStatUnion* %134 to %struct.ShrPcGemStatSType*
  %136 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %135, i32 0, i32 2
  store i64* %136, i64** @Lom3, align 8
  %137 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %138 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %137, i32 0, i32 3
  %139 = bitcast %union.ShrPcStatUnion* %138 to %struct.ShrPcGemStatSType*
  %140 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %139, i32 0, i32 3
  store i64* %140, i64** @Lom4, align 8
  %141 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %142 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %141, i32 0, i32 3
  %143 = bitcast %union.ShrPcStatUnion* %142 to %struct.ShrPcGemStatSType*
  %144 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %143, i32 0, i32 4
  store i64* %144, i64** @Lom5, align 8
  %145 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %146 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %145, i32 0, i32 3
  %147 = bitcast %union.ShrPcStatUnion* %146 to %struct.ShrPcGemStatSType*
  %148 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %147, i32 0, i32 5
  store i64* %148, i64** @Lom6, align 8
  %149 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %150 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %149, i32 0, i32 3
  %151 = bitcast %union.ShrPcStatUnion* %150 to %struct.ShrPcGemStatSType*
  %152 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %151, i32 0, i32 6
  store i64* %152, i64** @Lom7, align 8
  %153 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %154 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %153, i32 0, i32 3
  %155 = bitcast %union.ShrPcStatUnion* %154 to %struct.ShrPcGemStatSType*
  %156 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %155, i32 0, i32 7
  store i64* %156, i64** @Lom8, align 8
  %157 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %158 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %157, i32 0, i32 3
  %159 = bitcast %union.ShrPcStatUnion* %158 to %struct.ShrPcGemStatSType*
  %160 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %159, i32 0, i32 8
  store i64* %160, i64** @Lom9, align 8
  %161 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %162 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %161, i32 0, i32 3
  %163 = bitcast %union.ShrPcStatUnion* %162 to %struct.ShrPcGemStatSType*
  %164 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %163, i32 0, i32 9
  store i64* %164, i64** @Lom10, align 8
  %165 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %166 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %165, i32 0, i32 3
  %167 = bitcast %union.ShrPcStatUnion* %166 to %struct.ShrPcGemStatSType*
  %168 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %167, i32 0, i32 10
  store i64* %168, i64** @RDbf11, align 8
  %169 = load %struct.ShrPcStatsSType*, %struct.ShrPcStatsSType** %3, align 8
  %170 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %169, i32 0, i32 3
  %171 = bitcast %union.ShrPcStatUnion* %170 to %struct.ShrPcGemStatSType*
  %172 = getelementptr inbounds %struct.ShrPcGemStatSType, %struct.ShrPcGemStatSType* %171, i32 0, i32 11
  store i64* %172, i64** @RDbf12, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
