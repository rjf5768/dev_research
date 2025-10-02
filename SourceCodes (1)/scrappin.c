; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrappin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrappin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@numcells = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @scrappin() #0 {
  %1 = alloca %struct.dimbox*, align 8
  %2 = alloca %struct.netbox*, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @numnets, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %9, i64 %11
  %13 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  store %struct.dimbox* %13, %struct.dimbox** %1, align 8
  %14 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %15 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %14, i32 0, i32 0
  %16 = load %struct.netbox*, %struct.netbox** %15, align 8
  store %struct.netbox* %16, %struct.netbox** %2, align 8
  br label %17

17:                                               ; preds = %30, %8
  %18 = load %struct.netbox*, %struct.netbox** %2, align 8
  %19 = icmp ne %struct.netbox* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.netbox*, %struct.netbox** %2, align 8
  %22 = getelementptr inbounds %struct.netbox, %struct.netbox* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @numcells, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.netbox*, %struct.netbox** %2, align 8
  %28 = getelementptr inbounds %struct.netbox, %struct.netbox* %27, i32 0, i32 9
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.netbox*, %struct.netbox** %2, align 8
  %32 = getelementptr inbounds %struct.netbox, %struct.netbox* %31, i32 0, i32 0
  %33 = load %struct.netbox*, %struct.netbox** %32, align 8
  store %struct.netbox* %33, %struct.netbox** %2, align 8
  br label %17, !llvm.loop !4

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4, !llvm.loop !6

38:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
