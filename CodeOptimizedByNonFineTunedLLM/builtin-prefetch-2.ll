; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i16, i16, [8 x i8], %struct.S* }

@glob_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_ptr_int = dso_local global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i32 0, i32 0), align 8
@glob_int = dso_local global i32 4, align 4
@str = dso_local global %struct.S zeroinitializer, align 8
@ptr_str = dso_local global %struct.S* @str, align 8
@stat_int_arr = internal global [100 x i32] zeroinitializer, align 16
@stat_ptr_int = internal global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @stat_int_arr, i32 0, i32 0), align 8
@stat_int = internal global i32 0, align 4
@simple_static_local.gx = internal global [100 x i32] zeroinitializer, align 16
@simple_static_local.hx = internal global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @simple_static_local.gx, i32 0, i32 0), align 8
@simple_static_local.ix = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load i32*, i32** @glob_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @glob_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_file() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @stat_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load i32*, i32** @stat_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @stat_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_static_local() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @simple_static_local.gx to i8*), i32 0, i32 0, i32 1)
  %1 = load i32*, i32** @simple_static_local.hx, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @simple_static_local.ix to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_local() #0 {
  %1 = alloca [100 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  store i32* %4, i32** %2, align 8
  %5 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_arg(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 0, i32 1)
  %11 = bitcast i32* %6 to i8*
  call void @llvm.prefetch.p0i8(i8* %11, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast (%struct.S* @str to i8*), i32 0, i32 0, i32 1)
  %1 = load %struct.S*, %struct.S** @ptr_str, align 8
  %2 = bitcast %struct.S* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i16* getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 1) to i8*), i32 0, i32 0, i32 1)
  %3 = load %struct.S*, %struct.S** @ptr_str, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %5 = bitcast i16* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 3, i32 0), i32 0, i32 0, i32 1)
  %6 = load %struct.S*, %struct.S** @ptr_str, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 3
  %8 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 4), align 8
  %10 = bitcast %struct.S* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 0, i32 1)
  %11 = load %struct.S*, %struct.S** @ptr_str, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 4
  %13 = load %struct.S*, %struct.S** %12, align 8
  %14 = bitcast %struct.S* %13 to i8*
  call void @llvm.prefetch.p0i8(i8* %14, i32 0, i32 0, i32 1)
  %15 = load %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 4), align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 3
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %17, i32 0, i32 0, i32 1)
  %18 = load %struct.S*, %struct.S** @ptr_str, align 8
  %19 = getelementptr inbounds %struct.S, %struct.S* %18, i32 0, i32 4
  %20 = load %struct.S*, %struct.S** %19, align 8
  %21 = getelementptr inbounds %struct.S, %struct.S* %20, i32 0, i32 3
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %22, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_int_arr to i8*), i32 0, i32 0, i32 1)
  %23 = load i32*, i32** @glob_ptr_int, align 8
  %24 = bitcast i32* %23 to i8*
  call void @llvm.prefetch.p0i8(i8* %24, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 2) to i8*), i32 0, i32 0, i32 1)
  %25 = load i32*, i32** @glob_ptr_int, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = bitcast i32* %26 to i8*
  call void @llvm.prefetch.p0i8(i8* %27, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 3) to i8*), i32 0, i32 0, i32 1)
  %28 = load i32, i32* @glob_int, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 0), i64 %29
  %31 = bitcast i32* %30 to i8*
  call void @llvm.prefetch.p0i8(i8* %31, i32 0, i32 0, i32 1)
  %32 = load i32*, i32** @glob_ptr_int, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = bitcast i32* %33 to i8*
  call void @llvm.prefetch.p0i8(i8* %34, i32 0, i32 0, i32 1)
  %35 = load i32*, i32** @glob_ptr_int, align 8
  %36 = load i32, i32* @glob_int, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to i8*
  call void @llvm.prefetch.p0i8(i8* %39, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_local() #0 {
  %1 = alloca [10 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.S, align 8
  %4 = alloca %struct.S*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  store i32* %6, i32** %2, align 8
  store %struct.S* %3, %struct.S** %4, align 8
  store i32 4, i32* %5, align 4
  %7 = bitcast %struct.S* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %7, i32 0, i32 0, i32 1)
  %8 = load %struct.S*, %struct.S** %4, align 8
  %9 = bitcast %struct.S* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %11 = bitcast i16* %10 to i8*
  call void @llvm.prefetch.p0i8(i8* %11, i32 0, i32 0, i32 1)
  %12 = load %struct.S*, %struct.S** %4, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 1
  %14 = bitcast i16* %13 to i8*
  call void @llvm.prefetch.p0i8(i8* %14, i32 0, i32 0, i32 1)
  %15 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %16 = bitcast [8 x i8]* %15 to i8*
  call void @llvm.prefetch.p0i8(i8* %16, i32 0, i32 0, i32 1)
  %17 = load %struct.S*, %struct.S** %4, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 3
  %19 = bitcast [8 x i8]* %18 to i8*
  call void @llvm.prefetch.p0i8(i8* %19, i32 0, i32 0, i32 1)
  %20 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 4
  %21 = load %struct.S*, %struct.S** %20, align 8
  %22 = bitcast %struct.S* %21 to i8*
  call void @llvm.prefetch.p0i8(i8* %22, i32 0, i32 0, i32 1)
  %23 = load %struct.S*, %struct.S** %4, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 4
  %25 = load %struct.S*, %struct.S** %24, align 8
  %26 = bitcast %struct.S* %25 to i8*
  call void @llvm.prefetch.p0i8(i8* %26, i32 0, i32 0, i32 1)
  %27 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 4
  %28 = load %struct.S*, %struct.S** %27, align 8
  %29 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 3
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %30, i32 0, i32 0, i32 1)
  %31 = load %struct.S*, %struct.S** %4, align 8
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i32 0, i32 4
  %33 = load %struct.S*, %struct.S** %32, align 8
  %34 = getelementptr inbounds %struct.S, %struct.S* %33, i32 0, i32 3
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %34, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %35, i32 0, i32 0, i32 1)
  %36 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %36, i32 0, i32 0, i32 1)
  %37 = load i32*, i32** %2, align 8
  %38 = bitcast i32* %37 to i8*
  call void @llvm.prefetch.p0i8(i8* %38, i32 0, i32 0, i32 1)
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  %40 = bitcast i32* %39 to i8*
  call void @llvm.prefetch.p0i8(i8* %40, i32 0, i32 0, i32 1)
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = bitcast i32* %42 to i8*
  call void @llvm.prefetch.p0i8(i8* %43, i32 0, i32 0, i32 1)
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = bitcast i32* %45 to i8*
  call void @llvm.prefetch.p0i8(i8* %46, i32 0, i32 0, i32 1)
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to i8*
  call void @llvm.prefetch.p0i8(i8* %51, i32 0, i32 0, i32 1)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = bitcast i32* %53 to i8*
  call void @llvm.prefetch.p0i8(i8* %54, i32 0, i32 0, i32 1)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = bitcast i32* %58 to i8*
  call void @llvm.prefetch.p0i8(i8* %59, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @simple_global()
  call void @simple_file()
  call void @simple_static_local()
  call void @simple_local()
  %2 = load i32*, i32** @glob_ptr_int, align 8
  %3 = load i32, i32* @glob_int, align 4
  call void @simple_arg(i32* noundef getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 0), i32* noundef %2, i32 noundef %3)
  store %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 4), align 8
  call void @expr_global()
  call void @expr_local()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
