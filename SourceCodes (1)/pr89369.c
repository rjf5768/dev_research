; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89369.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [4 x i32] }

@__const.main.a = private unnamed_addr constant [6 x %struct.S] [%struct.S { [4 x i32] [i32 1235, i32 -1135327013, i32 -232005985, i32 -340504689] }, %struct.S { [4 x i32] [i32 61024153, i32 1623097926, i32 -1563269395, i32 2057405750] }, %struct.S { [4 x i32] [i32 363037976, i32 -815440671, i32 -203384428, i32 1357867518] }, %struct.S { [4 x i32] [i32 -2010690809, i32 -406239130, i32 -1058365625, i32 -1230488509] }, %struct.S { [4 x i32] [i32 -854785998, i32 1564997079, i32 1510669302, i32 -1364690140] }, %struct.S zeroinitializer], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x %struct.S], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [6 x %struct.S]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([6 x %struct.S]* @__const.main.a to i8*), i64 96, i1 false)
  %4 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 5
  %5 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 0
  %6 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 1
  %7 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 2
  %8 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 3
  call void @baz(%struct.S* noundef %4, %struct.S* noundef %5, %struct.S* noundef %6, %struct.S* noundef %7, %struct.S* noundef %8)
  %9 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 0
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 5
  %14 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 0
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 4
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 0
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 5
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %48, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 4
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 5
  %34 = getelementptr inbounds %struct.S, %struct.S* %33, i32 0, i32 0
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 4
  %40 = getelementptr inbounds %struct.S, %struct.S* %39, i32 0, i32 0
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* %2, i64 0, i64 5
  %44 = getelementptr inbounds %struct.S, %struct.S* %43, i32 0, i32 0
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38, %28, %18, %0
  call void @abort() #3
  unreachable

