; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071202-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071202-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, [6 x i32], %struct.T }
%struct.T = type { i32, [8 x i32] }

@constinit = private global [6 x i32] zeroinitializer, align 4
@__const.main.s = private unnamed_addr constant %struct.S { i32 6, i32 12, [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], %struct.T { i32 7, [8 x i32] [i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15] } }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca %struct.S, align 4
  store %struct.S* %0, %struct.S** %2, align 8
  %4 = load %struct.S*, %struct.S** %2, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %6 = load %struct.S*, %struct.S** %2, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %10 = load %struct.S*, %struct.S** %2, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  %14 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %16 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([6 x i32]* @constinit to i8*), i64 24, i1 false)
  %17 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %18 = load %struct.S*, %struct.S** %2, align 8
  %19 = getelementptr inbounds %struct.S, %struct.S* %18, i32 0, i32 3
  %20 = bitcast %struct.T* %17 to i8*
  %21 = bitcast %struct.T* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 36, i1 false)
  %22 = bitcast %struct.S* %4 to i8*
  %23 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 68, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.S* @__const.main.s to i8*), i64 68, i1 false)
  call void @foo(%struct.S* noundef %2)
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 12
  br i1 %6, label %41, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 6
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %22, i64 0, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %27, i64 0, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %32, i64 0, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %37, i64 0, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31, %26, %21, %16, %11, %7, %0
  call void @abort() #4
  unreachable

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %44 = getelementptr inbounds %struct.T, %struct.T* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 7
  br i1 %46, label %95, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %49 = getelementptr inbounds %struct.T, %struct.T* %48, i32 0, i32 1
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %49, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %95, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %55 = getelementptr inbounds %struct.T, %struct.T* %54, i32 0, i32 1
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %55, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 9
  br i1 %58, label %95, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %61 = getelementptr inbounds %struct.T, %struct.T* %60, i32 0, i32 1
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %95, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %67 = getelementptr inbounds %struct.T, %struct.T* %66, i32 0, i32 1
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 11
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %73 = getelementptr inbounds %struct.T, %struct.T* %72, i32 0, i32 1
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 0, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 12
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %79 = getelementptr inbounds %struct.T, %struct.T* %78, i32 0, i32 1
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %79, i64 0, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 13
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %85 = getelementptr inbounds %struct.T, %struct.T* %84, i32 0, i32 1
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %85, i64 0, i64 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 14
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %91 = getelementptr inbounds %struct.T, %struct.T* %90, i32 0, i32 1
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 15
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %83, %77, %71, %65, %59, %53, %47, %42
  call void @abort() #4
  unreachable

96:                                               ; preds = %89
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
