; ModuleID = './pmul.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %.not11 = icmp eq %struct.precisionType* %1, null
  br i1 %.not11, label %12, label %8

8:                                                ; preds = %7
  %9 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  br label %12

12:                                               ; preds = %8, %7
  %13 = call i32 @pcmpz(%struct.precisionType* noundef %0) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call i32 @pcmpz(%struct.precisionType* noundef %1) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15, %12
  %19 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 1) #2
  %20 = icmp eq %struct.precisionType* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %124

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i64 0, i32 3
  store i8 0, i8* %23, align 2
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i64 0, i32 4, i64 0
  store i16 0, i16* %24, align 2
  br label %106

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %27 = load i16, i16* %26, align 2
  %28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 2
  %29 = load i16, i16* %28, align 2
  %30 = icmp ult i16 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %25
  %.02 = phi %struct.precisionType* [ %0, %31 ], [ %1, %25 ]
  %.01 = phi %struct.precisionType* [ %1, %31 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %39) #2
  %41 = icmp eq %struct.precisionType* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %124

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 3
  %45 = load i8, i8* %44, align 2
  %46 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 3
  %47 = load i8, i8* %46, align 2
  %48 = icmp ne i8 %45, %47
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i64 0, i32 3
  store i8 %49, i8* %50, align 2
  %51 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i64 0, i32 4, i64 %53
  %55 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i64 0, i32 4, i64 0
  br label %56

56:                                               ; preds = %58, %43
  %.06 = phi i16* [ %54, %43 ], [ %57, %58 ]
  %57 = getelementptr inbounds i16, i16* %.06, i64 -1
  store i16 0, i16* %57, align 2
  br label %58

58:                                               ; preds = %56
  %59 = icmp ugt i16* %57, %55
  br i1 %59, label %56, label %60, !llvm.loop !4

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 0
  %62 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  %63 = load i16, i16* %62, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 %64
  br label %66

66:                                               ; preds = %92, %60
  %.04 = phi i16* [ %61, %60 ], [ %93, %92 ]
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 4, i64 0
  %68 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 0
  %69 = ptrtoint i16* %.04 to i64
  %70 = ptrtoint i16* %68 to i64
  %71 = sub i64 %69, %70
  %72 = ashr exact i64 %71, 1
  %73 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i64 0, i32 4, i64 %72
  %74 = load i16, i16* %.04, align 2
  br label %75

75:                                               ; preds = %88, %66
  %.09 = phi i32 [ 0, %66 ], [ %85, %88 ]
  %.17 = phi i16* [ %73, %66 ], [ %87, %88 ]
  %.05 = phi i16* [ %67, %66 ], [ %77, %88 ]
  %76 = zext i16 %74 to i32
  %77 = getelementptr inbounds i16, i16* %.05, i64 1
  %78 = load i16, i16* %.05, align 2
  %79 = zext i16 %78 to i32
  %80 = mul nuw nsw i32 %76, %79
  %81 = load i16, i16* %.17, align 2
  %82 = zext i16 %81 to i32
  %83 = add nuw i32 %80, %82
  %84 = add i32 %83, %.09
  %85 = lshr i32 %84, 16
  %86 = trunc i32 %84 to i16
  %87 = getelementptr inbounds i16, i16* %.17, i64 1
  store i16 %86, i16* %.17, align 2
  br label %88

88:                                               ; preds = %75
  %89 = icmp ult i16* %77, %65
  br i1 %89, label %75, label %90, !llvm.loop !6

90:                                               ; preds = %88
  %91 = trunc i32 %85 to i16
  store i16 %91, i16* %87, align 2
  br label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds i16, i16* %.04, i64 1
  %94 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 2
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i64
  %97 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.02, i64 0, i32 4, i64 %96
  %98 = icmp ult i16* %93, %97
  br i1 %98, label %66, label %99, !llvm.loop !7

99:                                               ; preds = %92
  %100 = icmp ult i32 %84, 65536
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i64 0, i32 2
  %103 = load i16, i16* %102, align 2
  %104 = add i16 %103, -1
  store i16 %104, i16* %102, align 2
  br label %105

105:                                              ; preds = %101, %99
  br label %106

106:                                              ; preds = %105, %22
  %.08 = phi %struct.precisionType* [ %19, %22 ], [ %40, %105 ]
  %.13 = phi %struct.precisionType* [ %1, %22 ], [ %.02, %105 ]
  %.1 = phi %struct.precisionType* [ %0, %22 ], [ %.01, %105 ]
  %.not12 = icmp eq %struct.precisionType* %.1, null
  br i1 %.not12, label %114, label %107

107:                                              ; preds = %106
  %108 = getelementptr %struct.precisionType, %struct.precisionType* %.1, i64 0, i32 0
  %109 = load i16, i16* %108, align 2
  %110 = add i16 %109, -1
  store i16 %110, i16* %108, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.1) #2
  br label %114

114:                                              ; preds = %112, %107, %106
  %.not13 = icmp eq %struct.precisionType* %.13, null
  br i1 %.not13, label %122, label %115

115:                                              ; preds = %114
  %116 = getelementptr %struct.precisionType, %struct.precisionType* %.13, i64 0, i32 0
  %117 = load i16, i16* %116, align 2
  %118 = add i16 %117, -1
  store i16 %118, i16* %116, align 2
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %.13) #2
  br label %122

122:                                              ; preds = %120, %115, %114
  %123 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %.08) #2
  br label %124

124:                                              ; preds = %122, %42, %21
  %.0 = phi %struct.precisionType* [ %19, %21 ], [ %123, %122 ], [ %40, %42 ]
  ret %struct.precisionType* %.0
}

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

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
