; ModuleID = './ptoa.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ptoa(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %7 = load i16, i16* %6, align 2
  %8 = add i16 %7, 1
  store i16 %8, i16* %6, align 2
  br label %9

9:                                                ; preds = %5, %1
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  store %struct.precisionType* null, %struct.precisionType** %4, align 8
  br i1 false, label %10, label %11

10:                                               ; preds = %9
  br label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = mul nuw nsw i32 %14, 525
  %16 = udiv i32 %15, 109
  %phi.bo = add nuw nsw i32 %16, 11
  %phi.cast = zext i32 %phi.bo to i64
  br label %17

17:                                               ; preds = %11, %10
  %.04 = phi i64 [ 0, %10 ], [ %phi.cast, %11 ]
  %18 = call i8* @malloc(i64 noundef %.04) #3
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %115

21:                                               ; preds = %17
  %22 = call %struct.precisionType* @pabs(%struct.precisionType* noundef %0) #3
  %23 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %22) #3
  %24 = call %struct.precisionType* @utop(i32 noundef 1000000000) #3
  %25 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %4, %struct.precisionType* noundef %24) #3
  %26 = getelementptr inbounds i8, i8* %18, i64 %.04
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %29 = load i8, i8* %28, align 2
  br label %30

30:                                               ; preds = %50, %21
  %.03 = phi i8* [ %27, %21 ], [ %44, %50 ]
  %31 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %32 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %33 = call %struct.precisionType* @pdivmod(%struct.precisionType* noundef %31, %struct.precisionType* noundef %32, %struct.precisionType** noundef nonnull %3, %struct.precisionType** noundef nonnull %2) #3
  %34 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %35 = call i32 @ptou(%struct.precisionType* noundef %34) #3
  br label %36

36:                                               ; preds = %45, %30
  %.1 = phi i8* [ %.03, %30 ], [ %44, %45 ]
  %.02 = phi i32 [ %35, %30 ], [ %46, %45 ]
  %.01 = phi i32 [ 9, %30 ], [ %47, %45 ]
  br i1 true, label %37, label %40

37:                                               ; preds = %36
  %38 = urem i32 %.02, 10
  %39 = or i32 %38, 48
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ undef, %40 ]
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %.1, i64 -1
  store i8 %43, i8* %44, align 1
  br label %45

45:                                               ; preds = %41
  %46 = udiv i32 %.02, 10
  %47 = add nsw i32 %.01, -1
  %48 = icmp sgt i32 %.01, 1
  br i1 %48, label %36, label %49, !llvm.loop !4

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %52 = call i32 @pcmpz(%struct.precisionType* noundef %51) #3
  %.not5 = icmp eq i32 %52, 0
  br i1 %.not5, label %53, label %30, !llvm.loop !6

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %57, %53
  %.2 = phi i8* [ %44, %53 ], [ %58, %57 ]
  %55 = load i8, i8* %.2, align 1
  %56 = icmp eq i8 %55, 48
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %54, !llvm.loop !7

59:                                               ; preds = %54
  %60 = load i8, i8* %.2, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %.2, i64 -1
  br label %64

64:                                               ; preds = %62, %59
  %.3 = phi i8* [ %63, %62 ], [ %.2, %59 ]
  %.not6 = icmp eq i8 %29, 0
  br i1 %.not6, label %67, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds i8, i8* %.3, i64 -1
  store i8 45, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %64
  %.4 = phi i8* [ %66, %65 ], [ %.3, %64 ]
  %68 = icmp ugt i8* %.4, %18
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = ptrtoint i8* %.4 to i64
  %71 = ptrtoint i8* %18 to i64
  %.neg = sub i64 %71, %70
  %72 = add i64 %.neg, %.04
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %18, i8* nonnull align 1 %.4, i64 %72, i1 false)
  br label %73

73:                                               ; preds = %69, %67
  %74 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %.not7 = icmp eq %struct.precisionType* %74, null
  br i1 %.not7, label %84, label %75

75:                                               ; preds = %73
  %76 = bitcast %struct.precisionType** %4 to i16**
  %77 = load i16*, i16** %76, align 8
  %78 = load i16, i16* %77, align 2
  %79 = add i16 %78, -1
  store i16 %79, i16* %77, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %83 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %82) #3
  br label %84

84:                                               ; preds = %81, %75, %73
  %85 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %.not8 = icmp eq %struct.precisionType* %85, null
  br i1 %.not8, label %95, label %86

86:                                               ; preds = %84
  %87 = bitcast %struct.precisionType** %3 to i16**
  %88 = load i16*, i16** %87, align 8
  %89 = load i16, i16* %88, align 2
  %90 = add i16 %89, -1
  store i16 %90, i16* %88, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %94 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %93) #3
  br label %95

95:                                               ; preds = %92, %86, %84
  %96 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %.not9 = icmp eq %struct.precisionType* %96, null
  br i1 %.not9, label %106, label %97

97:                                               ; preds = %95
  %98 = bitcast %struct.precisionType** %2 to i16**
  %99 = load i16*, i16** %98, align 8
  %100 = load i16, i16* %99, align 2
  %101 = add i16 %100, -1
  store i16 %101, i16* %99, align 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %105 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %104) #3
  br label %106

106:                                              ; preds = %103, %97, %95
  %.not10 = icmp eq %struct.precisionType* %0, null
  br i1 %.not10, label %114, label %107

107:                                              ; preds = %106
  %108 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %109 = load i16, i16* %108, align 2
  %110 = add i16 %109, -1
  store i16 %110, i16* %108, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #3
  br label %114

114:                                              ; preds = %112, %107, %106
  br label %115

115:                                              ; preds = %114, %20
  ret i8* %18
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef, %struct.precisionType* noundef, %struct.precisionType** noundef, %struct.precisionType** noundef) #1

declare dso_local i32 @ptou(%struct.precisionType* noundef) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

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
