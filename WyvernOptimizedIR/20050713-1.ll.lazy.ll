; ModuleID = './20050713-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050713-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@__const.main.a = private unnamed_addr constant %struct.S { i32 3, i32 4, i32 5 }, align 8
@__const.main.b = private unnamed_addr constant %struct.S { i32 6, i32 7, i32 8 }, align 8
@__const.main.c = private unnamed_addr constant %struct.S { i32 9, i32 10, i32 11 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo2(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.S, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.S* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %11, i8* noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  store i32 %3, i32* %14, align 8
  %15 = bitcast %struct.S* %7 to i8*
  %16 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %15, i8* noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %.not = icmp eq i32 %18, 3
  br i1 %.not, label %19, label %25

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %.not1 = icmp eq i32 %21, 4
  br i1 %.not1, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %.not2 = icmp eq i32 %24, 5
  br i1 %.not2, label %26, label %25

25:                                               ; preds = %22, %19, %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 0
  %28 = load i32, i32* %27, align 4
  %.not3 = icmp eq i32 %28, 6
  br i1 %.not3, label %29, label %35

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 1
  %31 = load i32, i32* %30, align 4
  %.not4 = icmp eq i32 %31, 7
  br i1 %.not4, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.S, %struct.S* %7, i64 0, i32 2
  %34 = load i32, i32* %33, align 4
  %.not5 = icmp eq i32 %34, 8
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %32, %29, %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %35, %25
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  store i32 %1, i32* %16, align 8
  %17 = bitcast %struct.S* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %17, i8* noundef nonnull align 8 dereferenceable(12) %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 1
  store i32 %3, i32* %20, align 8
  %21 = bitcast %struct.S* %9 to i8*
  %22 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %21, i8* noundef nonnull align 8 dereferenceable(12) %22, i64 12, i1 false)
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 0
  store i64 %4, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 1
  store i32 %5, i32* %24, align 8
  %25 = bitcast %struct.S* %11 to i8*
  %26 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %25, i8* noundef nonnull align 8 dereferenceable(12) %26, i64 12, i1 false)
  %27 = bitcast { i64, i32 }* %13 to i8*
  %28 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %27, i8* noundef nonnull align 4 dereferenceable(12) %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast { i64, i32 }* %14 to i8*
  %34 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %33, i8* noundef nonnull align 4 dereferenceable(12) %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @foo2(i64 %30, i32 %32, i64 %36, i32 %38)
  %40 = getelementptr inbounds %struct.S, %struct.S* %11, i64 0, i32 0
  %41 = load i32, i32* %40, align 4
  %.not = icmp eq i32 %41, 9
  br i1 %.not, label %42, label %48

42:                                               ; preds = %6
  %43 = getelementptr inbounds %struct.S, %struct.S* %11, i64 0, i32 1
  %44 = load i32, i32* %43, align 4
  %.not1 = icmp eq i32 %44, 10
  br i1 %.not1, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.S, %struct.S* %11, i64 0, i32 2
  %47 = load i32, i32* %46, align 4
  %.not2 = icmp eq i32 %47, 11
  br i1 %.not2, label %49, label %48

48:                                               ; preds = %45, %42, %6
  call void @abort() #3
  unreachable

49:                                               ; preds = %45
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar2(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.S, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca { i64, i32 }, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 1
  store i32 %1, i32* %12, align 8
  %13 = bitcast %struct.S* %5 to i8*
  %14 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %13, i8* noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  store i32 %3, i32* %16, align 8
  %17 = bitcast %struct.S* %7 to i8*
  %18 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %17, i8* noundef nonnull align 8 dereferenceable(12) %18, i64 12, i1 false)
  %19 = bitcast { i64, i32 }* %9 to i8*
  %20 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %19, i8* noundef nonnull align 4 dereferenceable(12) %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = bitcast { i64, i32 }* %10 to i8*
  %26 = bitcast %struct.S* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %25, i8* noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @foo2(i64 %22, i32 %24, i64 %28, i32 %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  store i32 %1, i32* %17, align 8
  %18 = bitcast %struct.S* %7 to i8*
  %19 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %18, i8* noundef nonnull align 8 dereferenceable(12) %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 0
  store i64 %2, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 1
  store i32 %3, i32* %21, align 8
  %22 = bitcast %struct.S* %9 to i8*
  %23 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %22, i8* noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 0
  store i64 %4, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 1
  store i32 %5, i32* %25, align 8
  %26 = bitcast %struct.S* %11 to i8*
  %27 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %26, i8* noundef nonnull align 8 dereferenceable(12) %27, i64 12, i1 false)
  %28 = bitcast { i64, i32 }* %13 to i8*
  %29 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %28, i8* noundef nonnull align 4 dereferenceable(12) %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = bitcast { i64, i32 }* %14 to i8*
  %35 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %34, i8* noundef nonnull align 4 dereferenceable(12) %35, i64 12, i1 false)
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = bitcast { i64, i32 }* %15 to i8*
  %41 = bitcast %struct.S* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %40, i8* noundef nonnull align 4 dereferenceable(12) %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i64 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @foo3(i64 %31, i32 %33, i64 %37, i32 %39, i64 %43, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i64 %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.S, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.S, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.S, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  store i32 %1, i32* %17, align 8
  %18 = bitcast %struct.S* %7 to i8*
  %19 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %18, i8* noundef nonnull align 8 dereferenceable(12) %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 0
  store i64 %2, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i64 0, i32 1
  store i32 %3, i32* %21, align 8
  %22 = bitcast %struct.S* %9 to i8*
  %23 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %22, i8* noundef nonnull align 8 dereferenceable(12) %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 0
  store i64 %4, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i64 0, i32 1
  store i32 %5, i32* %25, align 8
  %26 = bitcast %struct.S* %11 to i8*
  %27 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %26, i8* noundef nonnull align 8 dereferenceable(12) %27, i64 12, i1 false)
  %28 = bitcast { i64, i32 }* %13 to i8*
  %29 = bitcast %struct.S* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %28, i8* noundef nonnull align 4 dereferenceable(12) %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i64 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = bitcast { i64, i32 }* %14 to i8*
  %35 = bitcast %struct.S* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %34, i8* noundef nonnull align 4 dereferenceable(12) %35, i64 12, i1 false)
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i64 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = bitcast { i64, i32 }* %15 to i8*
  %41 = bitcast %struct.S* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %40, i8* noundef nonnull align 4 dereferenceable(12) %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i64 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @foo3(i64 %31, i32 %33, i64 %37, i32 %39, i64 %43, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca { i64, i32 }, align 8
  %2 = alloca { i64, i32 }, align 8
  %3 = alloca { i64, i32 }, align 8
  %4 = alloca { i64, i32 }, align 8
  %5 = alloca { i64, i32 }, align 8
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca { i64, i32 }, align 8
  %8 = alloca { i64, i32 }, align 8
  %9 = bitcast { i64, i32 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %9, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.b to i8*), i64 12, i1 false)
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = bitcast { i64, i32 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %14, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.a to i8*), i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bar2(i64 %11, i32 %13, i64 %16, i32 %18)
  %20 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %20, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.b to i8*), i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %25, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.a to i8*), i64 12, i1 false)
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i64 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %30, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.c to i8*), i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bar3(i64 %22, i32 %24, i64 %27, i32 %29, i64 %32, i32 %34)
  %36 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %36, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.c to i8*), i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %41, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.a to i8*), i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %46, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* @__const.main.b to i8*), i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @baz3(i64 %38, i32 %40, i64 %43, i32 %45, i64 %48, i32 %50)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
