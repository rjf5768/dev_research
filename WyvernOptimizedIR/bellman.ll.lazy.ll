; ModuleID = './bellman.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/bellman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bellbox = type { i32, i32 }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numXnodes = external dso_local global i32, align 4
@xBellArray = external dso_local global %struct.bellbox*, align 8
@numYnodes = external dso_local global i32, align 4
@yBellArray = external dso_local global %struct.bellbox*, align 8
@xNodeArray = external dso_local global %struct.wcbox**, align 8
@yNodeArray = external dso_local global %struct.wcbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Longest Hori. Path in Circuit Graph has span: <%d>\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Longest Vert. Path in Circuit Graph has span: <%d>\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bellman() #0 {
  %1 = load i32, i32* @numXnodes, align 4
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = call noalias i8* @malloc(i64 noundef %4) #3
  store i8* %5, i8** bitcast (%struct.bellbox** @xBellArray to i8**), align 8
  %6 = load i32, i32* @numYnodes, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = call noalias i8* @malloc(i64 noundef %9) #3
  store i8* %10, i8** bitcast (%struct.bellbox** @yBellArray to i8**), align 8
  %11 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %12 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %11, i64 1, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %11, i64 1, i32 0
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %20, %0
  %.0 = phi i32 [ 2, %0 ], [ %21, %20 ]
  %15 = load i32, i32* @numXnodes, align 4
  %.not = icmp sgt i32 %.0, %15
  br i1 %.not, label %22, label %16

16:                                               ; preds = %14
  %17 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %17, i64 %18, i32 0
  store i32 10000000, i32* %19, align 4
  br label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !4

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %57, %22
  %.1 = phi i32 [ 1, %22 ], [ %58, %57 ]
  %24 = load i32, i32* @numXnodes, align 4
  %.not3 = icmp sgt i32 %.1, %24
  br i1 %.not3, label %59, label %25

25:                                               ; preds = %23
  %26 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %27 = zext i32 %.1 to i64
  %28 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %26, i64 %27, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %30, i64 %31
  br label %33

33:                                               ; preds = %54, %25
  %.01.in = phi %struct.wcbox** [ %32, %25 ], [ %55, %54 ]
  %.01 = load %struct.wcbox*, %struct.wcbox** %.01.in, align 8
  %.not7 = icmp eq %struct.wcbox* %.01, null
  br i1 %.not7, label %56, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.01, i64 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.01, i64 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %39, i64 %40, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %29, %38
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = sub i32 %29, %38
  %47 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %48 = sext i32 %36 to i64
  %49 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %47, i64 %48, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %51 = sext i32 %36 to i64
  %52 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %50, i64 %51, i32 1
  store i32 %.1, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %34
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.01, i64 0, i32 4
  br label %33, !llvm.loop !6

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !7

59:                                               ; preds = %23
  %60 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %61 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %60, i64 1, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %60, i64 1, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %69, %59
  %.2 = phi i32 [ 2, %59 ], [ %70, %69 ]
  %64 = load i32, i32* @numYnodes, align 4
  %.not4 = icmp sgt i32 %.2, %64
  br i1 %.not4, label %71, label %65

65:                                               ; preds = %63
  %66 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %67 = zext i32 %.2 to i64
  %68 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %66, i64 %67, i32 0
  store i32 10000000, i32* %68, align 4
  br label %69

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %.2, 1
  br label %63, !llvm.loop !8

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %106, %71
  %.3 = phi i32 [ 1, %71 ], [ %107, %106 ]
  %73 = load i32, i32* @numYnodes, align 4
  %.not5 = icmp sgt i32 %.3, %73
  br i1 %.not5, label %108, label %74

74:                                               ; preds = %72
  %75 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %76 = zext i32 %.3 to i64
  %77 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %75, i64 %76, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %80 = zext i32 %.3 to i64
  %81 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %79, i64 %80
  br label %82

82:                                               ; preds = %103, %74
  %.12.in = phi %struct.wcbox** [ %81, %74 ], [ %104, %103 ]
  %.12 = load %struct.wcbox*, %struct.wcbox** %.12.in, align 8
  %.not6 = icmp eq %struct.wcbox* %.12, null
  br i1 %.not6, label %105, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.12, i64 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.12, i64 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %88, i64 %89, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %78, %87
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = sub i32 %78, %87
  %96 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %97 = sext i32 %85 to i64
  %98 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %96, i64 %97, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %100 = sext i32 %85 to i64
  %101 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %99, i64 %100, i32 1
  store i32 %.3, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %83
  br label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.12, i64 0, i32 4
  br label %82, !llvm.loop !9

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105
  %107 = add nuw nsw i32 %.3, 1
  br label %72, !llvm.loop !10

108:                                              ; preds = %72
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %110 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %111 = load i32, i32* @numXnodes, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %110, i64 %112, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 0, %114
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %115) #3
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %118 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %119 = load i32, i32* @numYnodes, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %118, i64 %120, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 0, %122
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 noundef %123) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
