; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82954.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82954.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.p = private unnamed_addr constant [4 x i32] [i32 16, i32 32, i32 64, i32 128], align 16
@__const.main.q = private unnamed_addr constant [4 x i32] [i32 8, i32 4, i32 2, i32 1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noalias noundef %0, i32* noalias noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = xor i32 %7, 1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, 2
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %19, %22
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %28, %31
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i32]* @__const.main.p to i8*), i64 16, i1 false)
  %5 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i32]* @__const.main.q to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32* %7) #3, !srcloc !4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  call void @foo(i32* noundef %8, i32* noundef %9)
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %11 = load i32, i32* %10, align 16
  %12 = icmp ne i32 %11, 17
  br i1 %12, label %25, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 34
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 66
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 129
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %0
  call void @abort() #4
  unreachable

26:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 287}
