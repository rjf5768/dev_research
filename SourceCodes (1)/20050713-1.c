; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050713-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050713-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@__const.main.a = private unnamed_addr constant %struct.S { i32 3, i32 4, i32 5 }, align 4
@__const.main.b = private unnamed_addr constant %struct.S { i32 6, i32 7, i32 8 }, align 4
@__const.main.c = private unnamed_addr constant %struct.S { i32 9, i32 10, i32 11 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo2(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.S, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.S* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %14, align 4
  %15 = bitcast %struct.S* %7 to i8*
  %16 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %4
  call void @abort() #3
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 6
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 7
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33, %29
  call void @abort() #3
  unreachable

42:                                               ; preds = %37
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %16, align 4
  %17 = bitcast %struct.S* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %20, align 4
  %21 = bitcast %struct.S* %9 to i8*
  %22 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %4, i64* %23, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %5, i32* %24, align 4
  %25 = bitcast %struct.S* %11 to i8*
  %26 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = bitcast { i64, i32 }* %13 to i8*
  %28 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 4
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast { i64, i32 }* %14 to i8*
  %34 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @foo2(i64 %30, i32 %32, i64 %36, i32 %38)
  %40 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 9
  br i1 %42, label %51, label %43

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 11
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43, %6
  call void @abort() #3
  unreachable

52:                                               ; preds = %47
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar2(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.S, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %12, align 4
  %13 = bitcast %struct.S* %5 to i8*
  %14 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %16, align 4
  %17 = bitcast %struct.S* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = bitcast { i64, i32 }* %9 to i8*
  %20 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = bitcast { i64, i32 }* %10 to i8*
  %26 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 4
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @foo2(i64 %22, i32 %24, i64 %28, i32 %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %17, align 4
  %18 = bitcast %struct.S* %7 to i8*
  %19 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %21, align 4
  %22 = bitcast %struct.S* %9 to i8*
  %23 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %4, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %5, i32* %25, align 4
  %26 = bitcast %struct.S* %11 to i8*
  %27 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = bitcast { i64, i32 }* %13 to i8*
  %29 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast { i64, i32 }* %14 to i8*
  %35 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = bitcast { i64, i32 }* %15 to i8*
  %41 = bitcast %struct.S* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @foo3(i64 %31, i32 %33, i64 %37, i32 %39, i64 %43, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %17, align 4
  %18 = bitcast %struct.S* %7 to i8*
  %19 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %21, align 4
  %22 = bitcast %struct.S* %9 to i8*
  %23 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %4, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %5, i32* %25, align 4
  %26 = bitcast %struct.S* %11 to i8*
  %27 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = bitcast { i64, i32 }* %13 to i8*
  %29 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast { i64, i32 }* %14 to i8*
  %35 = bitcast %struct.S* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = bitcast { i64, i32 }* %15 to i8*
  %41 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @foo3(i64 %31, i32 %33, i64 %37, i32 %39, i64 %43, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca %struct.S, align 4
  %4 = alloca %struct.S, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  store i32 0, i32* %1, align 4
  %13 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.S* @__const.main.a to i8*), i64 12, i1 false)
  %14 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.S* @__const.main.b to i8*), i64 12, i1 false)
  %15 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.S* @__const.main.c to i8*), i64 12, i1 false)
  %16 = bitcast { i64, i32 }* %5 to i8*
  %17 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = bitcast { i64, i32 }* %6 to i8*
  %23 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bar2(i64 %19, i32 %21, i64 %25, i32 %27)
  %29 = bitcast { i64, i32 }* %7 to i8*
  %30 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 4
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = bitcast { i64, i32 }* %8 to i8*
  %36 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast { i64, i32 }* %9 to i8*
  %42 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bar3(i64 %32, i32 %34, i64 %38, i32 %40, i64 %44, i32 %46)
  %48 = bitcast { i64, i32 }* %10 to i8*
  %49 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 12, i1 false)
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast { i64, i32 }* %11 to i8*
  %55 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = bitcast { i64, i32 }* %12 to i8*
  %61 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @baz3(i64 %51, i32 %53, i64 %57, i32 %59, i64 %63, i32 %65)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
