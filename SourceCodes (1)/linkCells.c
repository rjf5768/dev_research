; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/linkCells.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/linkCells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }

@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/linkCells.c\00", align 1
@__PRETTY_FUNCTION__.initLinkCells = private unnamed_addr constant [48 x i8] c"LinkCell *initLinkCells(const Domain *, real_t)\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"(ll->gridSize[0] >= 2) && (ll->gridSize[1] >= 2) && (ll->gridSize[2] >= 2)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"iBox >= 0\00", align 1
@__PRETTY_FUNCTION__.getBoxFromTuple = private unnamed_addr constant [47 x i8] c"int getBoxFromTuple(LinkCell *, int, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"iBox < boxes->nTotalBoxes\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"boxes->nAtoms[jBox] < MAXATOMS\00", align 1
@__PRETTY_FUNCTION__.moveAtom = private unnamed_addr constant [50 x i8] c"void moveAtom(LinkCell *, Atoms *, int, int, int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.DomainSt*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.LinkCellSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.DomainSt* %0, %struct.DomainSt** %3, align 8
  store double %1, double* %4, align 8
  %8 = load %struct.DomainSt*, %struct.DomainSt** %3, align 8
  %9 = icmp ne %struct.DomainSt* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = call i8* @comdMalloc(i64 noundef 128)
  %14 = bitcast i8* %13 to %struct.LinkCellSt*
  store %struct.LinkCellSt* %14, %struct.LinkCellSt** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %86, %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %89

18:                                               ; preds = %15
  %19 = load %struct.DomainSt*, %struct.DomainSt** %3, align 8
  %20 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %19, i32 0, i32 5
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %26 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %25, i32 0, i32 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 %28
  store double %24, double* %29, align 8
  %30 = load %struct.DomainSt*, %struct.DomainSt** %3, align 8
  %31 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %30, i32 0, i32 6
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 0, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %37 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %36, i32 0, i32 5
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 0, i64 %39
  store double %35, double* %40, align 8
  %41 = load %struct.DomainSt*, %struct.DomainSt** %3, align 8
  %42 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %41, i32 0, i32 7
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 %44
  %46 = load double, double* %45, align 8
  %47 = load double, double* %4, align 8
  %48 = fdiv double %46, %47
  %49 = fptosi double %48 to i32
  %50 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %51 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %51, i64 0, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.DomainSt*, %struct.DomainSt** %3, align 8
  %56 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %55, i32 0, i32 7
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %62 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %62, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %60, %67
  %69 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %70 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %69, i32 0, i32 6
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 %72
  store double %68, double* %73, align 8
  %74 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %75 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %74, i32 0, i32 6
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x double], [3 x double]* %75, i64 0, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fdiv double 1.000000e+00, %79
  %81 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %82 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %81, i32 0, i32 7
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 %84
  store double %80, double* %85, align 8
  br label %86

86:                                               ; preds = %18
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %15, !llvm.loop !4

89:                                               ; preds = %15
  %90 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %91 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %90, i32 0, i32 0
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %95 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %94, i32 0, i32 0
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %95, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %100 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %99, i32 0, i32 0
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %100, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %98, %102
  %104 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %105 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %107 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %106, i32 0, i32 0
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %107, i64 0, i64 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 2
  %111 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %112 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %111, i32 0, i32 0
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %112, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %116 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %115, i32 0, i32 0
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %116, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %114, %118
  %120 = add nsw i32 %119, 2
  %121 = mul nsw i32 %110, %120
  %122 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %123 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %122, i32 0, i32 0
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %123, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %127 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %126, i32 0, i32 0
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %127, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %125, %129
  %131 = add nsw i32 %121, %130
  %132 = mul nsw i32 2, %131
  %133 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %134 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %136 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %139 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %137, %140
  %142 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %143 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %145 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = call i8* @comdMalloc(i64 noundef %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %152 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %151, i32 0, i32 8
  store i32* %150, i32** %152, align 8
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %166, %89
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %156 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %161 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %160, i32 0, i32 8
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %153, !llvm.loop !6

169:                                              ; preds = %153
  %170 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %171 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %170, i32 0, i32 0
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %171, i64 0, i64 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 2
  br i1 %174, label %175, label %188

175:                                              ; preds = %169
  %176 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %177 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %176, i32 0, i32 0
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %177, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sge i32 %179, 2
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %183 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %182, i32 0, i32 0
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %183, i64 0, i64 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp sge i32 %185, 2
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %189

188:                                              ; preds = %181, %175, %169
  call void @__assert_fail(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.initLinkCells, i64 0, i64 0)) #6
  unreachable

