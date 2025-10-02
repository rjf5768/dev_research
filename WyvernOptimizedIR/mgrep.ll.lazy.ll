; ModuleID = './mgrep.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/mgrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pat_list = type { i32, %struct.pat_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@LONG = dso_local global i32 0, align 4
@SHORT = dso_local global i32 0, align 4
@p_size = dso_local global i32 0, align 4
@total_line = external dso_local global i32, align 4
@HASH = dso_local global [8192 x %struct.pat_list*] zeroinitializer, align 16
@tr = dso_local global [256 x i8] zeroinitializer, align 16
@patt = dso_local global [30000 x i8*] zeroinitializer, align 16
@pat_len = dso_local global [30000 x i8] zeroinitializer, align 16
@num_of_matched = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@SILENT = external dso_local global i32, align 4
@COUNT = external dso_local global i32, align 4
@FNAME = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@INVERSE = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SHIFT1 = dso_local global [4096 x i8] zeroinitializer, align 16
@qt = dso_local global %struct.pat_list* null, align 8
@pt = dso_local global %struct.pat_list* null, align 8
@pat_spool = dso_local global [320256 x i8] zeroinitializer, align 16
@buf = dso_local global [268192 x i8] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@WORDBOUND = external dso_local global i32, align 4
@WHOLELINE = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@NOUPPER = external dso_local global i32, align 4
@tr1 = dso_local global [256 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"the pattern file is empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @countline(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32, i32* @total_line, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @total_line, align 4
  br label %13

13:                                               ; preds = %10, %5
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @m_short(i8* noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  br label %12

12:                                               ; preds = %116, %3
  %.010 = phi i32 [ 0, %3 ], [ %.717, %116 ]
  %.02 = phi i8* [ %8, %3 ], [ %.68, %116 ]
  %.0 = phi i8* [ %11, %3 ], [ %.10, %116 ]
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %.not = icmp ugt i8* %13, %5
  br i1 %.not, label %117, label %14

14:                                               ; preds = %12
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %16
  %18 = load %struct.pat_list*, %struct.pat_list** %17, align 8
  br label %19

19:                                               ; preds = %115, %14
  %.121 = phi i32 [ 0, %14 ], [ %.424, %115 ]
  %.019 = phi %struct.pat_list* [ %18, %14 ], [ %24, %115 ]
  %.111 = phi i32 [ %.010, %14 ], [ %.616, %115 ]
  %.13 = phi i8* [ %.02, %14 ], [ %.57, %115 ]
  %.1 = phi i8* [ %13, %14 ], [ %.9, %115 ]
  %.not42 = icmp eq %struct.pat_list* %.019, null
  br i1 %.not42, label %.loopexit, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %.019, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %.019, i64 0, i32 1
  %24 = load %struct.pat_list*, %struct.pat_list** %23, align 8
  br label %25

25:                                               ; preds = %40, %20
  %.018 = phi i32 [ 0, %20 ], [ %42, %40 ]
  %.01 = phi i8* [ %.1, %20 ], [ %41, %40 ]
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = zext i32 %.018 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8, i8* %.01, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = icmp eq i8 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = getelementptr inbounds i8, i8* %.01, i64 1
  %42 = add nuw nsw i32 %.018, 1
  br label %25, !llvm.loop !6

43:                                               ; preds = %25
  %44 = sext i32 %22 to i64
  %45 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %.not43 = icmp ult i32 %.018, %47
  br i1 %.not43, label %113, label %48

48:                                               ; preds = %43
  %.not45 = icmp ult i8* %.1, %5
  br i1 %.not45, label %50, label %49

49:                                               ; preds = %48
  br label %129

50:                                               ; preds = %48
  %51 = load i32, i32* @num_of_matched, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @num_of_matched, align 4
  %53 = load i32, i32* @FILENAMEONLY, align 4
  %.not46 = icmp eq i32 %53, 0
  br i1 %.not46, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @SILENT, align 4
  %.not47 = icmp eq i32 %55, 0
  br i1 %.not47, label %57, label %56

56:                                               ; preds = %54, %50
  br label %129

57:                                               ; preds = %54
  %58 = load i32, i32* @COUNT, align 4
  %.not48 = icmp eq i32 %58, 0
  br i1 %.not48, label %65, label %59

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %62, %59
  %.2 = phi i8* [ %.1, %59 ], [ %63, %62 ]
  %61 = load i8, i8* %.2, align 1
  %.not56 = icmp eq i8 %61, 10
  br i1 %.not56, label %64, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %60, !llvm.loop !7

64:                                               ; preds = %60
  br label %112

65:                                               ; preds = %57
  %66 = load i32, i32* @FNAME, align 4
  %.not49 = icmp eq i32 %66, 0
  br i1 %.not49, label %69, label %67

67:                                               ; preds = %65
  %68 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0)) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* @INVERSE, align 4
  %.not50 = icmp eq i32 %70, 0
  br i1 %.not50, label %71, label %85

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %75, %71
  %.3 = phi i8* [ %.1, %71 ], [ %73, %75 ]
  %73 = getelementptr inbounds i8, i8* %.3, i64 -1
  %74 = load i8, i8* %73, align 1
  %.not51 = icmp eq i8 %74, 10
  br i1 %.not51, label %76, label %75

