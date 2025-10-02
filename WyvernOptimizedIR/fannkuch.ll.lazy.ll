; ModuleID = './fannkuch.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/fannkuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Pfannkuchen(%d) = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i64 @fannkuch(i32 noundef 11)
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 11, i64 noundef %3) #4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @fannkuch(i32 noundef %0) #0 {
  %2 = add nsw i32 %0, -1
  %3 = icmp slt i32 %0, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %121

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64
  %7 = call noalias i8* @calloc(i64 noundef %6, i64 noundef 4) #4
  %8 = bitcast i8* %7 to i32*
  %9 = sext i32 %0 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 4) #4
  %11 = bitcast i8* %10 to i32*
  %12 = sext i32 %0 to i64
  %13 = call noalias i8* @calloc(i64 noundef %12, i64 noundef 4) #4
  %14 = bitcast i8* %13 to i32*
  br label %15

15:                                               ; preds = %20, %5
  %.04 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %16 = icmp slt i32 %.04, %0
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds i32, i32* %11, i64 %18
  store i32 %.04, i32* %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.04, 1
  br label %15, !llvm.loop !4

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %120, %22
  %.010 = phi i32 [ %0, %22 ], [ %.212, %120 ]
  %.07 = phi i64 [ 0, %22 ], [ %.29, %120 ]
  %.02 = phi i32 [ 0, %22 ], [ %.1, %120 ]
  %24 = icmp slt i32 %.02, 30
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %34, %25
  %.15 = phi i32 [ 0, %25 ], [ %35, %34 ]
  %27 = icmp slt i32 %.15, %0
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = zext i32 %.15 to i64
  %30 = getelementptr inbounds i32, i32* %11, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32) #4
  br label %34

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %.15, 1
  br label %26, !llvm.loop !6

36:                                               ; preds = %26
  %putchar = call i32 @putchar(i32 10)
  %37 = add nsw i32 %.02, 1
  br label %38

38:                                               ; preds = %36, %23
  %.1 = phi i32 [ %37, %36 ], [ %.02, %23 ]
  br label %39

39:                                               ; preds = %44, %38
  %.111 = phi i32 [ %.010, %38 ], [ %45, %44 ]
  %.not = icmp eq i32 %.111, 1
  br i1 %.not, label %46, label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.111, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %14, i64 %42
  store i32 %.111, i32* %43, align 4
  br label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %.111, -1
  br label %39, !llvm.loop !7

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %46
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds i32, i32* %11, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %94, label %54

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %63, %54
  %.2 = phi i32 [ 1, %54 ], [ %64, %63 ]
  %56 = icmp slt i32 %.2, %0
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = zext i32 %.2 to i64
  %59 = getelementptr inbounds i32, i32* %11, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %.2 to i64
  %62 = getelementptr inbounds i32, i32* %8, i64 %61
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i32 %.2, 1
  br label %55, !llvm.loop !8

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  br label %67

67:                                               ; preds = %90, %65
  %.06 = phi i64 [ 0, %65 ], [ %84, %90 ]
  %.03 = phi i32 [ %66, %65 ], [ %87, %90 ]
  br label %68

68:                                               ; preds = %81, %67
  %.3 = phi i32 [ 1, %67 ], [ %82, %81 ]
  %.01.in = phi i32 [ %.03, %67 ], [ %.01, %81 ]
  %.01 = add nsw i32 %.01.in, -1
  %69 = icmp slt i32 %.3, %.01
  br i1 %69, label %70, label %83

70:                                               ; preds = %68
  %71 = zext i32 %.3 to i64
  %72 = getelementptr inbounds i32, i32* %8, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %.01 to i64
  %75 = getelementptr inbounds i32, i32* %8, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %.3 to i64
  %78 = getelementptr inbounds i32, i32* %8, i64 %77
  store i32 %76, i32* %78, align 4
  %79 = sext i32 %.01 to i64
  %80 = getelementptr inbounds i32, i32* %8, i64 %79
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %70
  %82 = add nuw nsw i32 %.3, 1
  br label %68, !llvm.loop !9

83:                                               ; preds = %68
  %84 = add nuw nsw i64 %.06, 1
  %85 = sext i32 %.03 to i64
  %86 = getelementptr inbounds i32, i32* %8, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %.03 to i64
  %89 = getelementptr inbounds i32, i32* %8, i64 %88
  store i32 %.03, i32* %89, align 4
  br label %90

90:                                               ; preds = %83
  %.not14 = icmp eq i32 %87, 0
  br i1 %.not14, label %91, label %67, !llvm.loop !10

91:                                               ; preds = %90
  %.not15 = icmp sgt i64 %.07, %.06
  br i1 %.not15, label %93, label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %91
  %.18 = phi i64 [ %84, %92 ], [ %.07, %91 ]
  br label %94

94:                                               ; preds = %93, %49, %46
  %.29 = phi i64 [ %.07, %46 ], [ %.07, %49 ], [ %.18, %93 ]
  br label %95

95:                                               ; preds = %118, %94
  %.212 = phi i32 [ %.111, %94 ], [ %119, %118 ]
  %96 = icmp eq i32 %.212, %0
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %121

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  br label %100

100:                                              ; preds = %102, %98
  %.4 = phi i32 [ 0, %98 ], [ %103, %102 ]
  %101 = icmp slt i32 %.4, %.212
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = add nuw nsw i32 %.4, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %11, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %.4 to i64
  %108 = getelementptr inbounds i32, i32* %11, i64 %107
  store i32 %106, i32* %108, align 4
  br label %100, !llvm.loop !11

109:                                              ; preds = %100
  %110 = sext i32 %.212 to i64
  %111 = getelementptr inbounds i32, i32* %11, i64 %110
  store i32 %99, i32* %111, align 4
  %112 = sext i32 %.212 to i64
  %113 = getelementptr inbounds i32, i32* %14, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  %116 = icmp sgt i32 %114, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %120

118:                                              ; preds = %109
  %119 = add nsw i32 %.212, 1
  br label %95

120:                                              ; preds = %117
  br label %23

121:                                              ; preds = %97, %4
  %.0 = phi i64 [ 0, %4 ], [ %.29, %97 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
