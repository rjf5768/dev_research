; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15296.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1 = type { %union.u0**, [4 x %union.u0] }
%union.u0 = type { %union.u0* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.uv = private unnamed_addr constant [4 x { i64 }] [{ i64 } { i64 111 }, { i64 } { i64 222 }, { i64 } { i64 333 }, { i64 } { i64 444 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i8* noundef %0, %struct.s1* noundef %1, %union.u0* noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.s1*, align 8
  %9 = alloca %union.u0*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.u0*, align 8
  %14 = alloca %union.u0*, align 8
  %15 = alloca %union.u0**, align 8
  %16 = alloca %union.u0*, align 8
  %17 = alloca %union.u0**, align 8
  store i8* %0, i8** %7, align 8
  store %struct.s1* %1, %struct.s1** %8, align 8
  store %union.u0* %2, %union.u0** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store %union.u0* null, %union.u0** %13, align 8
  store %union.u0* null, %union.u0** %14, align 8
  %18 = load %struct.s1*, %struct.s1** %8, align 8
  %19 = getelementptr inbounds %struct.s1, %struct.s1* %18, i32 0, i32 0
  %20 = load %union.u0**, %union.u0*** %19, align 8
  store %union.u0** %20, %union.u0*** %15, align 8
  %21 = load %struct.s1*, %struct.s1** %8, align 8
  %22 = getelementptr inbounds %struct.s1, %struct.s1* %21, i32 0, i32 1
  %23 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %22, i64 0, i64 0
  store %union.u0* %23, %union.u0** %16, align 8
  %24 = load %union.u0**, %union.u0*** %15, align 8
  %25 = getelementptr inbounds %union.u0*, %union.u0** %24, i64 0
  store %union.u0** %25, %union.u0*** %17, align 8
  br label %26

26:                                               ; preds = %30, %6
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %26

31:                                               ; preds = %26
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %60

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %60

40:                                               ; preds = %35
  %41 = load %union.u0**, %union.u0*** %17, align 8
  %42 = load %union.u0*, %union.u0** %41, align 8
  %43 = load %union.u0*, %union.u0** %16, align 8
  %44 = getelementptr inbounds %union.u0, %union.u0* %43, i64 0
  %45 = bitcast %union.u0* %44 to %union.u0**
  store %union.u0* %42, %union.u0** %45, align 8
  store i64 -1, i64* %11, align 8
  %46 = load %union.u0*, %union.u0** %16, align 8
  %47 = getelementptr inbounds %union.u0, %union.u0* %46, i64 0
  %48 = bitcast %union.u0* %47 to %union.u0**
  %49 = load %union.u0*, %union.u0** %48, align 8
  store %union.u0* %49, %union.u0** %13, align 8
  %50 = load %union.u0*, %union.u0** %13, align 8
  %51 = icmp ne %union.u0* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  call void @g(i8* noundef %53, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %40
  %55 = load %union.u0*, %union.u0** %13, align 8
  %56 = getelementptr inbounds %union.u0, %union.u0* %55, i64 3
  store %union.u0* %56, %union.u0** %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %union.u0*, %union.u0** %14, align 8
  %59 = bitcast %union.u0* %58 to i64*
  store i64 %57, i64* %59, align 8
  br label %91

60:                                               ; preds = %39, %34
  %61 = load i64, i64* %10, align 8
  %62 = load %union.u0*, %union.u0** %16, align 8
  %63 = getelementptr inbounds %union.u0, %union.u0* %62, i64 0
  %64 = bitcast %union.u0* %63 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load %union.u0*, %union.u0** %16, align 8
  %66 = getelementptr inbounds %union.u0, %union.u0* %65, i64 1
  %67 = bitcast %union.u0* %66 to %union.u0**
  %68 = load %union.u0*, %union.u0** %67, align 8
  store %union.u0* %68, %union.u0** %13, align 8
  %69 = load %union.u0*, %union.u0** %13, align 8
  %70 = icmp ne %union.u0* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i8*, i8** %7, align 8
  call void @g(i8* noundef %72, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %60
  %74 = load %union.u0*, %union.u0** %16, align 8
  %75 = getelementptr inbounds %union.u0, %union.u0* %74, i64 0
  %76 = bitcast %union.u0* %75 to %union.u0**
  %77 = load %union.u0*, %union.u0** %76, align 8
  store %union.u0* %77, %union.u0** %13, align 8
  %78 = load %union.u0*, %union.u0** %13, align 8
  %79 = icmp eq %union.u0* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  call void @g(i8* noundef %81, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  %83 = load %union.u0*, %union.u0** %13, align 8
  %84 = getelementptr inbounds %union.u0, %union.u0* %83, i64 2
  store %union.u0* %84, %union.u0** %14, align 8
  %85 = load %union.u0*, %union.u0** %16, align 8
  %86 = getelementptr inbounds %union.u0, %union.u0* %85, i64 1
  %87 = bitcast %union.u0* %86 to %union.u0**
  %88 = load %union.u0*, %union.u0** %87, align 8
  %89 = load %union.u0*, %union.u0** %14, align 8
  %90 = bitcast %union.u0* %89 to %union.u0**
  store %union.u0* %88, %union.u0** %90, align 8
  br label %91

91:                                               ; preds = %82, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x %union.u0], align 16
  %3 = alloca %struct.s1, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x %union.u0]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x { i64 }]* @__const.main.uv to i8*), i64 32, i1 false)
  %5 = bitcast %struct.s1* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false)
  %6 = bitcast i8* %5 to { %union.u0**, [4 x { i64 }] }*
  %7 = getelementptr inbounds { %union.u0**, [4 x { i64 }] }, { %union.u0**, [4 x { i64 }] }* %6, i32 0, i32 1
  %8 = getelementptr inbounds [4 x { i64 }], [4 x { i64 }]* %7, i32 0, i32 0
  %9 = getelementptr inbounds { i64 }, { i64 }* %8, i32 0, i32 0
  store i64 555, i64* %9, align 8
  %10 = getelementptr inbounds [4 x { i64 }], [4 x { i64 }]* %7, i32 0, i32 2
  %11 = getelementptr inbounds { i64 }, { i64 }* %10, i32 0, i32 0
  store i64 999, i64* %11, align 8
  %12 = getelementptr inbounds [4 x { i64 }], [4 x { i64 }]* %7, i32 0, i32 3
  %13 = getelementptr inbounds { i64 }, { i64 }* %12, i32 0, i32 0
  store i64 777, i64* %13, align 8
  %14 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 0
  %15 = ptrtoint %union.u0* %14 to i64
  call void @f(i8* noundef null, %struct.s1* noundef %3, %union.u0* noundef null, i64 noundef 20000, i64 noundef 10000, i64 noundef %15)
  %16 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %17 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %16, i64 0, i64 0
  %18 = bitcast %union.u0* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 0
  %21 = ptrtoint %union.u0* %20 to i64
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %61, label %23

23:                                               ; preds = %0
  %24 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %25 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %24, i64 0, i64 1
  %26 = bitcast %union.u0* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %31 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %30, i64 0, i64 2
  %32 = bitcast %union.u0* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 999
  br i1 %34, label %61, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 1
  %37 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %36, i64 0, i64 3
  %38 = bitcast %union.u0* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 777
  br i1 %40, label %61, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 0
  %43 = bitcast %union.u0* %42 to i64*
  %44 = load i64, i64* %43, align 16
  %45 = icmp ne i64 %44, 111
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 1
  %48 = bitcast %union.u0* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 222
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 2
  %53 = bitcast %union.u0* %52 to i64*
  %54 = load i64, i64* %53, align 16
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %2, i64 0, i64 3
  %58 = bitcast %union.u0* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 444
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %51, %46, %41, %35, %29, %23, %0
  call void @abort() #4
  unreachable

62:                                               ; preds = %56
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