75:                                               ; preds = %72
  br label %72, !llvm.loop !8

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %80, %76
  %.4 = phi i8* [ %73, %76 ], [ %78, %80 ]
  %78 = getelementptr inbounds i8, i8* %.4, i64 1
  %79 = load i8, i8* %78, align 1
  %.not52 = icmp eq i8 %79, 10
  br i1 %.not52, label %84, label %80

80:                                               ; preds = %77
  %81 = load i8, i8* %78, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 @putchar(i32 noundef %82)
  br label %77, !llvm.loop !9

84:                                               ; preds = %77
  %putchar = call i32 @putchar(i32 10)
  br label %111

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %89, %85
  %.5 = phi i8* [ %.1, %85 ], [ %87, %89 ]
  %87 = getelementptr inbounds i8, i8* %.5, i64 -1
  %88 = load i8, i8* %87, align 1
  %.not53 = icmp eq i8 %88, 10
  br i1 %.not53, label %90, label %89

89:                                               ; preds = %86
  br label %86, !llvm.loop !10

90:                                               ; preds = %86
  %91 = icmp ult i8* %.13, %87
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %90
  %.212 = phi i32 [ 1, %92 ], [ %.111, %90 ]
  br label %94

94:                                               ; preds = %96, %93
  %.24 = phi i8* [ %.13, %93 ], [ %97, %96 ]
  %95 = icmp ult i8* %.24, %87
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = getelementptr inbounds i8, i8* %.24, i64 1
  %98 = load i8, i8* %.24, align 1
  %99 = zext i8 %98 to i32
  %100 = call i32 @putchar(i32 noundef %99)
  br label %94, !llvm.loop !11

101:                                              ; preds = %94
  %.not54 = icmp eq i32 %.212, 0
  br i1 %.not54, label %104, label %102

102:                                              ; preds = %101
  %103 = call i32 @putchar(i32 noundef 10)
  br label %104

104:                                              ; preds = %102, %101
  %.313 = phi i32 [ 0, %102 ], [ %.212, %101 ]
  br label %105

105:                                              ; preds = %108, %104
  %.6 = phi i8* [ %87, %104 ], [ %106, %108 ]
  %106 = getelementptr inbounds i8, i8* %.6, i64 1
  %107 = load i8, i8* %106, align 1
  %.not55 = icmp eq i8 %107, 10
  br i1 %.not55, label %109, label %108

108:                                              ; preds = %105
  br label %105, !llvm.loop !12

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, i8* %.6, i64 2
  br label %111

111:                                              ; preds = %109, %84
  %.414 = phi i32 [ %.313, %109 ], [ %.111, %84 ]
  %.35 = phi i8* [ %110, %109 ], [ %.13, %84 ]
  %.7 = phi i8* [ %106, %109 ], [ %78, %84 ]
  br label %112

112:                                              ; preds = %111, %64
  %.323 = phi i32 [ %.121, %64 ], [ 1, %111 ]
  %.515 = phi i32 [ %.111, %64 ], [ %.414, %111 ]
  %.46 = phi i8* [ %.13, %64 ], [ %.35, %111 ]
  %.8 = phi i8* [ %.2, %64 ], [ %.7, %111 ]
  br label %113

113:                                              ; preds = %112, %43
  %.424 = phi i32 [ %.323, %112 ], [ %.121, %43 ]
  %.616 = phi i32 [ %.515, %112 ], [ %.111, %43 ]
  %.57 = phi i8* [ %.46, %112 ], [ %.13, %43 ]
  %.9 = phi i8* [ %.8, %112 ], [ %.1, %43 ]
  %.not44 = icmp eq i32 %.424, 0
  br i1 %.not44, label %115, label %114

114:                                              ; preds = %113
  br label %116

115:                                              ; preds = %113
  br label %19, !llvm.loop !13

.loopexit:                                        ; preds = %19
  br label %116

116:                                              ; preds = %.loopexit, %114
  %.717 = phi i32 [ %.616, %114 ], [ %.111, %.loopexit ]
  %.68 = phi i8* [ %.57, %114 ], [ %.13, %.loopexit ]
  %.10 = phi i8* [ %.9, %114 ], [ %.1, %.loopexit ]
  br label %12, !llvm.loop !14

117:                                              ; preds = %12
  %118 = load i32, i32* @INVERSE, align 4
  %.not39 = icmp eq i32 %118, 0
  br i1 %.not39, label %129, label %119

