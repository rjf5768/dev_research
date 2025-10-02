; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrapnet.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrapnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numcells = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @scrapnet() #0 {
  %1 = alloca %struct.dimbox*, align 8
  %2 = alloca %struct.netbox*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @numcells, align 4
  %10 = add nsw i32 1, %9
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @malloc(i64 noundef %12) #2
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* @numcells, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double 0x3FE6666666666666, %16
  %18 = fptosi double %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = load i32, i32* %6, align 4
  br label %24

23:                                               ; preds = %0
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 8, %23 ]
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %90, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @numnets, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @numcells, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %31, !llvm.loop !4

43:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  %44 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %44, i64 %46
  %48 = load %struct.dimbox*, %struct.dimbox** %47, align 8
  store %struct.dimbox* %48, %struct.dimbox** %1, align 8
  %49 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %50 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %49, i32 0, i32 0
  %51 = load %struct.netbox*, %struct.netbox** %50, align 8
  store %struct.netbox* %51, %struct.netbox** %2, align 8
  br label %52

52:                                               ; preds = %78, %43
  %53 = load %struct.netbox*, %struct.netbox** %2, align 8
  %54 = icmp ne %struct.netbox* %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.netbox*, %struct.netbox** %2, align 8
  %57 = getelementptr inbounds %struct.netbox, %struct.netbox* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @numcells, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %62
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.netbox*, %struct.netbox** %2, align 8
  %80 = getelementptr inbounds %struct.netbox, %struct.netbox* %79, i32 0, i32 0
  %81 = load %struct.netbox*, %struct.netbox** %80, align 8
  store %struct.netbox* %81, %struct.netbox** %2, align 8
  br label %52, !llvm.loop !6

82:                                               ; preds = %52
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %88 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %26, !llvm.loop !7

93:                                               ; preds = %26
  %94 = load i32*, i32** %3, align 8
  %95 = bitcast i32* %94 to i8*
  call void @free(i8* noundef %95) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
