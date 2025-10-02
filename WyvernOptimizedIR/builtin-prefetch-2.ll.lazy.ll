; ModuleID = './builtin-prefetch-2.ll'
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

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @simple_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load i8*, i8** bitcast (i32** @glob_ptr_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @glob_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @simple_file() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @stat_int_arr to i8*), i32 0, i32 0, i32 1)
  %1 = load i8*, i8** bitcast (i32** @stat_ptr_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @stat_int to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @simple_static_local() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @simple_static_local.gx to i8*), i32 0, i32 0, i32 1)
  %1 = load i8*, i8** bitcast (i32** @simple_static_local.hx to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* @simple_static_local.ix to i8*), i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @simple_local() #0 {
  %1 = alloca [100 x i32], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  %4 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %4, i32 0, i32 0, i32 1)
  %5 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %5, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @simple_arg(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %2, i32* %4, align 4
  %5 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  %6 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %7, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @expr_global() #0 {
  call void @llvm.prefetch.p0i8(i8* bitcast (%struct.S* @str to i8*), i32 0, i32 0, i32 1)
  %1 = load i8*, i8** bitcast (%struct.S** @ptr_str to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i16* getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 1) to i8*), i32 0, i32 0, i32 1)
  %2 = getelementptr inbounds i8, i8* %1, i64 4
  call void @llvm.prefetch.p0i8(i8* nonnull %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 3, i64 0), i32 0, i32 0, i32 1)
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  %4 = load i8*, i8** bitcast (%struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 4) to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load %struct.S*, %struct.S** @ptr_str, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i64 0, i32 4
  %7 = bitcast %struct.S** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 0, i32 1)
  %9 = load %struct.S*, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 4), align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %10, i32 0, i32 0, i32 1)
  %11 = load %struct.S*, %struct.S** @ptr_str, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i64 0, i32 4
  %13 = load %struct.S*, %struct.S** %12, align 8
  %14 = getelementptr inbounds %struct.S, %struct.S* %13, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %14, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast ([100 x i32]* @glob_int_arr to i8*), i32 0, i32 0, i32 1)
  %15 = load i8*, i8** bitcast (i32** @glob_ptr_int to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %15, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 2) to i8*), i32 0, i32 0, i32 1)
  %16 = getelementptr inbounds i8, i8* %15, i64 12
  call void @llvm.prefetch.p0i8(i8* nonnull %16, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* bitcast (i32* getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 3) to i8*), i32 0, i32 0, i32 1)
  %17 = load i32, i32* @glob_int, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 %18
  %20 = bitcast i32* %19 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %20, i32 0, i32 0, i32 1)
  %21 = load i32*, i32** @glob_ptr_int, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = bitcast i32* %22 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %23, i32 0, i32 0, i32 1)
  %24 = load i32, i32* @glob_int, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = bitcast i32* %26 to i8*
  call void @llvm.prefetch.p0i8(i8* %27, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @expr_local() #0 {
  %1 = alloca [10 x i32], align 16
  %2 = alloca %struct.S, align 8
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %4, i32 0, i32 0, i32 1)
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  %6 = bitcast i16* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %6, i32 0, i32 0, i32 1)
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  %8 = bitcast i16* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %8, i32 0, i32 0, i32 1)
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %9, i32 0, i32 0, i32 1)
  %10 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3, i64 0
  call void @llvm.prefetch.p0i8(i8* nonnull %10, i32 0, i32 0, i32 1)
  %11 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 4
  %12 = bitcast %struct.S** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0i8(i8* %13, i32 0, i32 0, i32 1)
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  call void @llvm.prefetch.p0i8(i8* nonnull %14, i32 0, i32 0, i32 1)
  %15 = getelementptr inbounds i8, i8* %13, i64 8
  call void @llvm.prefetch.p0i8(i8* nonnull %15, i32 0, i32 0, i32 1)
  %16 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %16, i32 0, i32 0, i32 1)
  %17 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %17, i32 0, i32 0, i32 1)
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 2
  %19 = bitcast i32* %18 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %19, i32 0, i32 0, i32 1)
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %21 = bitcast i32* %20 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %21, i32 0, i32 0, i32 1)
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 3
  %23 = bitcast i32* %22 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %23, i32 0, i32 0, i32 1)
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %25 = bitcast i32* %24 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %25, i32 0, i32 0, i32 1)
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 5
  %27 = bitcast i32* %26 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %27, i32 0, i32 0, i32 1)
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 4
  %29 = bitcast i32* %28 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %29, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @simple_global()
  call void @simple_file()
  call void @simple_static_local()
  call void @simple_local()
  %1 = load i32*, i32** @glob_ptr_int, align 8
  %2 = load i32, i32* @glob_int, align 4
  call void @simple_arg(i32* noundef getelementptr inbounds ([100 x i32], [100 x i32]* @glob_int_arr, i64 0, i64 0), i32* noundef %1, i32 noundef %2)
  store %struct.S* @str, %struct.S** getelementptr inbounds (%struct.S, %struct.S* @str, i64 0, i32 4), align 8
  call void @expr_global()
  call void @expr_local()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