119:                                              ; preds = %117
  %120 = load i32, i32* @COUNT, align 4
  %.not40 = icmp eq i32 %120, 0
  br i1 %.not40, label %121, label %129

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %123, %121
  %.79 = phi i8* [ %.02, %121 ], [ %124, %123 ]
  %.not41 = icmp ugt i8* %.79, %5
  br i1 %.not41, label %128, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds i8, i8* %.79, i64 1
  %125 = load i8, i8* %.79, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 @putchar(i32 noundef %126) #9
  br label %122, !llvm.loop !15

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %119, %117, %56, %49
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putchar(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_prep(i32 noundef %0, i8* nocapture noundef readonly %1) #1 {
  %3 = load i32, i32* @p_size, align 4
  br label %4

4:                                                ; preds = %41, %2
  %.02.in = phi i32 [ %3, %2 ], [ %.02, %41 ]
  %.02 = add nsw i32 %.02.in, -1
  %5 = load i32, i32* @LONG, align 4
  %6 = add nsw i32 %5, 1
  %.not.not = icmp sgt i32 %.02.in, %6
  br i1 %.not.not, label %7, label %42

7:                                                ; preds = %4
  %8 = sext i32 %.02 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = shl i8 %10, 4
  %12 = add nsw i32 %.02.in, -2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %1, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = and i8 %15, 15
  %17 = or i8 %11, %16
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* @LONG, align 4
  %.not4 = icmp eq i32 %19, 0
  br i1 %.not4, label %29, label %20

20:                                               ; preds = %7
  %21 = shl nuw nsw i32 %18, 4
  %22 = add nsw i32 %.02.in, -3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %1, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = and i8 %25, 15
  %27 = zext i8 %26 to i32
  %28 = or i32 %21, %27
  br label %29

29:                                               ; preds = %20, %7
  %.01 = phi i32 [ %28, %20 ], [ %18, %7 ]
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = sub i32 %3, %.02.in
  %.not5 = icmp sgt i32 %34, %33
  br i1 %.not5, label %40, label %35

35:                                               ; preds = %29
  %36 = sub i32 %3, %.02.in
  %37 = trunc i32 %36 to i8
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %38
  store i8 %37, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %29
  br label %41

41:                                               ; preds = %40
  br label %4, !llvm.loop !16

42:                                               ; preds = %4
  %43 = load i32, i32* @SHORT, align 4
  %.not = icmp eq i32 %43, 0
  br i1 %.not, label %45, label %44

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %42
  %.0 = phi i32 [ 255, %44 ], [ 15, %42 ]
  br label %46

46:                                               ; preds = %49, %45
  %.13.in = phi i32 [ %3, %45 ], [ %.13, %49 ]
  %.1 = phi i32 [ 0, %45 ], [ %59, %49 ]
  %.13 = add nsw i32 %.13.in, -1
  %47 = icmp sgt i32 %.13.in, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = shl i32 %.1, 4
  %51 = sext i32 %.13 to i64
  %52 = getelementptr inbounds i8, i8* %1, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %.0, %57
  %59 = add i32 %50, %58
  br label %46, !llvm.loop !17

60:                                               ; preds = %46
  %61 = and i32 %.1, 8191
  %62 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  store i8* %62, i8** bitcast (%struct.pat_list** @qt to i8**), align 8
  %.cast = bitcast i8* %62 to %struct.pat_list*
  %63 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %.cast, i64 0, i32 0
  store i32 %0, i32* %63, align 8
  %64 = zext i32 %61 to i64
  %65 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %64
  %66 = load %struct.pat_list*, %struct.pat_list** %65, align 8
  store %struct.pat_list* %66, %struct.pat_list** @pt, align 8
  %67 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %68 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %67, i64 0, i32 1
  store %struct.pat_list* %66, %struct.pat_list** %68, align 8
  %69 = zext i32 %61 to i64
  %70 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %69
  store %struct.pat_list* %67, %struct.pat_list** %70, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepf(i32 noundef %0) #1 {
  br label %2

2:                                                ; preds = %14, %1
  %.01 = phi i32 [ 0, %1 ], [ %9, %14 ]
  %3 = sext i32 %.01 to i64
  %4 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %3
  %5 = call i64 @read(i32 noundef %0, i8* noundef nonnull %4, i64 noundef 8192) #9
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = add nsw i32 %.01, %6
  %10 = icmp sgt i32 %9, 260000
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0), i32 noundef 260000) #10
  call void @exit(i32 noundef 2) #11
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %8
  br label %2, !llvm.loop !18

15:                                               ; preds = %2
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %16
  store i8 10, i8* %17, align 1
  br label %18

18:                                               ; preds = %46, %15
  %.08 = phi i32 [ 1, %15 ], [ %48, %46 ]
  %.02 = phi i32 [ 0, %15 ], [ %32, %46 ]
  %.0 = phi i8* [ getelementptr inbounds ([320256 x i8], [320256 x i8]* @pat_spool, i64 0, i64 0), %15 ], [ %47, %46 ]
  %19 = icmp slt i32 %.02, %.01
  br i1 %19, label %20, label %49

