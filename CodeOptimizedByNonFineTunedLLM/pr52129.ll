; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52129.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52129.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { [64 x i8], [64 x i8] }
%struct.S = type { i8*, i32 }

@t = dso_local global %struct.T zeroinitializer, align 1
@__const.main.s = private unnamed_addr constant %struct.S { i8* getelementptr (%struct.T, %struct.T* @t, i32 0, i32 0, i64 69), i32 27 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0, i8* %1, i32 %2, i8* noundef %3, i8* noundef %4) #0 {
  %6 = alloca %struct.S, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = bitcast %struct.S* %6 to { i8*, i32 }*
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %10, i32 0, i32 0
  store i8* %1, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %10, i32 0, i32 1
  store i32 %2, i32* %12, align 8
  store i8* %0, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* %4, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0, i64 2)
  br i1 %14, label %29, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 1, i64 5)
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 27
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0, i64 17)
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 1, i64 17)
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %19, %15, %5
  call void @abort() #3
  unreachable

30:                                               ; preds = %26
  ret i32 29
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* %3, i32 %4, i32 noundef %5, %struct.T* noundef %6) #0 {
  %8 = alloca %struct.S, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.T*, align 8
  %14 = bitcast %struct.S* %8 to { i8*, i32 }*
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 0
  store i8* %3, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 1
  store i32 %4, i32* %16, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.T* %6, %struct.T** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.T*, %struct.T** %13, align 8
  %19 = getelementptr inbounds %struct.T, %struct.T* %18, i32 0, i32 0
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %21
  %23 = load %struct.T*, %struct.T** %13, align 8
  %24 = getelementptr inbounds %struct.T, %struct.T* %23, i32 0, i32 1
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 %26
  %28 = bitcast %struct.S* %8 to { i8*, i32 }*
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @foo(i8* noundef %17, i8* %30, i32 %32, i8* noundef %22, i8* noundef %27)
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.S* @__const.main.s to i8*), i64 16, i1 false)
  %4 = bitcast %struct.S* %2 to { i8*, i32 }*
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bar(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0, i64 2), i8* noundef null, i8* noundef null, i8* %6, i32 %8, i32 noundef 17, %struct.T* noundef @t)
  %10 = icmp ne i32 %9, 29
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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
