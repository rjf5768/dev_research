; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 40960000, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = udiv i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = call noalias i8* @malloc(i64 noundef %16) #4
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %111

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %105, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp ule i32 %24, 2
  br i1 %25, label %26, label %108

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %12, align 4
  %33 = udiv i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 -1, i64 %35, i1 false)
  store i32 2, i32* %9, align 4
  br label %36

36:                                               ; preds = %98, %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = udiv i64 %43, 32
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = urem i64 %48, 32
  %50 = trunc i64 %49 to i32
  %51 = shl i32 1, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %92, %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = udiv i64 %67, 32
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = urem i64 %72, 32
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = and i32 %70, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = urem i64 %80, 32
  %82 = trunc i64 %81 to i32
  %83 = shl i32 1, %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = udiv i64 %86, 32
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %83
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %78, %64
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %60, !llvm.loop !4

96:                                               ; preds = %60
  br label %97

97:                                               ; preds = %96, %40
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %36, !llvm.loop !6

101:                                              ; preds = %36
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %102, i32 noundef %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %23, !llvm.loop !7

108:                                              ; preds = %23
  %109 = load i32*, i32** %8, align 8
  %110 = bitcast i32* %109 to i8*
  call void @free(i8* noundef %110) #4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