20:                                               ; preds = %18
  %21 = zext i32 %.08 to i64
  %22 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %21
  store i8* %.0, i8** %22, align 8
  %23 = load i32, i32* @WORDBOUND, align 4
  %.not15 = icmp eq i32 %23, 0
  br i1 %.not15, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 -128, i8* %.0, align 1
  br label %26

26:                                               ; preds = %24, %20
  %.1 = phi i8* [ %25, %24 ], [ %.0, %20 ]
  %27 = load i32, i32* @WHOLELINE, align 4
  %.not16 = icmp eq i32 %27, 0
  br i1 %.not16, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 10, i8* %.1, align 1
  br label %30

30:                                               ; preds = %28, %26
  %.2 = phi i8* [ %29, %28 ], [ %.1, %26 ]
  br label %31

31:                                               ; preds = %36, %30
  %.13 = phi i32 [ %.02, %30 ], [ %32, %36 ]
  %.3 = phi i8* [ %.2, %30 ], [ %37, %36 ]
  %32 = add nsw i32 %.13, 1
  %33 = sext i32 %.13 to i64
  %34 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %.3, align 1
  %.not17 = icmp eq i8 %35, 10
  br i1 %.not17, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %31, !llvm.loop !19

38:                                               ; preds = %31
  %39 = load i32, i32* @WORDBOUND, align 4
  %.not18 = icmp eq i32 %39, 0
  br i1 %.not18, label %42, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, i8* %.3, i64 1
  store i8 -128, i8* %.3, align 1
  br label %42

42:                                               ; preds = %40, %38
  %.4 = phi i8* [ %41, %40 ], [ %.3, %38 ]
  %43 = load i32, i32* @WHOLELINE, align 4
  %.not19 = icmp eq i32 %43, 0
  br i1 %.not19, label %46, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, i8* %.4, i64 1
  store i8 10, i8* %.4, align 1
  br label %46

46:                                               ; preds = %44, %42
  %.5 = phi i8* [ %45, %44 ], [ %.4, %42 ]
  %47 = getelementptr inbounds i8, i8* %.5, i64 1
  store i8 0, i8* %.5, align 1
  %48 = add nuw nsw i32 %.08, 1
  br label %18, !llvm.loop !20

49:                                               ; preds = %18
  %50 = icmp ugt i32 %.08, 30000
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0), i32 noundef 30000) #10
  call void @exit(i32 noundef 2) #11
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %59, %54
  %.24 = phi i32 [ 1, %54 ], [ %60, %59 ]
  %56 = icmp ult i32 %.24, 20
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = trunc i32 %.24 to i8
  store i8 %58, i8* %.0, align 1
  br label %59

59:                                               ; preds = %57
  %60 = add nuw nsw i32 %.24, 1
  br label %55, !llvm.loop !21

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %68, %61
  %.35 = phi i32 [ 0, %61 ], [ %69, %68 ]
  %63 = icmp ult i32 %.35, 256
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = trunc i32 %.35 to i8
  %66 = zext i32 %.35 to i64
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %66
  store i8 %65, i8* %67, align 1
  br label %68

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %.35, 1
  br label %62, !llvm.loop !22

70:                                               ; preds = %62
  %71 = load i32, i32* @NOUPPER, align 4
  %.not = icmp eq i32 %71, 0
  br i1 %.not, label %83, label %72

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %80, %72
  %.46 = phi i32 [ 65, %72 ], [ %81, %80 ]
  %74 = icmp ult i32 %.46, 91
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = trunc i32 %.46 to i8
  %77 = add i8 %76, 32
  %78 = zext i32 %.46 to i64
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %78
  store i8 %77, i8* %79, align 1
  br label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i32 %.46, 1
  br label %73, !llvm.loop !23

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* @WORDBOUND, align 4
  %.not10 = icmp eq i32 %84, 0
  br i1 %.not10, label %102, label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %99, %85
  %.57 = phi i32 [ 0, %85 ], [ %100, %99 ]
  %87 = icmp ult i32 %.57, 128
  br i1 %87, label %88, label %101

88:                                               ; preds = %86
  %89 = call i16** @__ctype_b_loc() #12
  %90 = load i16*, i16** %89, align 8
  %91 = zext i32 %.57 to i64
  %92 = getelementptr inbounds i16, i16* %90, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = and i16 %93, 8
  %.not14 = icmp eq i16 %94, 0
  br i1 %.not14, label %95, label %98

95:                                               ; preds = %88
  %96 = zext i32 %.57 to i64
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %96
  store i8 -128, i8* %97, align 1
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %.57, 1
  br label %86, !llvm.loop !24

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %112, %102
  %.6 = phi i32 [ 0, %102 ], [ %113, %112 ]
  %104 = icmp ult i32 %.6, 256
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = zext i32 %.6 to i64
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = and i8 %108, 15
  %110 = zext i32 %.6 to i64
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %110
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %105
  %113 = add nuw nsw i32 %.6, 1
  br label %103, !llvm.loop !25