49:                                               ; preds = %38
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @baz(%struct.S* noundef %0, %struct.S* noundef %1, %struct.S* noundef %2, %struct.S* noundef %3, %struct.S* noundef %4) #0 {
  %6 = alloca %struct.S*, align 8
  %7 = alloca %struct.S*, align 8
  %8 = alloca %struct.S*, align 8
  %9 = alloca %struct.S*, align 8
  %10 = alloca %struct.S*, align 8
  %11 = alloca %struct.S, align 4
  %12 = alloca %struct.S, align 4
  store %struct.S* %0, %struct.S** %6, align 8
  store %struct.S* %1, %struct.S** %7, align 8
  store %struct.S* %2, %struct.S** %8, align 8
  store %struct.S* %3, %struct.S** %9, align 8
  store %struct.S* %4, %struct.S** %10, align 8
  %13 = load %struct.S*, %struct.S** %7, align 8
  call void @bar(%struct.S* noundef %11, %struct.S* noundef %13, i32 noundef 1)
  %14 = load %struct.S*, %struct.S** %9, align 8
  call void @foo(%struct.S* noundef %12, %struct.S* noundef %14, i32 noundef 1)
  %15 = load %struct.S*, %struct.S** %7, align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 0
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  %23 = load %struct.S*, %struct.S** %8, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = lshr i32 %26, 11
  %28 = and i32 %27, -536870929
  %29 = xor i32 %22, %28
  %30 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  %34 = load %struct.S*, %struct.S** %10, align 8
  %35 = getelementptr inbounds %struct.S, %struct.S* %34, i32 0, i32 0
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 18
  %39 = xor i32 %33, %38
  %40 = load %struct.S*, %struct.S** %6, align 8
  %41 = getelementptr inbounds %struct.S, %struct.S* %40, i32 0, i32 0
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 0, i64 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.S*, %struct.S** %7, align 8
  %44 = getelementptr inbounds %struct.S, %struct.S* %43, i32 0, i32 0
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %46, %49
  %51 = load %struct.S*, %struct.S** %8, align 8
  %52 = getelementptr inbounds %struct.S, %struct.S* %51, i32 0, i32 0
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 11
  %56 = and i32 %55, -570504321
  %57 = xor i32 %50, %56
  %58 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %57, %60
  %62 = load %struct.S*, %struct.S** %10, align 8
  %63 = getelementptr inbounds %struct.S, %struct.S* %62, i32 0, i32 0
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 18
  %67 = xor i32 %61, %66
  %68 = load %struct.S*, %struct.S** %6, align 8
  %69 = getelementptr inbounds %struct.S, %struct.S* %68, i32 0, i32 0
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.S*, %struct.S** %7, align 8
  %72 = getelementptr inbounds %struct.S, %struct.S* %71, i32 0, i32 0
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 0, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i64 0, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %74, %77
  %79 = load %struct.S*, %struct.S** %8, align 8
  %80 = getelementptr inbounds %struct.S, %struct.S* %79, i32 0, i32 0
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %80, i64 0, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = lshr i32 %82, 11
  %84 = and i32 %83, -1074069505
  %85 = xor i32 %78, %84
  %86 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 0, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %85, %88
  %90 = load %struct.S*, %struct.S** %10, align 8
  %91 = getelementptr inbounds %struct.S, %struct.S* %90, i32 0, i32 0
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %91, i64 0, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 18
  %95 = xor i32 %89, %94
  %96 = load %struct.S*, %struct.S** %6, align 8
  %97 = getelementptr inbounds %struct.S, %struct.S* %96, i32 0, i32 0
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 0, i64 2
  store i32 %95, i32* %98, align 4
  %99 = load %struct.S*, %struct.S** %7, align 8
  %100 = getelementptr inbounds %struct.S, %struct.S* %99, i32 0, i32 0
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %100, i64 0, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load %struct.S*, %struct.S** %8, align 8
  %108 = getelementptr inbounds %struct.S, %struct.S* %107, i32 0, i32 0
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %108, i64 0, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = lshr i32 %110, 11
  %112 = and i32 %111, -1073741834
  %113 = xor i32 %106, %112
  %114 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %114, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %113, %116
  %118 = load %struct.S*, %struct.S** %10, align 8
  %119 = getelementptr inbounds %struct.S, %struct.S* %118, i32 0, i32 0
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 0, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 18
  %123 = xor i32 %117, %122
  %124 = load %struct.S*, %struct.S** %6, align 8
  %125 = getelementptr inbounds %struct.S, %struct.S* %124, i32 0, i32 0
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %125, i64 0, i64 3
  store i32 %123, i32* %126, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal void @bar(%struct.S* noundef %0, %struct.S* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.S*, align 8
  %5 = alloca %struct.S*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %4, align 8
  store %struct.S* %1, %struct.S** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.S*, %struct.S** %5, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %15, 32
  %17 = load %struct.S*, %struct.S** %5, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = or i64 %16, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.S*, %struct.S** %5, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 %27, 32
  %29 = load %struct.S*, %struct.S** %5, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = or i64 %28, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 8
  %38 = zext i32 %37 to i64
  %39 = shl i64 %35, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 8
  %43 = zext i32 %42 to i64
  %44 = shl i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 8
  %48 = sub nsw i32 64, %47
  %49 = zext i32 %48 to i64
  %50 = lshr i64 %45, %49
  %51 = load i64, i64* %9, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load %struct.S*, %struct.S** %4, align 8
  %57 = getelementptr inbounds %struct.S, %struct.S* %56, i32 0, i32 0
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i64 0, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.S*, %struct.S** %4, align 8
  %62 = getelementptr inbounds %struct.S, %struct.S* %61, i32 0, i32 0
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 0
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %9, align 8
  %65 = lshr i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = load %struct.S*, %struct.S** %4, align 8
  %68 = getelementptr inbounds %struct.S, %struct.S* %67, i32 0, i32 0
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 3
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.S*, %struct.S** %4, align 8
  %73 = getelementptr inbounds %struct.S, %struct.S* %72, i32 0, i32 0
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i64 0, i64 2
  store i32 %71, i32* %74, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(%struct.S* noundef %0, %struct.S* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.S*, align 8
  %5 = alloca %struct.S*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %4, align 8
  store %struct.S* %1, %struct.S** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.S*, %struct.S** %5, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %15, 32
  %17 = load %struct.S*, %struct.S** %5, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = or i64 %16, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.S*, %struct.S** %5, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 %27, 32
  %29 = load %struct.S*, %struct.S** %5, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = or i64 %28, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 8
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %35, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 8
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 8
  %48 = sub nsw i32 64, %47
  %49 = zext i32 %48 to i64
  %50 = shl i64 %45, %49
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load %struct.S*, %struct.S** %4, align 8
  %57 = getelementptr inbounds %struct.S, %struct.S* %56, i32 0, i32 0
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i64 0, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.S*, %struct.S** %4, align 8
  %62 = getelementptr inbounds %struct.S, %struct.S* %61, i32 0, i32 0
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 0
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %9, align 8
  %65 = lshr i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = load %struct.S*, %struct.S** %4, align 8
  %68 = getelementptr inbounds %struct.S, %struct.S* %67, i32 0, i32 0
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 3
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.S*, %struct.S** %4, align 8
  %73 = getelementptr inbounds %struct.S, %struct.S* %72, i32 0, i32 0
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i64 0, i64 2
  store i32 %71, i32* %74, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