189:                                              ; preds = %187
  %190 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  ret %struct.LinkCellSt* %190
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #7
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroyLinkCells(%struct.LinkCellSt** noundef %0) #0 {
  %2 = alloca %struct.LinkCellSt**, align 8
  store %struct.LinkCellSt** %0, %struct.LinkCellSt*** %2, align 8
  %3 = load %struct.LinkCellSt**, %struct.LinkCellSt*** %2, align 8
  %4 = icmp ne %struct.LinkCellSt** %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.LinkCellSt**, %struct.LinkCellSt*** %2, align 8
  %8 = load %struct.LinkCellSt*, %struct.LinkCellSt** %7, align 8
  %9 = icmp ne %struct.LinkCellSt* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %21

11:                                               ; preds = %6
  %12 = load %struct.LinkCellSt**, %struct.LinkCellSt*** %2, align 8
  %13 = load %struct.LinkCellSt*, %struct.LinkCellSt** %12, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  call void @comdFree(i8* noundef %16)
  %17 = load %struct.LinkCellSt**, %struct.LinkCellSt*** %2, align 8
  %18 = load %struct.LinkCellSt*, %struct.LinkCellSt** %17, align 8
  %19 = bitcast %struct.LinkCellSt* %18 to i8*
  call void @comdFree(i8* noundef %19)
  %20 = load %struct.LinkCellSt**, %struct.LinkCellSt*** %2, align 8
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %20, align 8
  br label %21

21:                                               ; preds = %11, %10, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getNeighborBoxes(%struct.LinkCellSt* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.LinkCellSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.LinkCellSt*, %struct.LinkCellSt** %4, align 8
  %15 = load i32, i32* %5, align 4
  call void @getTuple(%struct.LinkCellSt* noundef %14, i32 noundef %15, i32* noundef %7, i32* noundef %8, i32* noundef %9)
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %58, %3
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %54, %23
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp sle i32 %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %50, %31
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.LinkCellSt*, %struct.LinkCellSt** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @getBoxFromTuple(%struct.LinkCellSt* noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %34, !llvm.loop !7

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %26, !llvm.loop !8

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %18, !llvm.loop !9

61:                                               ; preds = %18
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define internal void @getTuple(%struct.LinkCellSt* noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca %struct.LinkCellSt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %17 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %21 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %13, align 4
  br label %231

45:                                               ; preds = %5
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %48 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 2, %54
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = icmp slt i32 %51, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %45
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = icmp slt i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %86

72:                                               ; preds = %61
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %72, %71
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %87, %90
  %92 = add nsw i32 1, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  %98 = add nsw i32 1, %97
  store i32 %98, i32* %13, align 4
  br label %224

99:                                               ; preds = %45
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 2, %103
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = add nsw i32 %111, 2
  %113 = mul nsw i32 %104, %112
  %114 = icmp slt i32 %100, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %99
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 2, %118
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 2
  %131 = load i32*, i32** %14, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = icmp slt i32 %126, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %152

137:                                              ; preds = %115
  %138 = load i32*, i32** %14, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 2
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %15, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %137, %136
  %153 = load i32, i32* %15, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 2
  %158 = srem i32 %153, %157
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 2
  %164 = sdiv i32 %159, %163
  %165 = add nsw i32 1, %164
  store i32 %165, i32* %13, align 4
  br label %223

166:                                              ; preds = %99
  %167 = load i32*, i32** %14, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 2, %169
  %171 = load i32*, i32** %14, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = add nsw i32 %177, 2
  %179 = mul nsw i32 %170, %178
  %180 = load i32, i32* %15, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 2
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 2
  %191 = mul nsw i32 %186, %190
  %192 = icmp slt i32 %182, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %166
  store i32 0, i32* %13, align 4
  br label %210

194:                                              ; preds = %166
  %195 = load i32*, i32** %14, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 2
  %199 = load i32*, i32** %14, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 2
  %203 = mul nsw i32 %198, %202
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %15, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %194, %193
  %211 = load i32, i32* %15, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 2
  %216 = srem i32 %211, %215
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 2
  %222 = sdiv i32 %217, %221
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %210, %152
  br label %224

224:                                              ; preds = %223, %86
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %13, align 4
  br label %231

231:                                              ; preds = %224, %24
  %232 = load i32, i32* %11, align 4
  %233 = load i32*, i32** %8, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load i32*, i32** %9, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32*, i32** %10, align 8
  store i32 %236, i32* %237, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getBoxFromTuple(%struct.LinkCellSt* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.LinkCellSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %12 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %11, i32 0, i32 0
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %4
  %20 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %21 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 2, %25
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %22, %30
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = mul nsw i32 %35, %39
  %41 = add nsw i32 %31, %40
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 2
  %50 = mul nsw i32 %45, %49
  %51 = add nsw i32 %41, %50
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %55, %57
  %59 = add nsw i32 %51, %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  br label %228

63:                                               ; preds = %4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %68 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 2, %72
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = add nsw i32 %69, %77
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 2, %81
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  %87 = mul nsw i32 %82, %86
  %88 = add nsw i32 %78, %87
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 2
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %92, %94
  %96 = add nsw i32 %88, %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %9, align 4
  br label %227

100:                                              ; preds = %63
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %101, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %100
  %107 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %108 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 2, %112
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = add nsw i32 %109, %117
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 2
  %126 = mul nsw i32 %121, %125
  %127 = add nsw i32 %118, %126
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 2
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %127, %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  %137 = add nsw i32 %134, %136
  store i32 %137, i32* %9, align 4
  br label %226

138:                                              ; preds = %100
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %143 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 2, %147
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = add nsw i32 %144, %152
  %154 = load i32, i32* %8, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 2
  %159 = mul nsw i32 %154, %158
  %160 = add nsw i32 %153, %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  %163 = add nsw i32 %160, %162
  store i32 %163, i32* %9, align 4
  br label %225

164:                                              ; preds = %138
  %165 = load i32, i32* %6, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %164
  %171 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %172 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = add nsw i32 %173, %180
  %182 = load i32, i32* %8, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  %187 = add nsw i32 %181, %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %9, align 4
  br label %224

190:                                              ; preds = %164
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %195 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = add nsw i32 %196, %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %202, %203
  store i32 %204, i32* %9, align 4
  br label %223

205:                                              ; preds = %190
  %206 = load i32, i32* %6, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = mul nsw i32 %209, %210
  %212 = add nsw i32 %206, %211
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %10, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %215, %218
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %212, %221
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %205, %193
  br label %224

224:                                              ; preds = %223, %170
  br label %225

225:                                              ; preds = %224, %141
  br label %226

226:                                              ; preds = %225, %106
  br label %227

227:                                              ; preds = %226, %66
  br label %228

228:                                              ; preds = %227, %19
  %229 = load i32, i32* %9, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %233

232:                                              ; preds = %228
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i64 0, i64 0)) #6
  unreachable

233:                                              ; preds = %231
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.LinkCellSt*, %struct.LinkCellSt** %5, align 8
  %236 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  br label %241

240:                                              ; preds = %233
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.getBoxFromTuple, i64 0, i64 0)) #6
  unreachable

