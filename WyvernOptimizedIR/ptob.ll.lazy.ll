; ModuleID = './ptob.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ptob(%struct.precisionType* noundef %0, i8* noundef writeonly %1, i32 noundef %2, i8* nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.precisionType*, align 8
  %7 = alloca %struct.precisionType*, align 8
  %8 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* null, %struct.precisionType** %6, align 8
  store %struct.precisionType* null, %struct.precisionType** %7, align 8
  store %struct.precisionType* null, %struct.precisionType** %8, align 8
  %9 = icmp ugt i32 %4, 256
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = icmp ult i32 %4, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %5
  br label %114

13:                                               ; preds = %10
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %114

16:                                               ; preds = %13
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %19 = load i16, i16* %18, align 2
  %20 = add i16 %19, 1
  store i16 %20, i16* %18, align 2
  br label %21

21:                                               ; preds = %17, %16
  br label %22

22:                                               ; preds = %25, %21
  %.05 = phi i32 [ %4, %21 ], [ %26, %25 ]
  %.03 = phi i32 [ 1, %21 ], [ %27, %25 ]
  %23 = mul i32 %.05, %4
  %24 = icmp ugt i32 %23, %.05
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = mul i32 %.05, %4
  %27 = add i32 %.03, 1
  br label %22, !llvm.loop !4

28:                                               ; preds = %22
  %29 = call %struct.precisionType* @pabs(%struct.precisionType* noundef %0) #2
  %30 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %7, %struct.precisionType* noundef %29) #2
  %31 = call %struct.precisionType* @utop(i32 noundef %.05) #2
  %32 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %8, %struct.precisionType* noundef %31) #2
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds i8, i8* %1, i64 %33
  br label %35

35:                                               ; preds = %54, %28
  %.02 = phi i8* [ %34, %28 ], [ %46, %54 ]
  %36 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %37 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %38 = call %struct.precisionType* @pdivmod(%struct.precisionType* noundef %36, %struct.precisionType* noundef %37, %struct.precisionType** noundef nonnull %7, %struct.precisionType** noundef nonnull %6) #2
  %39 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %40 = call i32 @ptou(%struct.precisionType* noundef %39) #2
  br label %41

41:                                               ; preds = %51, %35
  %.16 = phi i32 [ %40, %35 ], [ %47, %51 ]
  %.14 = phi i32 [ %.03, %35 ], [ %52, %51 ]
  %.1 = phi i8* [ %.02, %35 ], [ %46, %51 ]
  %42 = urem i32 %.16, %4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %3, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds i8, i8* %.1, i64 -1
  store i8 %45, i8* %46, align 1
  %47 = udiv i32 %.16, %4
  %48 = icmp eq i8* %46, %1
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %67

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = add i32 %.14, -1
  %.not10 = icmp eq i32 %52, 0
  br i1 %.not10, label %53, label %41, !llvm.loop !6

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %56 = call i32 @pcmpz(%struct.precisionType* noundef %55) #2
  %.not11 = icmp eq i32 %56, 0
  br i1 %.not11, label %57, label %35, !llvm.loop !7

57:                                               ; preds = %54
  %58 = icmp ugt i8* %46, %1
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %63, %59
  %.2 = phi i8* [ %46, %59 ], [ %62, %63 ]
  %61 = load i8, i8* %3, align 1
  %62 = getelementptr inbounds i8, i8* %.2, i64 -1
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %60
  %64 = icmp ugt i8* %62, %1
  br i1 %64, label %60, label %65, !llvm.loop !8

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %69 = call i32 @pcmpz(%struct.precisionType* noundef %68) #2
  %.not12 = icmp eq i32 %69, 0
  br i1 %.not12, label %70, label %71

70:                                               ; preds = %67
  %.not13 = icmp ult i32 %.16, %4
  br i1 %.not13, label %72, label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %70
  %.01 = phi i32 [ 1, %71 ], [ 0, %70 ]
  %73 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %.not14 = icmp eq %struct.precisionType* %73, null
  br i1 %.not14, label %83, label %74

74:                                               ; preds = %72
  %75 = bitcast %struct.precisionType** %8 to i16**
  %76 = load i16*, i16** %75, align 8
  %77 = load i16, i16* %76, align 2
  %78 = add i16 %77, -1
  store i16 %78, i16* %76, align 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.precisionType*, %struct.precisionType** %8, align 8
  %82 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %81) #2
  br label %83

83:                                               ; preds = %80, %74, %72
  %84 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %.not15 = icmp eq %struct.precisionType* %84, null
  br i1 %.not15, label %94, label %85

85:                                               ; preds = %83
  %86 = bitcast %struct.precisionType** %7 to i16**
  %87 = load i16*, i16** %86, align 8
  %88 = load i16, i16* %87, align 2
  %89 = add i16 %88, -1
  store i16 %89, i16* %87, align 2
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %93 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %92) #2
  br label %94

94:                                               ; preds = %91, %85, %83
  %95 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %.not16 = icmp eq %struct.precisionType* %95, null
  br i1 %.not16, label %105, label %96

96:                                               ; preds = %94
  %97 = bitcast %struct.precisionType** %6 to i16**
  %98 = load i16*, i16** %97, align 8
  %99 = load i16, i16* %98, align 2
  %100 = add i16 %99, -1
  store i16 %100, i16* %98, align 2
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.precisionType*, %struct.precisionType** %6, align 8
  %104 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %103) #2
  br label %105

105:                                              ; preds = %102, %96, %94
  %.not17 = icmp eq %struct.precisionType* %0, null
  br i1 %.not17, label %113, label %106

106:                                              ; preds = %105
  %107 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %108 = load i16, i16* %107, align 2
  %109 = add i16 %108, -1
  store i16 %109, i16* %107, align 2
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %113

113:                                              ; preds = %111, %106, %105
  br label %114

114:                                              ; preds = %113, %15, %12
  %.0 = phi i32 [ -1, %12 ], [ 1, %15 ], [ %.01, %113 ]
  ret i32 %.0
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef, %struct.precisionType* noundef, %struct.precisionType** noundef, %struct.precisionType** noundef) #1

declare dso_local i32 @ptou(%struct.precisionType* noundef) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

declare dso_local i32 @pfree(...) #1

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
!8 = distinct !{!8, !5}