114:                                              ; preds = %103
  store i32 256, i32* @p_size, align 4
  br label %115

115:                                              ; preds = %130, %114
  %.7 = phi i32 [ 1, %114 ], [ %131, %130 ]
  %.not11.not = icmp ult i32 %.7, %.08
  br i1 %.not11.not, label %116, label %132

116:                                              ; preds = %115
  %117 = zext i32 %.7 to i64
  %118 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %119) #13
  %121 = trunc i64 %120 to i32
  %122 = trunc i64 %120 to i8
  %123 = zext i32 %.7 to i64
  %124 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %123
  store i8 %122, i8* %124, align 1
  %.not13 = icmp eq i32 %121, 0
  br i1 %.not13, label %129, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* @p_size, align 4
  %127 = icmp sgt i32 %126, %121
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 %121, i32* @p_size, align 4
  br label %129

129:                                              ; preds = %128, %125, %116
  br label %130

130:                                              ; preds = %129
  %131 = add nuw nsw i32 %.7, 1
  br label %115, !llvm.loop !26

132:                                              ; preds = %115
  %133 = load i32, i32* @p_size, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %137 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %136) #14
  call void @exit(i32 noundef 2) #11
  br label %UnifiedUnreachableBlock

138:                                              ; preds = %132
  %139 = icmp sgt i32 %.01, 400
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  %141 = load i32, i32* @p_size, align 4
  %142 = icmp sgt i32 %141, 2
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* @LONG, align 4
  br label %144

144:                                              ; preds = %143, %140, %138
  %145 = load i32, i32* @p_size, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 1, i32* @SHORT, align 4
  br label %148

148:                                              ; preds = %147, %144
  br label %149

149:                                              ; preds = %157, %148
  %.8 = phi i32 [ 0, %148 ], [ %158, %157 ]
  %150 = icmp ult i32 %.8, 4096
  br i1 %150, label %151, label %159

151:                                              ; preds = %149
  %152 = load i32, i32* @p_size, align 4
  %153 = trunc i32 %152 to i8
  %154 = add i8 %153, -2
  %155 = zext i32 %.8 to i64
  %156 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %155
  store i8 %154, i8* %156, align 1
  br label %157

157:                                              ; preds = %151
  %158 = add nuw nsw i32 %.8, 1
  br label %149, !llvm.loop !27

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %165, %159
  %.9 = phi i32 [ 0, %159 ], [ %166, %165 ]
  %161 = icmp ult i32 %.9, 8192
  br i1 %161, label %162, label %167

162:                                              ; preds = %160
  %163 = zext i32 %.9 to i64
  %164 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %163
  store %struct.pat_list* null, %struct.pat_list** %164, align 8
  br label %165

165:                                              ; preds = %162
  %166 = add nuw nsw i32 %.9, 1
  br label %160, !llvm.loop !28

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %173, %167
  %.10 = phi i32 [ 1, %167 ], [ %174, %173 ]
  %.not12.not = icmp ult i32 %.10, %.08
  br i1 %.not12.not, label %169, label %175

169:                                              ; preds = %168
  %170 = zext i32 %.10 to i64
  %171 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %170
  %172 = load i8*, i8** %171, align 8
  call void @f_prep(i32 noundef %.10, i8* noundef %172)
  br label %173

173:                                              ; preds = %169
  %174 = add nuw nsw i32 %.10, 1
  br label %168, !llvm.loop !29

175:                                              ; preds = %168
  ret void

