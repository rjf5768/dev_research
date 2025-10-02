; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041218-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.V = type { i32, %struct.U }
%struct.U = type { %struct.S, %struct.S }
%struct.S = type { i32, %struct.T }
%struct.T = type { i32, i32, i32*, i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@baz.v = internal global %struct.V zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @dummy1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @dummy2(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.V* @baz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%struct.V* @baz.v to i8*), i8 85, i64 72, i1 false)
  ret %struct.V* @baz.v
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i8* noundef %0, %struct.S* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.S*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.S* %1, %struct.S** %4, align 8
  %5 = load %struct.S*, %struct.S** %4, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = load %struct.S*, %struct.S** %4, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.T, %struct.T* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %9
  %16 = load %struct.S*, %struct.S** %4, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.T, %struct.T* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.S*, %struct.S** %4, align 8
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.T, %struct.T* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.S*, %struct.S** %4, align 8
  %29 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.T, %struct.T* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %21, %15, %9, %2
  call void @abort() #4
  unreachable

35:                                               ; preds = %27
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* noundef %0, i32 noundef %1, i8** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.V*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i8**, i8*** %7, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %26 [
    i32 1, label %21
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = call %struct.V* @bar(i32 noundef %22, i8* noundef %24)
  store %struct.V* %25, %struct.V** %11, align 8
  br label %27

26:                                               ; preds = %17
  store %struct.V* null, %struct.V** %11, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.V*, %struct.V** %11, align 8
  %29 = icmp ne %struct.V* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.V*, %struct.V** %11, align 8
  %33 = bitcast %struct.V* %32 to i8*
  %34 = call i8* @dummy2(i8* noundef %31, i8* noundef %33)
  store i8* %34, i8** %8, align 8
  br label %36

35:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %43

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %13, !llvm.loop !4

40:                                               ; preds = %13
  %41 = load i8*, i8** %8, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.V* @bar(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.V*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.T, align 8
  %7 = alloca %struct.V*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.T* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @dummy1(i8* noundef %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.V* null, %struct.V** %3, align 8
  br label %56

15:                                               ; preds = %2
  %16 = call %struct.V* @baz(i32 noundef 72)
  store %struct.V* %16, %struct.V** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.V*, %struct.V** %7, align 8
  %19 = getelementptr inbounds %struct.V, %struct.V* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.V*, %struct.V** %7, align 8
  %21 = getelementptr inbounds %struct.V, %struct.V* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.U, %struct.U* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.V*, %struct.V** %7, align 8
  %25 = getelementptr inbounds %struct.V, %struct.V* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.U, %struct.U* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.S, %struct.S* %26, i32 0, i32 1
  %28 = bitcast %struct.T* %27 to i8*
  %29 = bitcast %struct.T* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = load %struct.V*, %struct.V** %7, align 8
  %31 = getelementptr inbounds %struct.V, %struct.V* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.U, %struct.U* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.S, %struct.S* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.V*, %struct.V** %7, align 8
  %35 = getelementptr inbounds %struct.V, %struct.V* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.U, %struct.U* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.S, %struct.S* %36, i32 0, i32 1
  %38 = bitcast %struct.T* %37 to i8*
  %39 = bitcast %struct.T* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.V*, %struct.V** %7, align 8
  %42 = getelementptr inbounds %struct.V, %struct.V* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.U, %struct.U* %42, i32 0, i32 0
  %44 = call i32 @check(i8* noundef %40, %struct.S* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %15
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.V*, %struct.V** %7, align 8
  %49 = getelementptr inbounds %struct.V, %struct.V* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.U, %struct.U* %49, i32 0, i32 1
  %51 = call i32 @check(i8* noundef %47, %struct.S* noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %15
  store %struct.V* null, %struct.V** %3, align 8
  br label %56

54:                                               ; preds = %46
  %55 = load %struct.V*, %struct.V** %7, align 8
  store %struct.V* %55, %struct.V** %3, align 8
  br label %56

56:                                               ; preds = %54, %53, %14
  %57 = load %struct.V*, %struct.V** %3, align 8
  ret %struct.V* %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %4 = call i32 @foo(i32* noundef %2, i32 noundef 1, i8** noundef %3)
  call void @abort() #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
