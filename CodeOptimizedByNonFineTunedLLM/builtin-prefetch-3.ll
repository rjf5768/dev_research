; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i16, i16, [8 x i8], %struct.S* }

@glob_int = dso_local global i32 4, align 4
@glob_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_vol_ptr_int = dso_local global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i32 0, i32 0), align 8
@glob_vol_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_ptr_vol_int = dso_local global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i32 0, i32 0), align 8
@glob_vol_ptr_vol_int = dso_local global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i32 0, i32 0), align 8
@str = dso_local global %struct.S zeroinitializer, align 8
@vol_ptr_str = dso_local global %struct.S* @str, align 8
@vol_str = dso_local global %struct.S zeroinitializer, align 8
@ptr_vol_str = dso_local global %struct.S* @vol_str, align 8
@vol_ptr_vol_str = dso_local global %struct.S* @vol_str, align 8
@glob_vol_int = dso_local global i32 0, align 4
@stat_vol_int_arr = internal global [100 x i32] zeroinitializer, align 16
@stat_vol_ptr_int = internal global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @stat_int_arr, i32 0, i32 0), align 8
@stat_ptr_vol_int = internal global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @stat_vol_int_arr, i32 0, i32 0), align 8
@stat_vol_ptr_vol_int = internal global i32* getelementptr inbounds ([100 x i32], [100 x i32]* @stat_vol_int_arr, i32 0, i32 0), align 8
@stat_vol_int = internal global i32 0, align 4
@stat_int_arr = internal global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_vol_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = load i32*, i32** @glob_ptr_vol_int, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @glob_vol_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_vol_file() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @stat_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load volatile i32*, i32** @stat_vol_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = load i32*, i32** @stat_ptr_vol_int, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load volatile i32*, i32** @stat_vol_ptr_vol_int, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @stat_vol_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_vol_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast (%struct.S* @vol_str to i8*), i32 0, i32 0, i32 1)
  %1 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %2 = bitcast %struct.S* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %4 = bitcast %struct.S* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %6 = bitcast %struct.S* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i16* getelementptr inbounds (%struct.S, %struct.S* @vol_str, i32 0, i32 1) to i8*), i32 0, i32 0, i32 1)
  %7 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  %9 = bitcast i16* %8 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 0, i32 0, i32 1)
  %10 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 1
  %12 = bitcast i16* %11 to i8*
  call void @llvm.prefetch.p0i8(i8* %12, i32 0, i32 0, i32 1)
  %13 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %14 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 1
  %15 = bitcast i16* %14 to i8*
  call void @llvm.prefetch.p0i8(i8* %15, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* getelementptr inbounds (%struct.S, %struct.S* @vol_str, i32 0, i32 3, i32 0), i32 0, i32 0, i32 1)
  %16 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 3
  %18 = bitcast [8 x i8]* %17 to i8*
  call void @llvm.prefetch.p0i8(i8* %18, i32 0, i32 0, i32 1)
  %19 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 3
  %21 = bitcast [8 x i8]* %20 to i8*
  call void @llvm.prefetch.p0i8(i8* %21, i32 0, i32 0, i32 1)
  %22 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 3
  %24 = bitcast [8 x i8]* %23 to i8*
  call void @llvm.prefetch.p0i8(i8* %24, i32 0, i32 0, i32 1)
  %25 = load volatile %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i32 0, i32 4), align 8
  %26 = bitcast %struct.S* %25 to i8*
  call void @llvm.prefetch.p0i8(i8* %26, i32 0, i32 0, i32 1)
  %27 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i32 0, i32 4
  %29 = load %struct.S*, %struct.S** %28, align 8
  %30 = bitcast %struct.S* %29 to i8*
  call void @llvm.prefetch.p0i8(i8* %30, i32 0, i32 0, i32 1)
  %31 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i32 0, i32 4
  %33 = load volatile %struct.S*, %struct.S** %32, align 8
  %34 = bitcast %struct.S* %33 to i8*
  call void @llvm.prefetch.p0i8(i8* %34, i32 0, i32 0, i32 1)
  %35 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %36 = getelementptr inbounds %struct.S, %struct.S* %35, i32 0, i32 4
  %37 = load volatile %struct.S*, %struct.S** %36, align 8
  %38 = bitcast %struct.S* %37 to i8*
  call void @llvm.prefetch.p0i8(i8* %38, i32 0, i32 0, i32 1)
  %39 = load volatile %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i32 0, i32 4), align 8
  %40 = getelementptr inbounds %struct.S, %struct.S* %39, i32 0, i32 3
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %40, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %41, i32 0, i32 0, i32 1)
  %42 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %43 = getelementptr inbounds %struct.S, %struct.S* %42, i32 0, i32 4
  %44 = load %struct.S*, %struct.S** %43, align 8
  %45 = getelementptr inbounds %struct.S, %struct.S* %44, i32 0, i32 3
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %46, i32 0, i32 0, i32 1)
  %47 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %48 = getelementptr inbounds %struct.S, %struct.S* %47, i32 0, i32 4
  %49 = load volatile %struct.S*, %struct.S** %48, align 8
  %50 = getelementptr inbounds %struct.S, %struct.S* %49, i32 0, i32 3
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %50, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %51, i32 0, i32 0, i32 1)
  %52 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %53 = getelementptr inbounds %struct.S, %struct.S* %52, i32 0, i32 4
  %54 = load volatile %struct.S*, %struct.S** %53, align 8
  %55 = getelementptr inbounds %struct.S, %struct.S* %54, i32 0, i32 3
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i64 0, i64 0
  call void @llvm.prefetch.p0i8(i8* %56, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %57 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %58 = bitcast i32* %57 to i8*
  call void @llvm.prefetch.p0i8(i8* %58, i32 0, i32 0, i32 1)
  %59 = load i32*, i32** @glob_ptr_vol_int, align 8
  %60 = bitcast i32* %59 to i8*
  call void @llvm.prefetch.p0i8(i8* %60, i32 0, i32 0, i32 1)
  %61 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %62 = bitcast i32* %61 to i8*
  call void @llvm.prefetch.p0i8(i8* %62, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 2) to i8*), i32 0, i32 0, i32 1)
  %63 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = bitcast i32* %64 to i8*
  call void @llvm.prefetch.p0i8(i8* %65, i32 0, i32 0, i32 1)
  %66 = load i32*, i32** @glob_ptr_vol_int, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = bitcast i32* %67 to i8*
  call void @llvm.prefetch.p0i8(i8* %68, i32 0, i32 0, i32 1)
  %69 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = bitcast i32* %70 to i8*
  call void @llvm.prefetch.p0i8(i8* %71, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 3) to i8*), i32 0, i32 0, i32 1)
  %72 = load volatile i32, i32* @glob_vol_int, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 0), i64 %73
  %75 = bitcast i32* %74 to i8*
  call void @llvm.prefetch.p0i8(i8* %75, i32 0, i32 0, i32 1)
  %76 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = bitcast i32* %77 to i8*
  call void @llvm.prefetch.p0i8(i8* %78, i32 0, i32 0, i32 1)
  %79 = load i32*, i32** @glob_ptr_vol_int, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = bitcast i32* %80 to i8*
  call void @llvm.prefetch.p0i8(i8* %81, i32 0, i32 0, i32 1)
  %82 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = bitcast i32* %83 to i8*
  call void @llvm.prefetch.p0i8(i8* %84, i32 0, i32 0, i32 1)
  %85 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %86 = load volatile i32, i32* @glob_vol_int, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  call void @llvm.prefetch.p0i8(i8* %89, i32 0, i32 0, i32 1)
  %90 = load i32*, i32** @glob_ptr_vol_int, align 8
  %91 = load volatile i32, i32* @glob_vol_int, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = bitcast i32* %93 to i8*
  call void @llvm.prefetch.p0i8(i8* %94, i32 0, i32 0, i32 1)
  %95 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %96 = load volatile i32, i32* @glob_vol_int, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = bitcast i32* %98 to i8*
  call void @llvm.prefetch.p0i8(i8* %99, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @simple_vol_global()
  call void @simple_vol_file()
  store %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i32 0, i32 4), align 8
  store volatile %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i32 0, i32 4), align 8
  call void @expr_vol_global()
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