UnifiedUnreachableBlock:                          ; preds = %135, %51, %11
  unreachable
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @monkey1(i8* noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load i32, i32* @LONG, align 4
  %5 = load i32, i32* @p_size, align 4
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = add nsw i32 %5, -1
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  br label %16

16:                                               ; preds = %177, %3
  %.030 = phi i32 [ 0, %3 ], [ %.636, %177 ]
  %.012 = phi i8* [ %11, %3 ], [ %.820, %177 ]
  %.01 = phi i32 [ 0, %3 ], [ %.911, %177 ]
  %.0 = phi i8* [ %15, %3 ], [ %179, %177 ]
  %.not = icmp ugt i8* %.0, %7
  br i1 %.not, label %180, label %17

17:                                               ; preds = %16
  %18 = load i8, i8* %.0, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 4
  %24 = getelementptr inbounds i8, i8* %.0, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %23, %29
  %.not57 = icmp eq i32 %4, 0
  br i1 %.not57, label %40, label %31

31:                                               ; preds = %17
  %32 = shl nuw nsw i32 %30, 4
  %33 = getelementptr inbounds i8, i8* %.0, i64 -2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %32, %38
  br label %40

40:                                               ; preds = %31, %17
  %.023 = phi i32 [ %39, %31 ], [ %30, %17 ]
  %41 = zext i32 %.023 to i64
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %177

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %48, %45
  %.025 = phi i32 [ 0, %45 ], [ %59, %48 ]
  %.124 = phi i32 [ 0, %45 ], [ %58, %48 ]
  %.not58 = icmp ugt i32 %.025, %8
  br i1 %.not58, label %60, label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = shl i32 %.124, 4
  %50 = zext i32 %.025 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, i8* %.0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %49, %57
  %59 = add i32 %.025, 1
  br label %46, !llvm.loop !30

60:                                               ; preds = %46
  %61 = and i32 %.124, 8191
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %62
  %64 = load %struct.pat_list*, %struct.pat_list** %63, align 8
  br label %65

65:                                               ; preds = %171, %60
  %.131 = phi i32 [ %.030, %60 ], [ %.333, %171 ]
  %.022 = phi %struct.pat_list* [ %64, %60 ], [ %70, %171 ]
  %.113 = phi i8* [ %.012, %60 ], [ %.618, %171 ]
  %.13 = phi i32 [ %.01, %60 ], [ %.79, %171 ]
  %.1 = phi i8* [ %.0, %60 ], [ %.10, %171 ]
  %.not59 = icmp eq %struct.pat_list* %.022, null
  br i1 %.not59, label %.loopexit, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %.022, i64 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %.022, i64 0, i32 1
  %70 = load %struct.pat_list*, %struct.pat_list** %69, align 8
  %71 = sext i32 %8 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, i8* %.1, i64 %72
  br label %74

74:                                               ; preds = %89, %66
  %.029 = phi i32 [ 0, %66 ], [ %91, %89 ]
  %.028 = phi i8* [ %73, %66 ], [ %90, %89 ]
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = zext i32 %.029 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8, i8* %.028, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = getelementptr inbounds i8, i8* %.028, i64 1
  %91 = add nuw nsw i32 %.029, 1
  br label %74, !llvm.loop !31

92:                                               ; preds = %74
  %.not61 = icmp slt i32 %.029, %5
  br i1 %.not61, label %169, label %93

93:                                               ; preds = %92
  %94 = sext i32 %68 to i64
  %95 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %.not63 = icmp ult i32 %.029, %97
  br i1 %.not63, label %168, label %98

98:                                               ; preds = %93
  %99 = icmp ugt i8* %.1, %7
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %192

101:                                              ; preds = %98
  %102 = load i32, i32* @num_of_matched, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @num_of_matched, align 4
  %104 = load i32, i32* @FILENAMEONLY, align 4
  %.not64 = icmp eq i32 %104, 0
  br i1 %.not64, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @SILENT, align 4
  %.not65 = icmp eq i32 %106, 0
  br i1 %.not65, label %108, label %107

107:                                              ; preds = %105, %101
  br label %192

108:                                              ; preds = %105
  %109 = load i32, i32* @COUNT, align 4
  %.not66 = icmp eq i32 %109, 0
  br i1 %.not66, label %116, label %110

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %113, %110
  %.2 = phi i8* [ %.1, %110 ], [ %114, %113 ]
  %112 = load i8, i8* %.2, align 1
  %.not75 = icmp eq i8 %112, 10
  br i1 %.not75, label %115, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %111, !llvm.loop !32

115:                                              ; preds = %111
  br label %167

116:                                              ; preds = %108
  %117 = load i32, i32* @INVERSE, align 4
  %.not67 = icmp eq i32 %117, 0
  br i1 %.not67, label %118, label %136

118:                                              ; preds = %116
  %119 = load i32, i32* @FNAME, align 4
  %.not68 = icmp eq i32 %119, 0
  br i1 %.not68, label %122, label %120

120:                                              ; preds = %118
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0)) #9
  br label %122

122:                                              ; preds = %120, %118
  br label %123

123:                                              ; preds = %126, %122
  %.3 = phi i8* [ %.1, %122 ], [ %124, %126 ]
  %124 = getelementptr inbounds i8, i8* %.3, i64 -1
  %125 = load i8, i8* %124, align 1
  %.not69 = icmp eq i8 %125, 10
  br i1 %.not69, label %127, label %126

126:                                              ; preds = %123
  br label %123, !llvm.loop !33

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %131, %127
  %.4 = phi i8* [ %124, %127 ], [ %129, %131 ]
  %129 = getelementptr inbounds i8, i8* %.4, i64 1
  %130 = load i8, i8* %129, align 1
  %.not70 = icmp eq i8 %130, 10
  br i1 %.not70, label %135, label %131

131:                                              ; preds = %128
  %132 = load i8, i8* %129, align 1
  %133 = zext i8 %132 to i32
  %134 = call i32 @putchar(i32 noundef %133)
  br label %128, !llvm.loop !34

135:                                              ; preds = %128
  %putchar = call i32 @putchar(i32 10)
  br label %166

136:                                              ; preds = %116
  %137 = load i32, i32* @FNAME, align 4
  %.not71 = icmp eq i32 %137, 0
  br i1 %.not71, label %140, label %138

138:                                              ; preds = %136
  %139 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0)) #9
  br label %140

