; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49419.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@t = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %40, %16
  %19 = load %struct.S*, %struct.S** @t, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.S, %struct.S* %19, i64 %21
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i1 [ false, %18 ], [ %30, %27 ]
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = load %struct.S*, %struct.S** @t, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.S, %struct.S* %34, i64 %36
  %38 = getelementptr inbounds %struct.S, %struct.S* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %18, !llvm.loop !4

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #3
  unreachable

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %72, %48
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.S*, %struct.S** @t, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.S, %struct.S* %56, i64 %58
  %60 = getelementptr inbounds %struct.S, %struct.S* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load %struct.S*, %struct.S** @t, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.S, %struct.S* %66, i64 %68
  %70 = getelementptr inbounds %struct.S, %struct.S* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %11, align 4
  br label %52, !llvm.loop !6

75:                                               ; preds = %52
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %15
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x %struct.S], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast [3 x %struct.S]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 36, i1 false)
  %6 = bitcast i8* %5 to [3 x %struct.S]*
  %7 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  store i32 1, i32* %8, align 16
  %9 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 2
  store i32 2, i32* %10, align 8
  %11 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %4, i64 0, i64 0
  store %struct.S* %11, %struct.S** @t, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %13 = call i32 @foo(i32 noundef 0, i32 noundef 1, i32* noundef %12, i32 noundef 3)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #3
  unreachable

16:                                               ; preds = %0
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  call void @abort() #3
  unreachable

25:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
