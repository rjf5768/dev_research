; ModuleID = './memset.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argc = dso_local global i32 1, align 4
@buffer = dso_local global [32 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @main_test() #0 {
  %1 = load i32, i32* @argc, align 4
  %2 = trunc i32 %1 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %2, i64 1, i1 false)
  %3 = trunc i32 %1 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %3, i64 2, i1 false)
  %4 = trunc i32 %1 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(3) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %4, i64 3, i1 false)
  %5 = load i32, i32* @argc, align 4
  %6 = trunc i32 %5 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %6, i64 4, i1 false)
  %7 = trunc i32 %5 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %7, i64 5, i1 false)
  %8 = trunc i32 %5 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %8, i64 6, i1 false)
  %9 = load i32, i32* @argc, align 4
  %10 = trunc i32 %9 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %10, i64 7, i1 false)
  %11 = trunc i32 %9 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(8) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %11, i64 8, i1 false)
  %12 = trunc i32 %9 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %12, i64 9, i1 false)
  %13 = load i32, i32* @argc, align 4
  %14 = trunc i32 %13 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(10) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %14, i64 10, i1 false)
  %15 = trunc i32 %13 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %15, i64 11, i1 false)
  %16 = trunc i32 %13 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %16, i64 12, i1 false)
  %17 = load i32, i32* @argc, align 4
  %18 = trunc i32 %17 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %18, i64 13, i1 false)
  %19 = trunc i32 %17 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(14) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %19, i64 14, i1 false)
  %20 = trunc i32 %17 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(15) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %20, i64 15, i1 false)
  %21 = load i32, i32* @argc, align 4
  %22 = trunc i32 %21 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %22, i64 16, i1 false)
  %23 = trunc i32 %21 to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(17) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 %23, i64 17, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