140:                                              ; preds = %138, %136
  br label %141

141:                                              ; preds = %144, %140
  %.5 = phi i8* [ %.1, %140 ], [ %142, %144 ]
  %142 = getelementptr inbounds i8, i8* %.5, i64 -1
  %143 = load i8, i8* %142, align 1
  %.not72 = icmp eq i8 %143, 10
  br i1 %.not72, label %145, label %144

144:                                              ; preds = %141
  br label %141, !llvm.loop !35

145:                                              ; preds = %141
  %146 = icmp ult i8* %.113, %142
  br i1 %146, label %147, label %148

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147, %145
  %.24 = phi i32 [ 1, %147 ], [ %.13, %145 ]
  br label %149

149:                                              ; preds = %151, %148
  %.214 = phi i8* [ %.113, %148 ], [ %152, %151 ]
  %150 = icmp ult i8* %.214, %142
  br i1 %150, label %151, label %156

151:                                              ; preds = %149
  %152 = getelementptr inbounds i8, i8* %.214, i64 1
  %153 = load i8, i8* %.214, align 1
  %154 = zext i8 %153 to i32
  %155 = call i32 @putchar(i32 noundef %154)
  br label %149, !llvm.loop !36

156:                                              ; preds = %149
  %.not73 = icmp eq i32 %.24, 0
  br i1 %.not73, label %159, label %157

157:                                              ; preds = %156
  %158 = call i32 @putchar(i32 noundef 10)
  br label %159

159:                                              ; preds = %157, %156
  %.35 = phi i32 [ 0, %157 ], [ %.24, %156 ]
  br label %160

160:                                              ; preds = %163, %159
  %.6 = phi i8* [ %142, %159 ], [ %161, %163 ]
  %161 = getelementptr inbounds i8, i8* %.6, i64 1
  %162 = load i8, i8* %161, align 1
  %.not74 = icmp eq i8 %162, 10
  br i1 %.not74, label %164, label %163

163:                                              ; preds = %160
  br label %160, !llvm.loop !37

164:                                              ; preds = %160
  %165 = getelementptr inbounds i8, i8* %.6, i64 2
  br label %166

166:                                              ; preds = %164, %135
  %.315 = phi i8* [ %165, %164 ], [ %.113, %135 ]
  %.46 = phi i32 [ %.35, %164 ], [ %.13, %135 ]
  %.7 = phi i8* [ %161, %164 ], [ %129, %135 ]
  br label %167

167:                                              ; preds = %166, %115
  %.416 = phi i8* [ %.113, %115 ], [ %.315, %166 ]
  %.57 = phi i32 [ %.13, %115 ], [ %.46, %166 ]
  %.8 = phi i8* [ %.2, %115 ], [ %.7, %166 ]
  br label %168

168:                                              ; preds = %167, %93
  %.232 = phi i32 [ 1, %167 ], [ %.131, %93 ]
  %.517 = phi i8* [ %.416, %167 ], [ %.113, %93 ]
  %.68 = phi i32 [ %.57, %167 ], [ %.13, %93 ]
  %.9 = phi i8* [ %.8, %167 ], [ %.1, %93 ]
  br label %169

169:                                              ; preds = %168, %92
  %.333 = phi i32 [ %.232, %168 ], [ %.131, %92 ]
  %.618 = phi i8* [ %.517, %168 ], [ %.113, %92 ]
  %.79 = phi i32 [ %.68, %168 ], [ %.13, %92 ]
  %.10 = phi i8* [ %.9, %168 ], [ %.1, %92 ]
  %.not62 = icmp eq i32 %.333, 0
  br i1 %.not62, label %171, label %170

170:                                              ; preds = %169
  br label %172

171:                                              ; preds = %169
  br label %65, !llvm.loop !38

.loopexit:                                        ; preds = %65
  br label %172

172:                                              ; preds = %.loopexit, %170
  %.434 = phi i32 [ %.333, %170 ], [ %.131, %.loopexit ]
  %.719 = phi i8* [ %.618, %170 ], [ %.113, %.loopexit ]
  %.810 = phi i32 [ %.79, %170 ], [ %.13, %.loopexit ]
  %.11 = phi i8* [ %.10, %170 ], [ %.1, %.loopexit ]
  %.not60 = icmp eq i32 %.434, 0
  br i1 %.not60, label %173, label %174

173:                                              ; preds = %172
  br label %176

174:                                              ; preds = %172
  %175 = trunc i32 %8 to i8
  br label %176

176:                                              ; preds = %174, %173
  %.535 = phi i32 [ 0, %174 ], [ %.434, %173 ]
  %.026 = phi i8 [ %175, %174 ], [ 1, %173 ]
  br label %177

