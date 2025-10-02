; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20180226-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20180226-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_int = type { i32, i32, i32, i64* }

@__const.main.i = private unnamed_addr constant %struct.mp_int { i32 2, i32 0, i32 -1, i64* null }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mytest(%struct.mp_int* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_int*, align 8
  %5 = alloca i64, align 8
  store %struct.mp_int* %0, %struct.mp_int** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mp_int*, %struct.mp_int** %4, align 8
  %7 = getelementptr inbounds %struct.mp_int, %struct.mp_int* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.mp_int*, %struct.mp_int** %4, align 8
  %13 = getelementptr inbounds %struct.mp_int, %struct.mp_int* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load %struct.mp_int*, %struct.mp_int** %4, align 8
  %19 = getelementptr inbounds %struct.mp_int, %struct.mp_int* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.mp_int*, %struct.mp_int** %4, align 8
  %28 = getelementptr inbounds %struct.mp_int, %struct.mp_int* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %25, %16, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mp_int, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.mp_int* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.mp_int* @__const.main.i to i8*), i64 24, i1 false)
  %4 = call i32 @mytest(%struct.mp_int* noundef %2, i64 noundef 0)
  %5 = icmp ne i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
