; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/20091028-2_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/20091028-2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @int_gen_ti_header_c_(i8* noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4, i8* noundef %5, i32* noundef %6, i32* noundef %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i8*, i8** @p, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 1 %19, i64 4, i1 false)
  %20 = load i8*, i8** %14, align 8
  %21 = load i8*, i8** @p, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %27, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
