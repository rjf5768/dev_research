; ModuleID = './atop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/atop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzero = external dso_local global %struct.precisionType*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @atop(i8* noundef readonly %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %96, label %4

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %13, %4
  %.0 = phi i8* [ %0, %4 ], [ %14, %13 ]
  %6 = call i16** @__ctype_b_loc() #3
  %7 = load i16*, i16** %6, align 8
  %8 = load i8, i8* %.0, align 1
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %7, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 8192
  %.not12 = icmp eq i16 %12, 0
  br i1 %.not12, label %15, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  %16 = load i8, i8* %.0, align 1
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %26

20:                                               ; preds = %15
  %21 = load i8, i8* %.0, align 1
  %22 = icmp eq i8 %21, 43
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %25

25:                                               ; preds = %23, %20
  %.1 = phi i8* [ %24, %23 ], [ %.0, %20 ]
  br label %26

26:                                               ; preds = %25, %18
  %.2 = phi i8* [ %19, %18 ], [ %.1, %25 ]
  %27 = call i16** @__ctype_b_loc() #3
  %28 = load i16*, i16** %27, align 8
  %29 = load i8, i8* %.2, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = and i16 %32, 2048
  %.not13 = icmp eq i16 %33, 0
  br i1 %.not13, label %95, label %34

34:                                               ; preds = %26
  %35 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %36 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %35) #4
  %37 = call %struct.precisionType* @utop(i32 noundef 1000000000) #4
  %38 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %37) #4
  br label %39

39:                                               ; preds = %66, %34
  %.02.in = phi i8 [ %29, %34 ], [ %70, %66 ]
  %.3 = phi i8* [ %.2, %34 ], [ %69, %66 ]
  %.02 = zext i8 %.02.in to i32
  %40 = add nsw i32 %.02, -48
  br label %41

41:                                               ; preds = %56, %39
  %.05 = phi i32 [ 8, %39 ], [ %57, %56 ]
  %.03 = phi i32 [ %40, %39 ], [ %55, %56 ]
  %.4 = phi i8* [ %.3, %39 ], [ %44, %56 ]
  %42 = call i16** @__ctype_b_loc() #3
  %43 = load i16*, i16** %42, align 8
  %44 = getelementptr inbounds i8, i8* %.4, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i16, i16* %43, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = and i16 %48, 2048
  %.not14 = icmp eq i16 %49, 0
  br i1 %.not14, label %50, label %51

50:                                               ; preds = %41
  br label %76

51:                                               ; preds = %41
  %52 = zext i8 %45 to i32
  %53 = mul i32 %.03, 10
  %54 = add nsw i32 %52, -48
  %55 = add i32 %53, %54
  br label %56

56:                                               ; preds = %51
  %57 = add nsw i32 %.05, -1
  %58 = icmp sgt i32 %.05, 1
  br i1 %58, label %41, label %59, !llvm.loop !6

59:                                               ; preds = %56
  %60 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %61 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %62 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %60, %struct.precisionType* noundef %61) #4
  %63 = call %struct.precisionType* @utop(i32 noundef %55) #4
  %64 = call %struct.precisionType* @padd(%struct.precisionType* noundef %62, %struct.precisionType* noundef %63) #4
  %65 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %64) #4
  br label %66

66:                                               ; preds = %59
  %67 = call i16** @__ctype_b_loc() #3
  %68 = load i16*, i16** %67, align 8
  %69 = getelementptr inbounds i8, i8* %.4, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i16, i16* %68, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = and i16 %73, 2048
  %.not16 = icmp eq i16 %74, 0
  br i1 %.not16, label %75, label %39, !llvm.loop !7

75:                                               ; preds = %66
  br label %89

76:                                               ; preds = %50
  br label %77

77:                                               ; preds = %79, %76
  %.16 = phi i32 [ %.05, %76 ], [ %80, %79 ]
  %.04 = phi i32 [ 10, %76 ], [ %81, %79 ]
  %78 = icmp slt i32 %.16, 8
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = add nsw i32 %.16, 1
  %81 = mul i32 %.04, 10
  br label %77, !llvm.loop !8

82:                                               ; preds = %77
  %83 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %84 = call %struct.precisionType* @utop(i32 noundef %.04) #4
  %85 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %83, %struct.precisionType* noundef %84) #4
  %86 = call %struct.precisionType* @utop(i32 noundef %.03) #4
  %87 = call %struct.precisionType* @padd(%struct.precisionType* noundef %85, %struct.precisionType* noundef %86) #4
  %88 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %87) #4
  br label %89

89:                                               ; preds = %82, %75
  br i1 %17, label %90, label %94

90:                                               ; preds = %89
  %91 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %92 = call %struct.precisionType* @pneg(%struct.precisionType* noundef %91) #4
  %93 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %92) #4
  br label %94

94:                                               ; preds = %90, %89
  br label %95

95:                                               ; preds = %94, %26
  br label %96

96:                                               ; preds = %95, %1
  %97 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %.not11 = icmp eq %struct.precisionType* %97, null
  br i1 %.not11, label %107, label %98

98:                                               ; preds = %96
  %99 = bitcast %struct.precisionType** %3 to i16**
  %100 = load i16*, i16** %99, align 8
  %101 = load i16, i16* %100, align 2
  %102 = add i16 %101, -1
  store i16 %102, i16* %100, align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %106 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %105) #4
  br label %107

107:                                              ; preds = %104, %98, %96
  %108 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %109 = call %struct.precisionType* @presult(%struct.precisionType* noundef %108) #4
  ret %struct.precisionType* %109
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @utop(i32 noundef) #2

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef) #2

declare dso_local i32 @pfree(...) #2

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }
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
!8 = distinct !{!8, !5}
