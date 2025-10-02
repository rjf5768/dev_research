; ModuleID = './pio.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@pzero = external dso_local global %struct.precisionType*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fputp(%struct._IO_FILE* noundef %0, %struct.precisionType* noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %1, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %8 = call i8* @ptoa(%struct.precisionType* noundef %1) #4
  %9 = call i32 @fouts(%struct._IO_FILE* noundef %0, i8* noundef %8)
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %8) #4
  %.not1 = icmp eq %struct.precisionType* %1, null
  br i1 %.not1, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %13 = load i16, i16* %12, align 2
  %14 = add i16 %13, -1
  store i16 %14, i16* %12, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %1) #4
  br label %18

18:                                               ; preds = %16, %11, %7
  ret i32 %9
}

declare dso_local i8* @ptoa(%struct.precisionType* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fouts(%struct._IO_FILE* noundef %0, i8* noundef readonly %1) #0 {
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %19, label %3

3:                                                ; preds = %2
  %4 = load i8, i8* %1, align 1
  %.not6 = icmp eq i8 %4, 0
  br i1 %.not6, label %19, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %16, %5
  %.02 = phi i32 [ 0, %5 ], [ %7, %16 ]
  %.01 = phi i8* [ %1, %5 ], [ %12, %16 ]
  %7 = add nuw nsw i32 %.02, 1
  %8 = load i8, i8* %.01, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @putc(i32 noundef %9, %struct._IO_FILE* noundef %0) #4
  br label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  %13 = load i8, i8* %12, align 1
  %.not7 = icmp eq i8 %13, 0
  br i1 %.not7, label %16, label %14

14:                                               ; preds = %11
  %15 = icmp ne i32 %10, -1
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i1 [ false, %11 ], [ %15, %14 ]
  br i1 %17, label %6, label %18, !llvm.loop !4

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18, %3, %2
  %.13 = phi i32 [ %7, %18 ], [ 0, %3 ], [ 0, %2 ]
  %.0 = phi i32 [ %10, %18 ], [ 0, %3 ], [ 0, %2 ]
  %.not5 = icmp eq i32 %.0, -1
  br i1 %.not5, label %21, label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20, %19
  %.1 = phi i32 [ %.13, %20 ], [ %.0, %19 ]
  ret i32 %.1
}

declare dso_local i32 @free(...) #1

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @putp(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = call i8* @ptoa(%struct.precisionType* noundef %0) #4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = call i32 @fouts(%struct._IO_FILE* noundef %8, i8* noundef %7)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %10) #4
  %12 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %7) #4
  %.not1 = icmp eq %struct.precisionType* %0, null
  br i1 %.not1, label %20, label %13

13:                                               ; preds = %6
  %14 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %15 = load i16, i16* %14, align 2
  %16 = add i16 %15, -1
  store i16 %16, i16* %14, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #4
  br label %20

20:                                               ; preds = %18, %13, %6
  ret i32 %11
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fprintp(%struct._IO_FILE* noundef %0, %struct.precisionType* noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq %struct.precisionType* %1, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %5 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = add i16 %6, 1
  store i16 %7, i16* %5, align 2
  br label %8

8:                                                ; preds = %4, %3
  %9 = call i8* @ptoa(%struct.precisionType* noundef %1) #4
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %9) #5
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = call i32 @fouts(%struct._IO_FILE* noundef %0, i8* noundef %9)
  br label %15

15:                                               ; preds = %18, %13
  %.01 = phi i32 [ %2, %13 ], [ %19, %18 ]
  %16 = sub nsw i32 0, %11
  %17 = icmp slt i32 %.01, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = add nsw i32 %.01, 1
  %20 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %0) #4
  br label %15, !llvm.loop !6

21:                                               ; preds = %15
  br label %30

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %25, %22
  %.1 = phi i32 [ %2, %22 ], [ %26, %25 ]
  %24 = icmp sgt i32 %.1, %11
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = add nsw i32 %.1, -1
  %27 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %0) #4
  br label %23, !llvm.loop !7

28:                                               ; preds = %23
  %29 = call i32 @fouts(%struct._IO_FILE* noundef %0, i8* noundef %9)
  br label %30

30:                                               ; preds = %28, %21
  %.0 = phi i32 [ %14, %21 ], [ %29, %28 ]
  %31 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* noundef %9) #4
  %.not2 = icmp eq %struct.precisionType* %1, null
  br i1 %.not2, label %39, label %32

32:                                               ; preds = %30
  %33 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = add i16 %34, -1
  store i16 %35, i16* %33, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %1) #4
  br label %39

39:                                               ; preds = %37, %32, %30
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @fgetp(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  %.not = icmp eq i32 %4, -1
  br i1 %.not, label %99, label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %13, %5
  %.03 = phi i32 [ %4, %5 ], [ %14, %13 ]
  %7 = call i16** @__ctype_b_loc() #6
  %8 = load i16*, i16** %7, align 8
  %9 = sext i32 %.03 to i64
  %10 = getelementptr inbounds i16, i16* %8, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 8192
  %.not13 = icmp eq i16 %12, 0
  br i1 %.not13, label %15, label %13

13:                                               ; preds = %6
  %14 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  br label %6, !llvm.loop !8

15:                                               ; preds = %6
  %16 = icmp eq i32 %.03, 45
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  br label %24

19:                                               ; preds = %15
  %20 = icmp eq i32 %.03, 43
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  br label %23

23:                                               ; preds = %21, %19
  %.14 = phi i32 [ %22, %21 ], [ %.03, %19 ]
  br label %24

24:                                               ; preds = %23, %17
  %.2 = phi i32 [ %18, %17 ], [ %.14, %23 ]
  %25 = call i16** @__ctype_b_loc() #6
  %26 = load i16*, i16** %25, align 8
  %27 = sext i32 %.2 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = and i16 %29, 2048
  %.not14 = icmp eq i16 %30, 0
  br i1 %.not14, label %92, label %31

31:                                               ; preds = %24
  %32 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %33 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %32) #4
  %34 = call %struct.precisionType* @utop(i32 noundef 1000000000) #4
  %35 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %3, %struct.precisionType* noundef %34) #4
  br label %36

