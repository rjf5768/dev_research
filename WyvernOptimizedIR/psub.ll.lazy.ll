; ModuleID = './psub.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psub(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = add i16 %6, 1
  store i16 %7, i16* %5, align 2
  br label %8

8:                                                ; preds = %4, %2
  %.not16 = icmp eq %struct.precisionType* %1, null
  br i1 %.not16, label %13, label %9

9:                                                ; preds = %8
  %10 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = add i16 %11, 1
  store i16 %12, i16* %10, align 2
  br label %13

13:                                               ; preds = %9, %8
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %15 = load i8, i8* %14, align 2
  %16 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %17 = load i8, i8* %16, align 2
  %.not17 = icmp eq i8 %15, %17
  br i1 %.not17, label %29, label %18

18:                                               ; preds = %13
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %20 = load i8, i8* %19, align 2
  %.not23 = icmp eq i8 %20, 0
  %21 = zext i1 %.not23 to i8
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  store i8 %21, i8* %22, align 2
  %23 = call %struct.precisionType* @padd(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #2
  %24 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %23) #2
  %25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %26 = load i8, i8* %25, align 2
  %.not24 = icmp eq i8 %26, 0
  %27 = zext i1 %.not24 to i8
  %28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  store i8 %27, i8* %28, align 2
  br label %120

29:                                               ; preds = %13
  %30 = call i32 @pcmp(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #2
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %32 = load i8, i8* %31, align 2
  %.not18 = icmp eq i8 %32, 0
  br i1 %.not18, label %35, label %33

33:                                               ; preds = %29
  %34 = sub nsw i32 0, %30
  br label %35

35:                                               ; preds = %33, %29
  %.011 = phi i32 [ %34, %33 ], [ %30, %29 ]
  %36 = icmp slt i32 %.011, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  br label %38

38:                                               ; preds = %37, %35
  %.02 = phi %struct.precisionType* [ %0, %37 ], [ %1, %35 ]
  %.01 = phi %struct.precisionType* [ %1, %37 ], [ %0, %35 ]
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %41) #2
  store %struct.precisionType* %42, %struct.precisionType** %3, align 8
  %43 = icmp eq %struct.precisionType* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  br label %139

46:                                               ; preds = %38
  %47 = icmp slt i32 %.011, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 3
  %50 = load i8, i8* %49, align 2
  %.not22 = icmp eq i8 %50, 0
  %51 = zext i1 %.not22 to i8
  %52 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %53 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %52, i64 0, i32 3
  store i8 %51, i8* %53, align 2
  br label %59

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 3
  %56 = load i8, i8* %55, align 2
  %57 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %57, i64 0, i32 3
  store i8 %56, i8* %58, align 2
  br label %59

59:                                               ; preds = %54, %48
  %60 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 0
  %61 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %62 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %61, i64 0, i32 4, i64 0
  %63 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 0
  %64 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i64
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 %66
  br label %68

68:                                               ; preds = %81, %59
  %.09 = phi i32 [ 1, %59 ], [ %78, %81 ]
  %.08 = phi i16* [ %63, %59 ], [ %69, %81 ]
  %.06 = phi i16* [ %60, %59 ], [ %73, %81 ]
  %.04 = phi i16* [ %62, %59 ], [ %80, %81 ]
  %69 = getelementptr inbounds i16, i16* %.08, i64 1
  %70 = load i16, i16* %.08, align 2
  %71 = xor i16 %70, -1
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds i16, i16* %.06, i64 1
  %74 = load i16, i16* %.06, align 2
  %75 = zext i16 %74 to i32
  %76 = add nuw nsw i32 %72, %75
  %77 = add nuw nsw i32 %76, %.09
  %78 = lshr i32 %77, 16
  %79 = trunc i32 %77 to i16
  %80 = getelementptr inbounds i16, i16* %.04, i64 1
  store i16 %79, i16* %.04, align 2
  br label %81

81:                                               ; preds = %68
  %82 = icmp ult i16* %69, %67
  br i1 %82, label %68, label %83, !llvm.loop !4

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 %86
  br label %88

88:                                               ; preds = %90, %83
  %.110.in = phi i32 [ %78, %83 ], [ %96, %90 ]
  %.17 = phi i16* [ %73, %83 ], [ %91, %90 ]
  %.15 = phi i16* [ %80, %83 ], [ %98, %90 ]
  %89 = icmp ult i16* %.17, %87
  br i1 %89, label %90, label %99

90:                                               ; preds = %88
  %91 = getelementptr inbounds i16, i16* %.17, i64 1
  %92 = load i16, i16* %.17, align 2
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %93, 65535
  %95 = add nuw nsw i32 %94, %.110.in
  %96 = lshr i32 %95, 16
  %97 = trunc i32 %95 to i16
  %98 = getelementptr inbounds i16, i16* %.15, i64 1
  store i16 %97, i16* %.15, align 2
  br label %88, !llvm.loop !6

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %105, %99
  %.2 = phi i16* [ %.15, %99 ], [ %101, %105 ]
  %101 = getelementptr inbounds i16, i16* %.2, i64 -1
  %102 = load i16, i16* %101, align 2
  %.not19 = icmp eq i16 %102, 0
  br i1 %.not19, label %104, label %103

103:                                              ; preds = %100
  br label %109

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %107 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %106, i64 0, i32 4, i64 0
  %108 = icmp ugt i16* %101, %107
  br i1 %108, label %100, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %105
  br label %109

109:                                              ; preds = %.loopexit, %103
  %110 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %111 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %110, i64 0, i32 4, i64 0
  %112 = ptrtoint i16* %101 to i64
  %113 = ptrtoint i16* %111 to i64
  %114 = sub i64 %112, %113
  %115 = lshr exact i64 %114, 1
  %116 = trunc i64 %115 to i16
  %117 = add i16 %116, 1
  %118 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %119 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %118, i64 0, i32 2
  store i16 %117, i16* %119, align 2
  br label %120

120:                                              ; preds = %109, %18
  %.13 = phi %struct.precisionType* [ %1, %18 ], [ %.02, %109 ]
  %.1 = phi %struct.precisionType* [ %0, %18 ], [ %.01, %109 ]
  %.not20 = icmp eq %struct.precisionType* %.1, null
  br i1 %.not20, label %128, label %121

121:                                              ; preds = %120
  %122 = getelementptr %struct.precisionType, %struct.precisionType* %.1, i64 0, i32 0
  %123 = load i16, i16* %122, align 2
  %124 = add i16 %123, -1
  store i16 %124, i16* %122, align 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.1) #2
  br label %128

128:                                              ; preds = %126, %121, %120
  %.not21 = icmp eq %struct.precisionType* %.13, null
  br i1 %.not21, label %136, label %129

129:                                              ; preds = %128
  %130 = getelementptr %struct.precisionType, %struct.precisionType* %.13, i64 0, i32 0
  %131 = load i16, i16* %130, align 2
  %132 = add i16 %131, -1
  store i16 %132, i16* %130, align 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.13) #2
  br label %136

136:                                              ; preds = %134, %129, %128
  %137 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %138 = call %struct.precisionType* @presult(%struct.precisionType* noundef %137) #2
  br label %139

139:                                              ; preds = %136, %44
  %.0 = phi %struct.precisionType* [ %138, %136 ], [ %45, %44 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local i32 @pcmp(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
