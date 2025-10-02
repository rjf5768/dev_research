; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071108-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071108-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8*, i8*, i8, i8, i8 }

@foo.s = internal global %struct.S zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @foo() #0 {
  ret i8* bitcast (%struct.S* @foo.s to i8*)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @bar() #0 {
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.S* @test(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.S*, align 8
  %6 = alloca %struct.S, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i8* @foo()
  %8 = bitcast i8* %7 to %struct.S*
  store %struct.S* %8, %struct.S** %5, align 8
  %9 = load %struct.S*, %struct.S** %5, align 8
  %10 = icmp eq %struct.S* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  store %struct.S* %6, %struct.S** %5, align 8
  %12 = load %struct.S*, %struct.S** %5, align 8
  %13 = bitcast %struct.S* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.S*, %struct.S** %5, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.S*, %struct.S** %5, align 8
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.S*, %struct.S** %5, align 8
  %22 = icmp eq %struct.S* %21, %6
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.S* null, %struct.S** %5, align 8
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.S*, %struct.S** %5, align 8
  ret %struct.S* %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  %6 = bitcast i32* %3 to i8*
  %7 = call %struct.S* @test(i8* noundef %5, i8* noundef %6)
  store %struct.S* %7, %struct.S** %4, align 8
  %8 = load %struct.S*, %struct.S** %4, align 8
  %9 = icmp eq %struct.S* %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %0
  %11 = load %struct.S*, %struct.S** %4, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i32* %2 to i8*
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load %struct.S*, %struct.S** %4, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i32* %3 to i8*
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.S*, %struct.S** %4, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 2
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.S*, %struct.S** %4, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %16, %10, %0
  call void @abort() #3
  unreachable

35:                                               ; preds = %28
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