241:                                              ; preds = %239
  %242 = load i32, i32* %9, align 4
  ret i32 %242
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putAtomInBox(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #0 {
  %11 = alloca %struct.LinkCellSt*, align 8
  %12 = alloca %struct.AtomsSt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [3 x double], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %11, align 8
  store %struct.AtomsSt* %1, %struct.AtomsSt** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store double %8, double* %19, align 8
  store double %9, double* %20, align 8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %25 = load double, double* %15, align 8
  store double %25, double* %24, align 8
  %26 = getelementptr inbounds double, double* %24, i64 1
  %27 = load double, double* %16, align 8
  store double %27, double* %26, align 8
  %28 = getelementptr inbounds double, double* %26, i64 1
  %29 = load double, double* %17, align 8
  store double %29, double* %28, align 8
  %30 = load %struct.LinkCellSt*, %struct.LinkCellSt** %11, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %32 = call i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %30, double* noundef %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = mul nsw i32 %33, 64
  store i32 %34, i32* %23, align 4
  %35 = load %struct.LinkCellSt*, %struct.LinkCellSt** %11, align 8
  %36 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %22, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %23, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load %struct.LinkCellSt*, %struct.LinkCellSt** %11, align 8
  %46 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %10
  %50 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %51 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %10
  %55 = load %struct.LinkCellSt*, %struct.LinkCellSt** %11, align 8
  %56 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %65 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %72 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load double, double* %15, align 8
  %78 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %79 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %78, i32 0, i32 4
  %80 = load [3 x double]*, [3 x double]** %79, align 8
  %81 = load i32, i32* %23, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x double], [3 x double]* %80, i64 %82
  %84 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0, i64 0
  store double %77, double* %84, align 8
  %85 = load double, double* %16, align 8
  %86 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %87 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %86, i32 0, i32 4
  %88 = load [3 x double]*, [3 x double]** %87, align 8
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x double], [3 x double]* %88, i64 %90
  %92 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 0, i64 1
  store double %85, double* %92, align 8
  %93 = load double, double* %17, align 8
  %94 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %95 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %94, i32 0, i32 4
  %96 = load [3 x double]*, [3 x double]** %95, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x double], [3 x double]* %96, i64 %98
  %100 = getelementptr inbounds [3 x double], [3 x double]* %99, i64 0, i64 2
  store double %93, double* %100, align 8
  %101 = load double, double* %18, align 8
  %102 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %103 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %102, i32 0, i32 5
  %104 = load [3 x double]*, [3 x double]** %103, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 %106
  %108 = getelementptr inbounds [3 x double], [3 x double]* %107, i64 0, i64 0
  store double %101, double* %108, align 8
  %109 = load double, double* %19, align 8
  %110 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %111 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %110, i32 0, i32 5
  %112 = load [3 x double]*, [3 x double]** %111, align 8
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 %114
  %116 = getelementptr inbounds [3 x double], [3 x double]* %115, i64 0, i64 1
  store double %109, double* %116, align 8
  %117 = load double, double* %20, align 8
  %118 = load %struct.AtomsSt*, %struct.AtomsSt** %12, align 8
  %119 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %118, i32 0, i32 5
  %120 = load [3 x double]*, [3 x double]** %119, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x double], [3 x double]* %120, i64 %122
  %124 = getelementptr inbounds [3 x double], [3 x double]* %123, i64 0, i64 2
  store double %117, double* %124, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %0, double* noundef %1) #0 {
  %3 = alloca %struct.LinkCellSt*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %3, align 8
  store double* %1, double** %4, align 8
  %11 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %12 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %11, i32 0, i32 4
  %13 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  store double* %13, double** %5, align 8
  %14 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %14, i32 0, i32 5
  %16 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  store double* %16, double** %6, align 8
  %17 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %18 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %17, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32* %19, i32** %7, align 8
  %20 = load double*, double** %4, align 8
  %21 = getelementptr inbounds double, double* %20, i64 0
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %5, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  %25 = load double, double* %24, align 8
  %26 = fsub double %22, %25
  %27 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %28 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %27, i32 0, i32 7
  %29 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 0, i64 0
  %30 = load double, double* %29, align 8
  %31 = fmul double %26, %30
  %32 = call double @llvm.floor.f64(double %31)
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load double*, double** %4, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  %36 = load double, double* %35, align 8
  %37 = load double*, double** %5, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  %39 = load double, double* %38, align 8
  %40 = fsub double %36, %39
  %41 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %42 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %41, i32 0, i32 7
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = fmul double %40, %44
  %46 = call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load double*, double** %4, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %5, align 8
  %52 = getelementptr inbounds double, double* %51, i64 2
  %53 = load double, double* %52, align 8
  %54 = fsub double %50, %53
  %55 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %56 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %55, i32 0, i32 7
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 2
  %58 = load double, double* %57, align 8
  %59 = fmul double %54, %58
  %60 = call double @llvm.floor.f64(double %59)
  %61 = fptosi double %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load double*, double** %4, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  %64 = load double, double* %63, align 8
  %65 = load double*, double** %6, align 8
  %66 = getelementptr inbounds double, double* %65, i64 0
  %67 = load double, double* %66, align 8
  %68 = fcmp olt double %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %2
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %69
  br label %85

