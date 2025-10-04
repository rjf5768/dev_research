; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftpin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @usoftpin(%struct.cellbox* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.cellbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dimbox*, align 8
  %12 = alloca %struct.termnets*, align 8
  %13 = alloca %struct.uncombox*, align 8
  %14 = alloca %struct.locbox*, align 8
  %15 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 20
  %18 = load %struct.uncombox*, %struct.uncombox** %17, align 8
  store %struct.uncombox* %18, %struct.uncombox** %13, align 8
  %19 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 21
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %20, i64 0, i64 %22
  %24 = load %struct.tilebox*, %struct.tilebox** %23, align 8
  %25 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 18
  %26 = load %struct.locbox*, %struct.locbox** %25, align 8
  store %struct.locbox* %26, %struct.locbox** %14, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %30
  %37 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %38 = load %struct.uncombox*, %struct.uncombox** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %38, i64 %40
  %42 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.termnets*, %struct.termnets** %37, i64 %44
  %46 = load %struct.termnets*, %struct.termnets** %45, align 8
  store %struct.termnets* %46, %struct.termnets** %12, align 8
  %47 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %48 = load %struct.termnets*, %struct.termnets** %12, align 8
  %49 = getelementptr inbounds %struct.termnets, %struct.termnets* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %47, i64 %51
  %53 = load %struct.dimbox*, %struct.dimbox** %52, align 8
  %54 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 7
  store i32 1, i32* %54, align 8
  %55 = load %struct.termnets*, %struct.termnets** %12, align 8
  %56 = getelementptr inbounds %struct.termnets, %struct.termnets* %55, i32 0, i32 1
  %57 = load %struct.netbox*, %struct.netbox** %56, align 8
  %58 = getelementptr inbounds %struct.netbox, %struct.netbox* %57, i32 0, i32 6
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.locbox*, %struct.locbox** %14, align 8
  %61 = load %struct.uncombox*, %struct.uncombox** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %61, i64 %63
  %65 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.locbox, %struct.locbox* %60, i64 %67
  %69 = getelementptr inbounds %struct.locbox, %struct.locbox* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %59, %70
  %72 = load %struct.termnets*, %struct.termnets** %12, align 8
  %73 = getelementptr inbounds %struct.termnets, %struct.termnets* %72, i32 0, i32 1
  %74 = load %struct.netbox*, %struct.netbox** %73, align 8
  %75 = getelementptr inbounds %struct.netbox, %struct.netbox* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.locbox*, %struct.locbox** %14, align 8
  %78 = load %struct.uncombox*, %struct.uncombox** %13, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %78, i64 %80
  %82 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.locbox, %struct.locbox* %77, i64 %84
  %86 = getelementptr inbounds %struct.locbox, %struct.locbox* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %76, %87
  %89 = load %struct.termnets*, %struct.termnets** %12, align 8
  %90 = getelementptr inbounds %struct.termnets, %struct.termnets* %89, i32 0, i32 1
  %91 = load %struct.netbox*, %struct.netbox** %90, align 8
  %92 = getelementptr inbounds %struct.netbox, %struct.netbox* %91, i32 0, i32 4
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %36
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %30, !llvm.loop !4

96:                                               ; preds = %30
  br label %164

97:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %98

98:                                               ; preds = %160, %97
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %101 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %99, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %98
  %105 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %106 = load %struct.uncombox*, %struct.uncombox** %13, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %106, i64 %108
  %110 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.termnets*, %struct.termnets** %105, i64 %112
  %114 = load %struct.termnets*, %struct.termnets** %113, align 8
  store %struct.termnets* %114, %struct.termnets** %12, align 8
  %115 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %116 = load %struct.termnets*, %struct.termnets** %12, align 8
  %117 = getelementptr inbounds %struct.termnets, %struct.termnets* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %115, i64 %119
  %121 = load %struct.dimbox*, %struct.dimbox** %120, align 8
  store %struct.dimbox* %121, %struct.dimbox** %11, align 8
  %122 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %123 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %126 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %128 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %131 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %133 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %136 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %138 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  %141 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 8
  %142 = load %struct.termnets*, %struct.termnets** %12, align 8
  %143 = getelementptr inbounds %struct.termnets, %struct.termnets* %142, i32 0, i32 1
  %144 = load %struct.netbox*, %struct.netbox** %143, align 8
  %145 = getelementptr inbounds %struct.netbox, %struct.netbox* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.termnets*, %struct.termnets** %12, align 8
  %148 = getelementptr inbounds %struct.termnets, %struct.termnets* %147, i32 0, i32 1
  %149 = load %struct.netbox*, %struct.netbox** %148, align 8
  %150 = getelementptr inbounds %struct.netbox, %struct.netbox* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 8
  %151 = load %struct.termnets*, %struct.termnets** %12, align 8
  %152 = getelementptr inbounds %struct.termnets, %struct.termnets* %151, i32 0, i32 1
  %153 = load %struct.netbox*, %struct.netbox** %152, align 8
  %154 = getelementptr inbounds %struct.netbox, %struct.netbox* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.termnets*, %struct.termnets** %12, align 8
  %157 = getelementptr inbounds %struct.termnets, %struct.termnets* %156, i32 0, i32 1
  %158 = load %struct.netbox*, %struct.netbox** %157, align 8
  %159 = getelementptr inbounds %struct.netbox, %struct.netbox* %158, i32 0, i32 2
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %104
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %98, !llvm.loop !6

163:                                              ; preds = %98
  br label %164

164:                                              ; preds = %163, %96
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
