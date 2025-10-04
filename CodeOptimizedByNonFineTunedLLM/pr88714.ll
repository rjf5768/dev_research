; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88714.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32*, i32*, i32* }
%struct.S = type { i32, i32, i32, i32* }

@t = dso_local global %struct.T* null, align 8
@o = dso_local global i32* null, align 8
@__const.main.a = private unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11
  call void @abort() #3
  unreachable

21:                                               ; preds = %17
  br label %39

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.T*, %struct.T** @t, align 8
  %28 = getelementptr inbounds %struct.T, %struct.T* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %26, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 12
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %25, %22
  call void @abort() #3
  unreachable

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %21
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, %struct.S* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.S*, align 8
  %6 = alloca %struct.S*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %5, align 8
  store %struct.S* %1, %struct.S** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @o, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @bar(i32* noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1)
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.S*, %struct.S** %5, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 3
  store i32* %15, i32** %17, align 8
  %18 = load %struct.S*, %struct.S** %6, align 8
  %19 = getelementptr inbounds %struct.S, %struct.S* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.S*, %struct.S** %6, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.S*, %struct.S** %6, align 8
  %27 = getelementptr inbounds %struct.S, %struct.S* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %25, %30
  %32 = load %struct.S*, %struct.S** %6, align 8
  %33 = getelementptr inbounds %struct.S, %struct.S* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.T*, %struct.T** @t, align 8
  %36 = getelementptr inbounds %struct.T, %struct.T* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.S*, %struct.S** %6, align 8
  %39 = getelementptr inbounds %struct.S, %struct.S* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  call void @bar(i32* noundef %37, i32 noundef 0, i32 noundef %40, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca %struct.S, align 8
  %4 = alloca %struct.T, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i32]* @__const.main.a to i8*), i64 16, i1 false)
  %6 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  store i32 3, i32* %8, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32* %10, i32** %9, align 8
  %11 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32* %15, i32** @o, align 8
  store %struct.T* %4, %struct.T** @t, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  call void @foo(%struct.S* noundef %3, %struct.S* noundef %3, i32* noundef %16, i32 noundef 5)
  %17 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 12
  br i1 %19, label %25, label %20

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %24 = icmp ne i32* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %0
  call void @abort() #3
  unreachable

26:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