81:                                               ; preds = %2
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load double*, double** %4, align 8
  %87 = getelementptr inbounds double, double* %86, i64 1
  %88 = load double, double* %87, align 8
  %89 = load double*, double** %6, align 8
  %90 = getelementptr inbounds double, double* %89, i64 1
  %91 = load double, double* %90, align 8
  %92 = fcmp olt double %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %93
  br label %109

105:                                              ; preds = %85
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %105, %104
  %110 = load double*, double** %4, align 8
  %111 = getelementptr inbounds double, double* %110, i64 2
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %6, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  %115 = load double, double* %114, align 8
  %116 = fcmp olt double %112, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %123, %117
  br label %133

129:                                              ; preds = %109
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %128
  %134 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @getBoxFromTuple(%struct.LinkCellSt* noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137)
  ret i32 %138
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @moveAtom(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.LinkCellSt*, align 8
  %7 = alloca %struct.AtomsSt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %6, align 8
  store %struct.AtomsSt* %1, %struct.AtomsSt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %21 = load %struct.AtomsSt*, %struct.AtomsSt** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  call void @copyAtom(%struct.LinkCellSt* noundef %20, %struct.AtomsSt* noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25)
  %26 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %27 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %35 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 64
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %44

43:                                               ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.moveAtom, i64 0, i64 0)) #6
  unreachable