36:                                               ; preds = %61, %31
  %.3 = phi i32 [ %.2, %31 ], [ %64, %61 ]
  %37 = add nsw i32 %.3, -48
  br label %38

38:                                               ; preds = %51, %36
  %.05 = phi i32 [ %37, %36 ], [ %50, %51 ]
  %.01 = phi i32 [ 8, %36 ], [ %52, %51 ]
  %39 = call i16** @__ctype_b_loc() #6
  %40 = load i16*, i16** %39, align 8
  %41 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %40, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = and i16 %44, 2048
  %.not15 = icmp eq i16 %45, 0
  br i1 %.not15, label %46, label %47

46:                                               ; preds = %38
  br label %70

47:                                               ; preds = %38
  %48 = mul i32 %.05, 10
  %49 = add nsw i32 %41, -48
  %50 = add i32 %48, %49
  br label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %.01, -1
  %53 = icmp sgt i32 %.01, 1
  br i1 %53, label %38, label %54, !llvm.loop !9

54:                                               ; preds = %51
  %55 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %56 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %57 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %55, %struct.precisionType* noundef %56) #4
  %58 = call %struct.precisionType* @utop(i32 noundef %50) #4
  %59 = call %struct.precisionType* @padd(%struct.precisionType* noundef %57, %struct.precisionType* noundef %58) #4
  %60 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %59) #4
  br label %61

61:                                               ; preds = %54
  %62 = call i16** @__ctype_b_loc() #6
  %63 = load i16*, i16** %62, align 8
  %64 = call i32 @getc(%struct._IO_FILE* noundef %0) #4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = and i16 %67, 2048
  %.not18 = icmp eq i16 %68, 0
  br i1 %.not18, label %69, label %36, !llvm.loop !10

69:                                               ; preds = %61
  br label %83

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %73, %70
  %.06 = phi i32 [ 10, %70 ], [ %75, %73 ]
  %.1 = phi i32 [ %.01, %70 ], [ %74, %73 ]
  %72 = icmp slt i32 %.1, 8
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = add nsw i32 %.1, 1
  %75 = mul i32 %.06, 10
  br label %71, !llvm.loop !11

76:                                               ; preds = %71
  %77 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %78 = call %struct.precisionType* @utop(i32 noundef %.06) #4
  %79 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %77, %struct.precisionType* noundef %78) #4
  %80 = call %struct.precisionType* @utop(i32 noundef %.05) #4
  %81 = call %struct.precisionType* @padd(%struct.precisionType* noundef %79, %struct.precisionType* noundef %80) #4
  %82 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %81) #4
  br label %83

83:                                               ; preds = %76, %69
  %.4 = phi i32 [ %64, %69 ], [ %41, %76 ]
  %.not16 = icmp eq i32 %.4, -1
  br i1 %.not16, label %86, label %84

84:                                               ; preds = %83
  %85 = call i32 @ungetc(i32 noundef %.4, %struct._IO_FILE* noundef %0) #4
  br label %86

86:                                               ; preds = %84, %83
  br i1 %16, label %87, label %91

87:                                               ; preds = %86
  %88 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %89 = call %struct.precisionType* @pneg(%struct.precisionType* noundef %88) #4
  %90 = call %struct.precisionType* @psetq(%struct.precisionType** noundef nonnull %2, %struct.precisionType* noundef %89) #4
  br label %91

91:                                               ; preds = %87, %86
  br label %98

92:                                               ; preds = %24
  %93 = icmp eq i32 %.2, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  br label %97

95:                                               ; preds = %92
  %96 = call i32 @ungetc(i32 noundef %.2, %struct._IO_FILE* noundef %0) #4
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %91
  br label %100

99:                                               ; preds = %1
  store %struct.precisionType* null, %struct.precisionType** %2, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %.not12 = icmp eq %struct.precisionType* %101, null
  br i1 %.not12, label %111, label %102

102:                                              ; preds = %100
  %103 = bitcast %struct.precisionType** %3 to i16**
  %104 = load i16*, i16** %103, align 8
  %105 = load i16, i16* %104, align 2
  %106 = add i16 %105, -1
  store i16 %106, i16* %104, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %110 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %109) #4
  br label %111

111:                                              ; preds = %108, %102, %100
  %112 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %113 = icmp eq %struct.precisionType* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  br label %119

116:                                              ; preds = %111
  %117 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %118 = call %struct.precisionType* @presult(%struct.precisionType* noundef %117) #4
  br label %119

119:                                              ; preds = %116, %114
  %.0 = phi %struct.precisionType* [ %115, %114 ], [ %118, %116 ]
  ret %struct.precisionType* %.0
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind readnone willreturn }

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
