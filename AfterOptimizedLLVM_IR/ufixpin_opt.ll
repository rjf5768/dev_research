; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixpin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @ufixpin(%struct.termbox* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.termbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dimbox*, align 8
  %10 = alloca %struct.termnets*, align 8
  %11 = alloca %struct.termbox*, align 8
  store %struct.termbox* %0, %struct.termbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %4
  %15 = load %struct.termbox*, %struct.termbox** %5, align 8
  store %struct.termbox* %15, %struct.termbox** %11, align 8
  br label %16

16:                                               ; preds = %57, %14
  %17 = load %struct.termbox*, %struct.termbox** %11, align 8
  %18 = icmp ne %struct.termbox* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %21 = load %struct.termbox*, %struct.termbox** %11, align 8
  %22 = getelementptr inbounds %struct.termbox, %struct.termbox* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.termnets*, %struct.termnets** %20, i64 %24
  %26 = load %struct.termnets*, %struct.termnets** %25, align 8
  store %struct.termnets* %26, %struct.termnets** %10, align 8
  %27 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %28 = load %struct.termnets*, %struct.termnets** %10, align 8
  %29 = getelementptr inbounds %struct.termnets, %struct.termnets* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %27, i64 %31
  %33 = load %struct.dimbox*, %struct.dimbox** %32, align 8
  %34 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %33, i32 0, i32 7
  store i32 1, i32* %34, align 8
  %35 = load %struct.termnets*, %struct.termnets** %10, align 8
  %36 = getelementptr inbounds %struct.termnets, %struct.termnets* %35, i32 0, i32 1
  %37 = load %struct.netbox*, %struct.netbox** %36, align 8
  %38 = getelementptr inbounds %struct.netbox, %struct.netbox* %37, i32 0, i32 6
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.termbox*, %struct.termbox** %11, align 8
  %41 = getelementptr inbounds %struct.termbox, %struct.termbox* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = load %struct.termnets*, %struct.termnets** %10, align 8
  %45 = getelementptr inbounds %struct.termnets, %struct.termnets* %44, i32 0, i32 1
  %46 = load %struct.netbox*, %struct.netbox** %45, align 8
  %47 = getelementptr inbounds %struct.netbox, %struct.netbox* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.termbox*, %struct.termbox** %11, align 8
  %50 = getelementptr inbounds %struct.termbox, %struct.termbox* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load %struct.termnets*, %struct.termnets** %10, align 8
  %54 = getelementptr inbounds %struct.termnets, %struct.termnets* %53, i32 0, i32 1
  %55 = load %struct.netbox*, %struct.netbox** %54, align 8
  %56 = getelementptr inbounds %struct.netbox, %struct.netbox* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %19
  %58 = load %struct.termbox*, %struct.termbox** %11, align 8
  %59 = getelementptr inbounds %struct.termbox, %struct.termbox* %58, i32 0, i32 0
  %60 = load %struct.termbox*, %struct.termbox** %59, align 8
  store %struct.termbox* %60, %struct.termbox** %11, align 8
  br label %16, !llvm.loop !4

61:                                               ; preds = %16
  br label %125

62:                                               ; preds = %4
  %63 = load %struct.termbox*, %struct.termbox** %5, align 8
  store %struct.termbox* %63, %struct.termbox** %11, align 8
  br label %64

64:                                               ; preds = %120, %62
  %65 = load %struct.termbox*, %struct.termbox** %11, align 8
  %66 = icmp ne %struct.termbox* %65, null
  br i1 %66, label %67, label %124

67:                                               ; preds = %64
  %68 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %69 = load %struct.termbox*, %struct.termbox** %11, align 8
  %70 = getelementptr inbounds %struct.termbox, %struct.termbox* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.termnets*, %struct.termnets** %68, i64 %72
  %74 = load %struct.termnets*, %struct.termnets** %73, align 8
  store %struct.termnets* %74, %struct.termnets** %10, align 8
  %75 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %76 = load %struct.termnets*, %struct.termnets** %10, align 8
  %77 = getelementptr inbounds %struct.termnets, %struct.termnets* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %75, i64 %79
  %81 = load %struct.dimbox*, %struct.dimbox** %80, align 8
  store %struct.dimbox* %81, %struct.dimbox** %9, align 8
  %82 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %83 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %86 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %88 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %93 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %96 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %98 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 8
  %102 = load %struct.termnets*, %struct.termnets** %10, align 8
  %103 = getelementptr inbounds %struct.termnets, %struct.termnets* %102, i32 0, i32 1
  %104 = load %struct.netbox*, %struct.netbox** %103, align 8
  %105 = getelementptr inbounds %struct.netbox, %struct.netbox* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.termnets*, %struct.termnets** %10, align 8
  %108 = getelementptr inbounds %struct.termnets, %struct.termnets* %107, i32 0, i32 1
  %109 = load %struct.netbox*, %struct.netbox** %108, align 8
  %110 = getelementptr inbounds %struct.netbox, %struct.netbox* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 8
  %111 = load %struct.termnets*, %struct.termnets** %10, align 8
  %112 = getelementptr inbounds %struct.termnets, %struct.termnets* %111, i32 0, i32 1
  %113 = load %struct.netbox*, %struct.netbox** %112, align 8
  %114 = getelementptr inbounds %struct.netbox, %struct.netbox* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.termnets*, %struct.termnets** %10, align 8
  %117 = getelementptr inbounds %struct.termnets, %struct.termnets* %116, i32 0, i32 1
  %118 = load %struct.netbox*, %struct.netbox** %117, align 8
  %119 = getelementptr inbounds %struct.netbox, %struct.netbox* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %67
  %121 = load %struct.termbox*, %struct.termbox** %11, align 8
  %122 = getelementptr inbounds %struct.termbox, %struct.termbox* %121, i32 0, i32 0
  %123 = load %struct.termbox*, %struct.termbox** %122, align 8
  store %struct.termbox* %123, %struct.termbox** %11, align 8
  br label %64, !llvm.loop !6

124:                                              ; preds = %64
  br label %125

125:                                              ; preds = %124, %61
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
