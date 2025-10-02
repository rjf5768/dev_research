; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071029-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071029-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.T = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@test.i = internal global i32 11, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%union.T* noundef %0) #0 {
  %2 = alloca %union.T*, align 8
  store %union.T* %0, %union.T** %2, align 8
  %3 = load %union.T*, %union.T** %2, align 8
  %4 = bitcast %union.T* %3 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @test.i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @test.i, align 4
  %9 = icmp ne i32 %6, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @abort() #4
  unreachable

11:                                               ; preds = %1
  %12 = load %union.T*, %union.T** %2, align 8
  %13 = bitcast %union.T* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %11
  %18 = load %union.T*, %union.T** %2, align 8
  %19 = bitcast %union.T* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %17
  %24 = load %union.T*, %union.T** %2, align 8
  %25 = bitcast %union.T* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %23
  %30 = load %union.T*, %union.T** %2, align 8
  %31 = bitcast %union.T* %30 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %29
  %36 = load %union.T*, %union.T** %2, align 8
  %37 = bitcast %union.T* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %35
  %42 = load %union.T*, %union.T** %2, align 8
  %43 = bitcast %union.T* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %41
  %48 = load %union.T*, %union.T** %2, align 8
  %49 = bitcast %union.T* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load %union.T*, %union.T** %2, align 8
  %55 = bitcast %union.T* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %union.T*, %union.T** %2, align 8
  %61 = bitcast %union.T* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %union.T*, %union.T** %2, align 8
  %67 = bitcast %union.T* %66 to %struct.anon*
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  call void @abort() #4
  unreachable

72:                                               ; preds = %65
  %73 = load i32, i32* @test.i, align 4
  %74 = icmp eq i32 %73, 20
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @exit(i32 noundef 0) #4
  unreachable

76:                                               ; preds = %72
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.T, align 8
  %4 = alloca %union.T, align 8
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %5, %1
  %6 = bitcast %union.T* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 56, i1 false)
  %7 = bitcast %union.T* %4 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  store i32 %10, i32* %8, align 8
  %11 = bitcast %union.T* %3 to i8*
  %12 = bitcast %union.T* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 56, i1 false)
  call void @test(%union.T* noundef %3)
  br label %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.T*, align 8
  %3 = alloca %union.T*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.T, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store %union.T* null, %union.T** %2, align 8
  br label %6

6:                                                ; preds = %16, %0
  %7 = load %union.T*, %union.T** %2, align 8
  store %union.T* %7, %union.T** %3, align 8
  %8 = bitcast %union.T* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 56, i1 false)
  %9 = bitcast %union.T* %5 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = sext i32 %11 to i64
  store i64 %13, i64* %10, align 8
  store %union.T* %5, %union.T** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %6

17:                                               ; preds = %6
  %18 = load %union.T*, %union.T** %2, align 8
  %19 = load %union.T*, %union.T** %3, align 8
  %20 = icmp ne %union.T* %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %union.T*, %union.T** %2, align 8
  %23 = bitcast %union.T* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %17
  call void @abort() #4
  unreachable

28:                                               ; preds = %21
  call void @foo(i32 noundef 10)
  ret i32 0
}

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
