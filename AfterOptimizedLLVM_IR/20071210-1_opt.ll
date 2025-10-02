; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071210-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071210-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32 }

@__const.foo.s = private unnamed_addr constant %struct.S { i32 1, i32 2, i32 3, i32 4 }, align 4
@bar.l = internal global [5 x i8*] [i8* blockaddress(@bar, %80), i8* blockaddress(@bar, %80), i8* blockaddress(@bar, %26), i8* blockaddress(@bar, %70), i8* blockaddress(@bar, %83)], align 16
@__const.main.s = private unnamed_addr constant [6 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.S, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 9
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  %18 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.S* @__const.foo.s to i8*), i64 16, i1 false)
  %19 = bitcast %struct.S* %4 to { i64, i64 }*
  %20 = load { i64, i64 }, { i64, i64 }* %19, align 4
  ret { i64, i64 } %20
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @bar(i8** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.S, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8**, i8*** %4, align 8
  store i8** %14, i8*** %6, align 8
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @bar.l, i64 0, i64 0), i8*** %3, align 8
  br label %84

19:                                               ; preds = %2
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %6, align 8
  %22 = load i8*, i8** %20, align 8
  %23 = bitcast i8* %22 to i8**
  store i8** %23, i8*** %12, align 8
  %24 = load i8**, i8*** %12, align 8
  %25 = bitcast i8** %24 to i8*
  br label %86

26:                                               ; preds = %86
  %27 = load i8**, i8*** %12, align 8
  store i8** %27, i8*** %11, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %6, align 8
  %30 = load i8*, i8** %28, align 8
  %31 = bitcast i8* %30 to i8**
  store i8** %31, i8*** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call { i64, i64 } @foo(i32 noundef %43, i32 noundef %44, i32 noundef %45)
  %47 = bitcast %struct.S* %13 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load i8**, i8*** %12, align 8
  %69 = bitcast i8** %68 to i8*
  br label %86

70:                                               ; preds = %86
  %71 = load i8**, i8*** %12, align 8
  store i8** %71, i8*** %11, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %6, align 8
  %74 = load i8*, i8** %72, align 8
  %75 = bitcast i8* %74 to i8**
  store i8** %75, i8*** %12, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 23, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %86, %86
  %81 = load i8**, i8*** %12, align 8
  %82 = bitcast i8** %81 to i8*
  br label %86

83:                                               ; preds = %86
  store i8** null, i8*** %3, align 8
  br label %84

84:                                               ; preds = %83, %18
  %85 = load i8**, i8*** %3, align 8
  ret i8** %85

86:                                               ; preds = %80, %26, %19
  %87 = phi i8* [ %25, %19 ], [ %69, %26 ], [ %82, %80 ]
  indirectbr i8* %87, [label %80, label %80, label %26, label %70, label %83]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [6 x i32], align 16
  store i32 0, i32* %1, align 4
  %5 = call i8** @bar(i8** noundef null, i32* noundef null)
  store i8** %5, i8*** %2, align 8
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %7 = load i8**, i8*** %2, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 2
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds i8*, i8** %6, i64 1
  %11 = load i8**, i8*** %2, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 4
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([6 x i32]* @__const.main.s to i8*), i64 24, i1 false)
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %17 = call i8** @bar(i8** noundef %15, i32* noundef %16)
  %18 = icmp ne i8** %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %0
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  %37 = load i32, i32* %36, align 16
  %38 = icmp ne i32 %37, 11
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 12
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %31, %27, %23, %19, %0
  call void @abort() #3
  unreachable

44:                                               ; preds = %39
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
