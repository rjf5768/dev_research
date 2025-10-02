; ModuleID = './builtin-prefetch-3.ll'
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

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local void @simple_vol_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = load i8*, i8** bitcast (i32** @glob_ptr_vol_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  %4 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @glob_vol_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local void @simple_vol_file() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @stat_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load volatile i32*, i32** @stat_vol_ptr_int, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = load i8*, i8** bitcast (i32** @stat_ptr_vol_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  %4 = load volatile i32*, i32** @stat_vol_ptr_vol_int, align 8
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @stat_vol_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define dso_local void @expr_vol_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast (%struct.S* @vol_str to i8*), i32 0, i32 0, i32 1)
  %1 = load i8*, i8** bitcast (%struct.S** @ptr_vol_str to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  %2 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  %4 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %5 = bitcast %struct.S* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i16* getelementptr inbounds (%struct.S, %struct.S* @vol_str, i64 0, i32 1) to i8*), i32 0, i32 0, i32 1)
  %6 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 1
  %8 = bitcast i16* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %8, i32 0, i32 0, i32 1)
  %9 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i64 0, i32 1
  %11 = bitcast i16* %10 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %11, i32 0, i32 0, i32 1)
  %12 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i64 0, i32 1
  %14 = bitcast i16* %13 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %14, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* getelementptr inbounds (%struct.S, %struct.S* @vol_str, i64 0, i32 3, i64 0), i32 0, i32 0, i32 1)
  %15 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %15, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %16, i32 0, i32 0, i32 1)
  %17 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %18, i32 0, i32 0, i32 1)
  %19 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %20, i32 0, i32 0, i32 1)
  %21 = load volatile %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i64 0, i32 4), align 8
  %22 = bitcast %struct.S* %21 to i8*
  call void @llvm.prefetch.p0i8(i8* %22, i32 0, i32 0, i32 1)
  %23 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i64 0, i32 4
  %25 = bitcast %struct.S** %24 to i8**
  %26 = load i8*, i8** %25, align 8
  call void @llvm.prefetch.p0i8(i8* %26, i32 0, i32 0, i32 1)
  %27 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i64 0, i32 4
  %29 = load volatile %struct.S*, %struct.S** %28, align 8
  %30 = bitcast %struct.S* %29 to i8*
  call void @llvm.prefetch.p0i8(i8* %30, i32 0, i32 0, i32 1)
  %31 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %32 = getelementptr inbounds %struct.S, %struct.S* %31, i64 0, i32 4
  %33 = load volatile %struct.S*, %struct.S** %32, align 8
  %34 = bitcast %struct.S* %33 to i8*
  call void @llvm.prefetch.p0i8(i8* %34, i32 0, i32 0, i32 1)
  %35 = load volatile %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i64 0, i32 4), align 8
  %36 = getelementptr inbounds %struct.S, %struct.S* %35, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %36, i32 0, i32 0, i32 1)
  %37 = load volatile %struct.S*, %struct.S** @vol_ptr_str, align 8
  %38 = getelementptr inbounds %struct.S, %struct.S* %37, i64 0, i32 4
  %39 = load %struct.S*, %struct.S** %38, align 8
  %40 = getelementptr inbounds %struct.S, %struct.S* %39, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %40, i32 0, i32 0, i32 1)
  %41 = load %struct.S*, %struct.S** @ptr_vol_str, align 8
  %42 = getelementptr inbounds %struct.S, %struct.S* %41, i64 0, i32 4
  %43 = load volatile %struct.S*, %struct.S** %42, align 8
  %44 = getelementptr inbounds %struct.S, %struct.S* %43, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %44, i32 0, i32 0, i32 1)
  %45 = load volatile %struct.S*, %struct.S** @vol_ptr_vol_str, align 8
  %46 = getelementptr inbounds %struct.S, %struct.S* %45, i64 0, i32 4
  %47 = load volatile %struct.S*, %struct.S** %46, align 8
  %48 = getelementptr inbounds %struct.S, %struct.S* %47, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %48, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_vol_int_arr to i8*), i32 0, i32 0, i32 1)
  %49 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %50 = bitcast i32* %49 to i8*
  call void @llvm.prefetch.p0i8(i8* %50, i32 0, i32 0, i32 1)
  %51 = load i8*, i8** bitcast (i32** @glob_ptr_vol_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %51, i32 0, i32 0, i32 1)
  %52 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %53 = bitcast i32* %52 to i8*
  call void @llvm.prefetch.p0i8(i8* %53, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 2) to i8*), i32 0, i32 0, i32 1)
  %54 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = bitcast i32* %55 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %56, i32 0, i32 0, i32 1)
  %57 = load i32*, i32** @glob_ptr_vol_int, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = bitcast i32* %58 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %59, i32 0, i32 0, i32 1)
  %60 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = bitcast i32* %61 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %62, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 3) to i8*), i32 0, i32 0, i32 1)
  %63 = load volatile i32, i32* @glob_vol_int, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [100 x i32], [100 x i32]* @glob_vol_int_arr, i64 0, i64 %64
  %66 = bitcast i32* %65 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %66, i32 0, i32 0, i32 1)
  %67 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = bitcast i32* %68 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %69, i32 0, i32 0, i32 1)
  %70 = load i32*, i32** @glob_ptr_vol_int, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = bitcast i32* %71 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %72, i32 0, i32 0, i32 1)
  %73 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = bitcast i32* %74 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %75, i32 0, i32 0, i32 1)
  %76 = load volatile i32*, i32** @glob_vol_ptr_int, align 8
  %77 = load volatile i32, i32* @glob_vol_int, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = bitcast i32* %79 to i8*
  call void @llvm.prefetch.p0i8(i8* %80, i32 0, i32 0, i32 1)
  %81 = load i32*, i32** @glob_ptr_vol_int, align 8
  %82 = load volatile i32, i32* @glob_vol_int, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = bitcast i32* %84 to i8*
  call void @llvm.prefetch.p0i8(i8* %85, i32 0, i32 0, i32 1)
  %86 = load volatile i32*, i32** @glob_vol_ptr_vol_int, align 8
  %87 = load volatile i32, i32* @glob_vol_int, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = bitcast i32* %89 to i8*
  call void @llvm.prefetch.p0i8(i8* %90, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @simple_vol_global()
  call void @simple_vol_file()
  store %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 4), align 8
  store volatile %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @vol_str, i64 0, i32 4), align 8
  call void @expr_vol_global()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
