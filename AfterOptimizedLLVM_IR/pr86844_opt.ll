; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86844.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [2 x i32] [i32 -1, i32 0], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 3
  store i8 1, i8* %6, align 1
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 2, i8* %9, align 1
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 6
  %13 = load i8, i8* %12, align 1
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %13, i8* %16, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x i32]* @__const.main.a to i8*), i64 8, i1 false)
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %5 = bitcast i32* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 6
  store i8 3, i8* %6, align 2
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  call void @foo(i32* noundef %7)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %9 = bitcast i32* %8 to i8*
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 4
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %0
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %16 = bitcast i32* %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %23 = bitcast i32* %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 2
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %30 = bitcast i32* %29 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21, %14, %0
  call void @abort() #3
  unreachable

36:                                               ; preds = %28
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
