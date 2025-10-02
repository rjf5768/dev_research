; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @good_const(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 1, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 2, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 3, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32* %11 to i8*
  call void @llvm.prefetch.p0i8(i8* %12, i32 1, i32 0, i32 1)
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32* %13 to i8*
  call void @llvm.prefetch.p0i8(i8* %14, i32 1, i32 1, i32 1)
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i8*
  call void @llvm.prefetch.p0i8(i8* %16, i32 1, i32 1, i32 1)
  %17 = load i32*, i32** %2, align 8
  %18 = bitcast i32* %17 to i8*
  call void @llvm.prefetch.p0i8(i8* %18, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @good_enum(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 1, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 0, i32 2, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 3, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32* %11 to i8*
  call void @llvm.prefetch.p0i8(i8* %12, i32 1, i32 0, i32 1)
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32* %13 to i8*
  call void @llvm.prefetch.p0i8(i8* %14, i32 1, i32 1, i32 1)
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i8*
  call void @llvm.prefetch.p0i8(i8* %16, i32 1, i32 2, i32 1)
  %17 = load i32*, i32** %2, align 8
  %18 = bitcast i32* %17 to i8*
  call void @llvm.prefetch.p0i8(i8* %18, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @good_expr(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 0, i32 1)
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @good_vararg(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 3, i32 1)
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 3, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 1, i32 3, i32 1)
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 3, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @good_const(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_enum(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_expr(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_vararg(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
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