177:                                              ; preds = %176, %40
  %.636 = phi i32 [ %.535, %176 ], [ %.030, %40 ]
  %.127 = phi i8 [ %.026, %176 ], [ %43, %40 ]
  %.820 = phi i8* [ %.719, %176 ], [ %.012, %40 ]
  %.911 = phi i32 [ %.810, %176 ], [ %.01, %40 ]
  %.12 = phi i8* [ %.11, %176 ], [ %.0, %40 ]
  %178 = zext i8 %.127 to i64
  %179 = getelementptr inbounds i8, i8* %.12, i64 %178
  br label %16, !llvm.loop !39

180:                                              ; preds = %16
  %181 = load i32, i32* @INVERSE, align 4
  %.not54 = icmp eq i32 %181, 0
  br i1 %.not54, label %192, label %182

182:                                              ; preds = %180
  %183 = load i32, i32* @COUNT, align 4
  %.not55 = icmp eq i32 %183, 0
  br i1 %.not55, label %184, label %192

184:                                              ; preds = %182
  br label %185

185:                                              ; preds = %186, %184
  %.921 = phi i8* [ %.012, %184 ], [ %187, %186 ]
  %.not56 = icmp ugt i8* %.921, %7
  br i1 %.not56, label %191, label %186

186:                                              ; preds = %185
  %187 = getelementptr inbounds i8, i8* %.921, i64 1
  %188 = load i8, i8* %.921, align 1
  %189 = zext i8 %188 to i32
  %190 = call i32 @putchar(i32 noundef %189)
  br label %185, !llvm.loop !40

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %191, %182, %180, %107, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mgrep(i32 noundef %0) #1 {
  %2 = alloca [17408 x i8], align 16
  %3 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 1023
  store i8 10, i8* %3, align 1
  br label %4

4:                                                ; preds = %47, %1
  %.02 = phi i32 [ 1023, %1 ], [ %.13, %47 ]
  %.01 = phi i32 [ undef, %1 ], [ %.1, %47 ]
  %.0 = phi i32 [ 0, %1 ], [ %29, %47 ]
  %5 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 1024
  %6 = call i64 @read(i32 noundef %0, i8* noundef nonnull %5, i64 noundef 8192) #9
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %4
  %10 = load i32, i32* @INVERSE, align 4
  %.not7 = icmp eq i32 %10, 0
  br i1 %.not7, label %15, label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @COUNT, align 4
  %.not12 = icmp eq i32 %12, 0
  br i1 %.not12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 1024
  call void @countline(i8* noundef nonnull %14, i32 noundef %7)
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = add nsw i32 %7, 1023
  br label %17

17:                                               ; preds = %25, %15
  %.1 = phi i32 [ %16, %15 ], [ %26, %25 ]
  %18 = sext i32 %.1 to i64
  %19 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %.not8 = icmp eq i8 %20, 10
  br i1 %.not8, label %23, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %.1, 1024
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i1 [ false, %17 ], [ %22, %21 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = add nsw i32 %.1, -1
  br label %17, !llvm.loop !41

27:                                               ; preds = %23
  %28 = sub nsw i32 %16, %.1
  %29 = add nsw i32 %28, 1
  %30 = add nsw i32 %.02, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 %31
  store i8 10, i8* %32, align 1
  %33 = load i32, i32* @SHORT, align 4
  %.not9 = icmp eq i32 %33, 0
  br i1 %.not9, label %36, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 0
  call void @m_short(i8* noundef nonnull %35, i32 noundef %.02, i32 noundef %.1)
  br label %38

36:                                               ; preds = %27
  %37 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 0
  call void @monkey1(i8* noundef nonnull %37, i32 noundef %.02, i32 noundef %.1)
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* @FILENAMEONLY, align 4
  %.not10 = icmp eq i32 %39, 0
  br i1 %.not10, label %43, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* @num_of_matched, align 4
  %.not11 = icmp eq i32 %41, 0
  br i1 %.not11, label %43, label %42

42:                                               ; preds = %40
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %68

43:                                               ; preds = %40, %38
  %44 = sub i32 1023, %28
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %43
  %.13 = phi i32 [ 1, %46 ], [ %44, %43 ]
  %48 = sext i32 %.13 to i64
  %49 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 %48
  %50 = sext i32 %.1 to i64
  %51 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 %50
  %52 = sext i32 %29 to i64
  %53 = call i8* @strncpy(i8* noundef nonnull %49, i8* noundef nonnull %51, i64 noundef %52) #9
  br label %4, !llvm.loop !42

54:                                               ; preds = %4
  %55 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 1024
  store i8 10, i8* %55, align 16
  %56 = add nsw i32 %.02, -1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 %57
  store i8 10, i8* %58, align 1
  %59 = icmp sgt i32 %.0, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @SHORT, align 4
  %.not = icmp eq i32 %61, 0
  br i1 %.not, label %64, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 0
  call void @m_short(i8* noundef nonnull %63, i32 noundef %.02, i32 noundef %.01)
  br label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds [17408 x i8], [17408 x i8]* %2, i64 0, i64 0
  call void @monkey1(i8* noundef nonnull %65, i32 noundef %.02, i32 noundef %.01)
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %42
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