44:                                               ; preds = %42
  %45 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %46 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %54 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %64 = load %struct.AtomsSt*, %struct.AtomsSt** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  call void @copyAtom(%struct.LinkCellSt* noundef %63, %struct.AtomsSt* noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %68)
  br label %69

69:                                               ; preds = %62, %44
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %72 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.AtomsSt*, %struct.AtomsSt** %7, align 8
  %77 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyAtom(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.LinkCellSt*, align 8
  %8 = alloca %struct.AtomsSt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %7, align 8
  store %struct.AtomsSt* %1, %struct.AtomsSt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = mul nsw i32 64, %15
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 64, %19
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %24 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %31 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %37 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %44 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %50 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %49, i32 0, i32 4
  %51 = load [3 x double]*, [3 x double]** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 %53
  %55 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 0, i64 0
  %56 = bitcast double* %55 to i8*
  %57 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %58 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %57, i32 0, i32 4
  %59 = load [3 x double]*, [3 x double]** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 %61
  %63 = getelementptr inbounds [3 x double], [3 x double]* %62, i64 0, i64 0
  %64 = bitcast double* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %64, i64 24, i1 false)
  %65 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %65, i32 0, i32 5
  %67 = load [3 x double]*, [3 x double]** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %69
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 0
  %72 = bitcast double* %71 to i8*
  %73 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %74 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %73, i32 0, i32 5
  %75 = load [3 x double]*, [3 x double]** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x double], [3 x double]* %75, i64 %77
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 0
  %80 = bitcast double* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %80, i64 24, i1 false)
  %81 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %82 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %81, i32 0, i32 6
  %83 = load [3 x double]*, [3 x double]** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 %85
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 0
  %88 = bitcast double* %87 to i8*
  %89 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %90 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %89, i32 0, i32 6
  %91 = load [3 x double]*, [3 x double]** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 %93
  %95 = getelementptr inbounds [3 x double], [3 x double]* %94, i64 0, i64 0
  %96 = bitcast double* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %96, i64 24, i1 false)
  %97 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %98 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %97, i32 0, i32 7
  %99 = load double*, double** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = bitcast double* %102 to i8*
  %104 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %105 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %104, i32 0, i32 7
  %106 = load double*, double** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = bitcast double* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %110, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateLinkCells(%struct.LinkCellSt* noundef %0, %struct.AtomsSt* noundef %1) #0 {
  %3 = alloca %struct.LinkCellSt*, align 8
  %4 = alloca %struct.AtomsSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %3, align 8
  store %struct.AtomsSt* %1, %struct.AtomsSt** %4, align 8
  %9 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  call void @emptyHaloCells(%struct.LinkCellSt* noundef %9)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %13 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 64
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %53, %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %22 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  %30 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %31 = load %struct.AtomsSt*, %struct.AtomsSt** %4, align 8
  %32 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %31, i32 0, i32 4
  %33 = load [3 x double]*, [3 x double]** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 %37
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 0
  %40 = call i32 @getBoxFromCoord(%struct.LinkCellSt* noundef %30, double* noundef %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %46 = load %struct.AtomsSt*, %struct.AtomsSt** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  call void @moveAtom(%struct.LinkCellSt* noundef %45, %struct.AtomsSt* noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49)
  br label %53

50:                                               ; preds = %29
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %19, !llvm.loop !10

54:                                               ; preds = %19
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %10, !llvm.loop !11

58:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emptyHaloCells(%struct.LinkCellSt* noundef %0) #0 {
  %2 = alloca %struct.LinkCellSt*, align 8
  %3 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %2, align 8
  %4 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %5 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %10 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7, !llvm.loop !12

23:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maxOccupancy(%struct.LinkCellSt* noundef %0) #0 {
  %2 = alloca %struct.LinkCellSt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.LinkCellSt* %0, %struct.LinkCellSt** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %9 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %15 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %13, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.LinkCellSt*, %struct.LinkCellSt** %2, align 8
  %26 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = phi i32 [ %23, %22 ], [ %31, %24 ]
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6, !llvm.loop !13

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %37
  call void @profileStart(i32 noundef 10)
  br label %39

39:                                               ; preds = %38
  call void @maxIntParallel(i32* noundef %3, i32* noundef %5, i32 noundef 1)
  br label %40

40:                                               ; preds = %39
  call void @profileStop(i32 noundef 10)
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local void @profileStart(i32 noundef) #2

declare dso_local void @maxIntParallel(i32* noundef, i32* noundef, i32 noundef) #2

declare dso_local void @profileStop(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
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
