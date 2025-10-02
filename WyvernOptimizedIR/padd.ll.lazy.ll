; ModuleID = './padd.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/padd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @padd(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
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
  %.not13 = icmp eq %struct.precisionType* %1, null
  br i1 %.not13, label %13, label %9

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
  %.not14 = icmp eq i8 %15, %17
  br i1 %.not14, label %44, label %18

18:                                               ; preds = %13
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %20 = load i8, i8* %19, align 2
  %.not17 = icmp eq i8 %20, 0
  br i1 %.not17, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %23 = load i8, i8* %22, align 2
  %.not20 = icmp eq i8 %23, 0
  %24 = zext i1 %.not20 to i8
  %25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  store i8 %24, i8* %25, align 2
  %26 = call %struct.precisionType* @psub(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #2
  %27 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %26) #2
  %28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %29 = load i8, i8* %28, align 2
  %.not21 = icmp eq i8 %29, 0
  %30 = zext i1 %.not21 to i8
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  store i8 %30, i8* %31, align 2
  br label %43

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %34 = load i8, i8* %33, align 2
  %.not18 = icmp eq i8 %34, 0
  %35 = zext i1 %.not18 to i8
  %36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  store i8 %35, i8* %36, align 2
  %37 = call %struct.precisionType* @psub(%struct.precisionType* noundef %1, %struct.precisionType* noundef %0) #2
  %38 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %37) #2
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %40 = load i8, i8* %39, align 2
  %.not19 = icmp eq i8 %40, 0
  %41 = zext i1 %.not19 to i8
  %42 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  store i8 %41, i8* %42, align 2
  br label %43

43:                                               ; preds = %32, %21
  br label %110

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 2
  %48 = load i16, i16* %47, align 2
  %49 = icmp ult i16 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  br label %51

51:                                               ; preds = %50, %44
  %.02 = phi %struct.precisionType* [ %0, %50 ], [ %1, %44 ]
  %.01 = phi %struct.precisionType* [ %1, %50 ], [ %0, %44 ]
  %52 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, 1
  %56 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %55) #2
  store %struct.precisionType* %56, %struct.precisionType** %3, align 8
  %57 = icmp eq %struct.precisionType* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  br label %129

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 3
  %62 = load i8, i8* %61, align 2
  %63 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %64 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %63, i64 0, i32 3
  store i8 %62, i8* %64, align 2
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 0
  %66 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %66, i64 0, i32 4, i64 0
  %68 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 0
  %69 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 2
  br label %70

70:                                               ; preds = %82, %60
  %.09 = phi i32 [ 0, %60 ], [ %79, %82 ]
  %.08 = phi i16* [ %68, %60 ], [ %74, %82 ]
  %.06 = phi i16* [ %65, %60 ], [ %71, %82 ]
  %.04 = phi i16* [ %67, %60 ], [ %81, %82 ]
  %71 = getelementptr inbounds i16, i16* %.06, i64 1
  %72 = load i16, i16* %.06, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds i16, i16* %.08, i64 1
  %75 = load i16, i16* %.08, align 2
  %76 = zext i16 %75 to i32
  %77 = add nuw nsw i32 %73, %76
  %78 = add nuw nsw i32 %77, %.09
  %79 = lshr i32 %78, 16
  %80 = trunc i32 %78 to i16
  %81 = getelementptr inbounds i16, i16* %.04, i64 1
  store i16 %80, i16* %.04, align 2
  br label %82

82:                                               ; preds = %70
  %83 = load i16, i16* %69, align 2
  %84 = zext i16 %83 to i64
  %85 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 %84
  %86 = icmp ult i16* %74, %85
  br i1 %86, label %70, label %87, !llvm.loop !4

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %94, %87
  %.110.in = phi i32 [ %79, %87 ], [ %99, %94 ]
  %.17 = phi i16* [ %71, %87 ], [ %95, %94 ]
  %.15 = phi i16* [ %81, %87 ], [ %101, %94 ]
  %89 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 %91
  %93 = icmp ult i16* %.17, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = getelementptr inbounds i16, i16* %.17, i64 1
  %96 = load i16, i16* %.17, align 2
  %97 = zext i16 %96 to i32
  %98 = add nuw nsw i32 %.110.in, %97
  %99 = lshr i32 %98, 16
  %100 = trunc i32 %98 to i16
  %101 = getelementptr inbounds i16, i16* %.15, i64 1
  store i16 %100, i16* %.15, align 2
  br label %88, !llvm.loop !6

102:                                              ; preds = %88
  %.110 = trunc i32 %.110.in to i16
  store i16 %.110, i16* %.15, align 2
  %103 = icmp eq i32 %.110.in, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %106 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %105, i64 0, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = add i16 %107, -1
  store i16 %108, i16* %106, align 2
  br label %109

109:                                              ; preds = %104, %102
  br label %110

110:                                              ; preds = %109, %43
  %.13 = phi %struct.precisionType* [ %1, %43 ], [ %.02, %109 ]
  %.1 = phi %struct.precisionType* [ %0, %43 ], [ %.01, %109 ]
  %.not15 = icmp eq %struct.precisionType* %.1, null
  br i1 %.not15, label %118, label %111

111:                                              ; preds = %110
  %112 = getelementptr %struct.precisionType, %struct.precisionType* %.1, i64 0, i32 0
  %113 = load i16, i16* %112, align 2
  %114 = add i16 %113, -1
  store i16 %114, i16* %112, align 2
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.1) #2
  br label %118

118:                                              ; preds = %116, %111, %110
  %.not16 = icmp eq %struct.precisionType* %.13, null
  br i1 %.not16, label %126, label %119

119:                                              ; preds = %118
  %120 = getelementptr %struct.precisionType, %struct.precisionType* %.13, i64 0, i32 0
  %121 = load i16, i16* %120, align 2
  %122 = add i16 %121, -1
  store i16 %122, i16* %120, align 2
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.13) #2
  br label %126

126:                                              ; preds = %124, %119, %118
  %127 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %128 = call %struct.precisionType* @presult(%struct.precisionType* noundef %127) #2
  br label %129

129:                                              ; preds = %126, %58
  %.0 = phi %struct.precisionType* [ %128, %126 ], [ %59, %58 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @psub(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

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
