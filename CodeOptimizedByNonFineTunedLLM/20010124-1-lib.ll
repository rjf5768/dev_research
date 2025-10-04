; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [1024 x i8] }
%union.U = type { %struct.anon }
%struct.anon = type { i32, %struct.S }

@inside_main = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.S* noalias sret(%struct.S) align 1 %0, %struct.S* noundef %1) #0 {
  %3 = alloca %struct.S*, align 8
  store %struct.S* %1, %struct.S** %3, align 8
  %4 = load %struct.S*, %struct.S** %3, align 8
  %5 = bitcast %struct.S* %0 to i8*
  %6 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 1024, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(%union.U* noundef %0) #0 {
  %2 = alloca %union.U*, align 8
  store %union.U* %0, %union.U** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @inside_main, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void @abort() #3
  unreachable

23:                                               ; preds = %16, %12
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @abort() #3
  unreachable

34:                                               ; preds = %27, %23
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %4, align 8
  br label %51

36:                                               ; preds = %3
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %43, %36
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %7, align 8
  %42 = icmp ne i64 %40, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  store i8 %46, i8* %47, align 1
  br label %39, !llvm.loop !4

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
