; ModuleID = './tu.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@table = external dso_local global [0 x %struct.colstr*], align 8
@ncol = external dso_local global i32, align 4
@pr1403 = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c".nr %d \\n(.v\0A.vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".vs \\n(%du\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\\v'-.5m'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1p\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-1p\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\\h'%s'\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+1p\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\\h'|\\n(%du'\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@linsize = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\\l'|\\n(%du'\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\\(ul\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\\(ru\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(TWu%s%s'\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"\\l'(|\\n(%du+|\\n(%du)/2u%s%s'\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\\s0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"\\v'+.5m'\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@nlin = external dso_local global i32, align 4
@boxflg = external dso_local global i32, align 4
@allflg = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@.str.22 = private unnamed_addr constant [4 x i8] c".TH\00", align 1
@fullbot = external dso_local global [0 x i32], align 4
@stynum = external dso_local global [0 x i32], align 4
@lefline = external dso_local global [100 x [20 x i32]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeline(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @thish(i32 noundef %0, i32 noundef %1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %57

7:                                                ; preds = %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %8
  %10 = load %struct.colstr*, %struct.colstr** %9, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.colstr, %struct.colstr* %10, i64 %11, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 92
  %16 = zext i1 %15 to i32
  %17 = icmp sgt i32 %1, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %7
  br i1 %15, label %24, label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %1, -1
  %21 = call i32 @thish(i32 noundef %0, i32 noundef %20) #5
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %57

24:                                               ; preds = %19, %18, %7
  br i1 %15, label %43, label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %40, %25
  %.0 = phi i32 [ %1, %25 ], [ %41, %40 ]
  %27 = load i32, i32* @ncol, align 4
  %28 = icmp slt i32 %.0, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = call i32 @ctype(i32 noundef %0, i32 noundef %.0) #5
  %31 = icmp eq i32 %30, 115
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i32 @thish(i32 noundef %0, i32 noundef %.0) #5
  %34 = icmp eq i32 %4, %33
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i1 [ false, %26 ], [ %36, %35 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.0, 1
  br label %26, !llvm.loop !4

42:                                               ; preds = %37
  br label %55

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %53, %43
  %.1.in = phi i32 [ %1, %43 ], [ %.1, %53 ]
  %.1 = add nsw i32 %.1.in, 1
  %45 = load i32, i32* @ncol, align 4
  %46 = icmp slt i32 %.1, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @ctype(i32 noundef %0, i32 noundef %.1) #5
  %49 = icmp eq i32 %48, 115
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  br label %44, !llvm.loop !6

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %42
  %.2 = phi i32 [ %.0, %42 ], [ %.1, %54 ]
  %56 = add nsw i32 %.2, -1
  call void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %56, i32 noundef %2, i32 noundef 0, i32 noundef %16)
  br label %57

57:                                               ; preds = %55, %23, %6
  ret void
}

declare dso_local i32 @thish(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  switch i32 %3, label %12 [
    i32 45, label %7
    i32 61, label %8
    i32 4, label %11
  ]

7:                                                ; preds = %6
  br label %12

8:                                                ; preds = %6
  %9 = load i32, i32* @pr1403, align 4
  %.not23 = icmp eq i32 %9, 0
  %10 = select i1 %.not23, i32 2, i32 1
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %8, %7, %6
  %.03 = phi i32 [ 0, %6 ], [ 1, %11 ], [ %10, %8 ], [ 1, %7 ]
  %13 = icmp eq i32 %.03, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %145

15:                                               ; preds = %12
  %16 = sub nsw i32 %2, %1
  %17 = load i32, i32* @ncol, align 4
  %.not = icmp slt i32 %16, %17
  br i1 %.not, label %18, label %22

18:                                               ; preds = %15
  %.not11 = icmp eq i32 %4, 0
  br i1 %.not11, label %19, label %22

19:                                               ; preds = %18
  %20 = call i32 @allh(i32 noundef %0) #5
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %18, %15
  %23 = phi i1 [ false, %18 ], [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %25)
  br label %27

27:                                               ; preds = %24, %22
  br label %28

28:                                               ; preds = %134, %27
  %.05 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %27 ], [ %.510, %134 ]
  %.04 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %27 ], [ %.5, %134 ]
  %.02 = phi i32 [ 0, %27 ], [ %135, %134 ]
  %.01 = phi i32 [ 0, %27 ], [ %33, %134 ]
  %29 = icmp ult i32 %.02, %.03
  br i1 %29, label %30, label %136

30:                                               ; preds = %28
  %31 = shl nuw nsw i32 %.02, 1
  %32 = sub nsw i32 %31, %.03
  %33 = add nsw i32 %32, 1
  %.not15 = icmp eq i32 %33, %.01
  br i1 %.not15, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %36 = sub nsw i32 %33, %.01
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %36) #5
  br label %38

38:                                               ; preds = %34, %30
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %38
  call void @tohcol(i32 noundef %1) #5
  %41 = icmp ugt i32 %.03, 1
  br i1 %41, label %42, label %57

42:                                               ; preds = %40
  %43 = call i32 @interv(i32 noundef %0, i32 noundef %1) #5
  switch i32 %43, label %51 [
    i32 1, label %44
    i32 2, label %47
    i32 3, label %50
  ]

44:                                               ; preds = %42
  %45 = icmp eq i32 %.02, 0
  %46 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %51

47:                                               ; preds = %42
  %48 = icmp eq i32 %.02, 1
  %49 = select i1 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %47, %44, %42
  %.1 = phi i8* [ %.04, %42 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %50 ], [ %49, %47 ], [ %46, %44 ]
  %52 = load i8, i8* %.1, align 1
  %.not22 = icmp eq i8 %52, 0
  br i1 %.not22, label %56, label %53

53:                                               ; preds = %51
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %.1) #5
  br label %56

56:                                               ; preds = %53, %51
  br label %70

57:                                               ; preds = %40
  %58 = icmp eq i32 %.03, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %57
  %60 = call i32 @interv(i32 noundef %0, i32 noundef %1) #5
  switch i32 %60, label %63 [
    i32 1, label %61
    i32 2, label %61
    i32 3, label %62
  ]

61:                                               ; preds = %59, %59
  br label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %61, %59
  %.2 = phi i8* [ %.04, %59 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %62 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %61 ]
  %64 = load i8, i8* %.2, align 1
  %.not21 = icmp eq i8 %64, 0
  br i1 %.not21, label %68, label %65

65:                                               ; preds = %63
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %.2) #5
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %57
  %.3 = phi i8* [ %.2, %68 ], [ %.04, %57 ]
  br label %70

70:                                               ; preds = %69, %56
  %.4 = phi i8* [ %.1, %56 ], [ %.3, %69 ]
  %71 = icmp ugt i32 %.03, 1
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = add nsw i32 %2, 1
  %74 = call i32 @interv(i32 noundef %0, i32 noundef %73) #5
  switch i32 %74, label %82 [
    i32 1, label %75
    i32 2, label %78
    i32 3, label %81
  ]

75:                                               ; preds = %72
  %76 = icmp eq i32 %.02, 0
  %77 = select i1 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  br label %82

78:                                               ; preds = %72
  %79 = icmp eq i32 %.02, 1
  %80 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %78, %75, %72
  %.16 = phi i8* [ %.05, %72 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %81 ], [ %80, %78 ], [ %77, %75 ]
  br label %92

83:                                               ; preds = %70
  %84 = icmp eq i32 %.03, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = add nsw i32 %2, 1
  %87 = call i32 @interv(i32 noundef %0, i32 noundef %86) #5
  switch i32 %87, label %90 [
    i32 1, label %88
    i32 2, label %88
    i32 3, label %89
  ]

88:                                               ; preds = %85, %85
  br label %90

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %88, %85
  %.27 = phi i8* [ %.05, %85 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %89 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %88 ]
  br label %91

91:                                               ; preds = %90, %83
  %.38 = phi i8* [ %.27, %90 ], [ %.05, %83 ]
  br label %92

92:                                               ; preds = %91, %82
  %.49 = phi i8* [ %.16, %82 ], [ %.38, %91 ]
  br label %97

93:                                               ; preds = %38
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %95 = add nsw i32 %1, 40
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %95) #5
  br label %97

97:                                               ; preds = %93, %92
  %.510 = phi i8* [ %.49, %92 ], [ %.05, %93 ]
  %.5 = phi i8* [ %.4, %92 ], [ %.04, %93 ]
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 noundef 33) #5
  %100 = load i32, i32* @linsize, align 4
  %.not16 = icmp eq i32 %100, 0
  br i1 %.not16, label %104, label %101

101:                                              ; preds = %97
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 33) #5
  br label %104

104:                                              ; preds = %101, %97
  %.not17 = icmp eq i32 %5, 0
  br i1 %.not17, label %109, label %105

105:                                              ; preds = %104
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %107 = add nsw i32 %2, 80
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 noundef %107) #5
  br label %126

109:                                              ; preds = %104
  %110 = load i32, i32* @pr1403, align 4
  %.not18 = icmp eq i32 %110, 0
  br i1 %.not18, label %114, label %111

111:                                              ; preds = %109
  %112 = icmp eq i32 %3, 2
  %113 = select i1 %112, i32 ptrtoint ([2 x i8]* @.str.15 to i32), i32 ptrtoint ([5 x i8]* @.str.16 to i32)
  br label %114

114:                                              ; preds = %111, %109
  %.0 = phi i32 [ %113, %111 ], [ ptrtoint ([5 x i8]* @.str.14 to i32), %109 ]
  %115 = add nsw i32 %2, 1
  %116 = load i32, i32* @ncol, align 4
  %.not19 = icmp slt i32 %115, %116
  br i1 %.not19, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %.510, i32 noundef %.0) #5
  br label %125

120:                                              ; preds = %114
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %122 = add nsw i32 %2, 80
  %123 = add nsw i32 %2, 41
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 noundef %122, i32 noundef %123, i8* noundef %.510, i32 noundef %.0) #5
  br label %125

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* @linsize, align 4
  %.not20 = icmp eq i32 %127, 0
  br i1 %.not20, label %131, label %128

128:                                              ; preds = %126
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 noundef 33) #5
  br label %131

131:                                              ; preds = %128, %126
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %133 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %132)
  br label %134

134:                                              ; preds = %131
  %135 = add nuw nsw i32 %.02, 1
  br label %28, !llvm.loop !7

136:                                              ; preds = %28
  %.not13 = icmp eq i32 %.01, 0
  br i1 %.not13, label %141, label %137

137:                                              ; preds = %136
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %139 = sub nsw i32 0, %.01
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %138, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %139) #5
  br label %141

141:                                              ; preds = %137, %136
  br i1 %23, label %142, label %145

142:                                              ; preds = %141
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %143)
  br label %145

145:                                              ; preds = %142, %141, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fullwide(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @pr1403, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %7

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #5
  br label %7

7:                                                ; preds = %4, %2
  br label %8

8:                                                ; preds = %46, %7
  %.01 = phi i32 [ 0, %7 ], [ %.1, %46 ]
  %9 = load i32, i32* @ncol, align 4
  %10 = icmp slt i32 %.01, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %20, %11
  %.0 = phi i32 [ %.01, %11 ], [ %21, %20 ]
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = call i32 @prev(i32 noundef %0)
  %16 = call i32 @vspand(i32 noundef %15, i32 noundef %.0, i32 noundef 1) #5
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i1 [ false, %12 ], [ %17, %14 ]
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = add nsw i32 %.0, 1
  br label %12, !llvm.loop !8

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %33, %22
  %.1 = phi i32 [ %.0, %22 ], [ %34, %33 ]
  %24 = load i32, i32* @ncol, align 4
  %25 = icmp slt i32 %.1, %24
  br i1 %25, label %26, label %.loopexit

26:                                               ; preds = %23
  %27 = icmp sgt i32 %0, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = call i32 @prev(i32 noundef %0)
  %30 = call i32 @vspand(i32 noundef %29, i32 noundef %.1, i32 noundef 1) #5
  %.not7 = icmp eq i32 %30, 0
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %28
  br label %35

32:                                               ; preds = %28, %26
  br label %33

33:                                               ; preds = %32
  %34 = add nsw i32 %.1, 1
  br label %23, !llvm.loop !9

.loopexit:                                        ; preds = %23
  br label %35

35:                                               ; preds = %.loopexit, %31
  %36 = load i32, i32* @ncol, align 4
  %37 = icmp slt i32 %.0, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @ncol, align 4
  %40 = icmp slt i32 %.1, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = add nsw i32 %.1, -1
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ %.1, %43 ]
  call void @drawline(i32 noundef %0, i32 noundef %.0, i32 noundef %45, i32 noundef %1, i32 noundef 1, i32 noundef 0)
  br label %46

46:                                               ; preds = %44, %35
  br label %8, !llvm.loop !10

47:                                               ; preds = %8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %48)
  %49 = load i32, i32* @pr1403, align 4
  %.not6 = icmp eq i32 %49, 0
  br i1 %.not6, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 36) #5
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @vspand(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @prev(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %18, %1
  %.0 = phi i32 [ %0, %1 ], [ %3, %18 ]
  %3 = add nsw i32 %.0, -1
  %4 = icmp sgt i32 %.0, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %14

9:                                                ; preds = %5
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ true, %5 ], [ %13, %9 ]
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i1 [ false, %2 ], [ %15, %14 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %2, !llvm.loop !11

19:                                               ; preds = %16
  ret i32 %3
}

declare dso_local i32 @allh(i32 noundef) #1

declare dso_local void @tohcol(i32 noundef) #1

declare dso_local i32 @interv(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getstop() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp ult i32 %.0, 200
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %5
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !12

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %33, %9
  %.02 = phi i32 [ 1, %9 ], [ %.13, %33 ]
  %.1 = phi i32 [ 0, %9 ], [ %34, %33 ]
  %11 = load i32, i32* @nlin, align 4
  %12 = icmp slt i32 %.1, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %30, %13
  %.13 = phi i32 [ %.02, %13 ], [ %.2, %30 ]
  %.01 = phi i32 [ 0, %13 ], [ %31, %30 ]
  %15 = load i32, i32* @ncol, align 4
  %16 = icmp slt i32 %.01, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = call i32 @left(i32 noundef %.1, i32 noundef %.01, i32* noundef nonnull %1)
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = add nsw i32 %.13, 1
  %27 = sext i32 %18 to i64
  %28 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %27
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %20, %17
  %.2 = phi i32 [ %26, %25 ], [ %.13, %20 ], [ %.13, %17 ]
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !13

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.1, 1
  br label %10, !llvm.loop !14

35:                                               ; preds = %10
  %36 = load i32, i32* @boxflg, align 4
  %.not = icmp eq i32 %36, 0
  br i1 %.not, label %37, label %41

37:                                               ; preds = %35
  %38 = load i32, i32* @allflg, align 4
  %.not4 = icmp eq i32 %38, 0
  br i1 %.not4, label %39, label %41

39:                                               ; preds = %37
  %40 = load i32, i32* @dboxflg, align 4
  %.not5 = icmp eq i32 %40, 0
  br i1 %.not5, label %42, label %41

41:                                               ; preds = %39, %37, %35
  store i32 1, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @linestop, i64 0, i64 0), align 4
  br label %42

42:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @left(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) #0 {
  store i32 0, i32* %2, align 4
  %4 = call i32 @lefdata(i32 noundef %0, i32 noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %58

7:                                                ; preds = %3
  %8 = add nsw i32 %0, 1
  %9 = load i32, i32* @nlin, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = call i32 @next(i32 noundef %0)
  %13 = call i32 @lefdata(i32 noundef %12, i32 noundef %1)
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %58

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %7
  br label %18

18:                                               ; preds = %25, %17
  %.03 = phi i32 [ undef, %17 ], [ %.01, %25 ]
  %.01 = phi i32 [ %0, %17 ], [ %26, %25 ]
  %19 = icmp sgt i32 %.01, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = call i32 @lefdata(i32 noundef %.01, i32 noundef %1)
  %22 = icmp eq i32 %21, %4
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i1 [ false, %18 ], [ %22, %20 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 @prev(i32 noundef %.01)
  br label %18, !llvm.loop !15

27:                                               ; preds = %23
  %28 = call i32 @prev(i32 noundef %.03)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27
  %.14 = phi i32 [ 0, %30 ], [ %.03, %27 ]
  store i32 %4, i32* %2, align 4
  br label %32

32:                                               ; preds = %46, %31
  %.02.in = phi i32 [ %.01, %31 ], [ %.02, %46 ]
  %.02 = add nsw i32 %.02.in, 1
  %33 = icmp slt i32 %.02, %.14
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = sext i32 %.02 to i64
  %36 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %.not5 = icmp eq i8* %37, null
  br i1 %.not5, label %45, label %38

38:                                               ; preds = %34
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %41, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %58

45:                                               ; preds = %38, %34
  br label %46

46:                                               ; preds = %45
  br label %32, !llvm.loop !16

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %56, %47
  %.2 = phi i32 [ %.14, %47 ], [ %.3, %56 ]
  %.1.in = phi i32 [ %.01, %47 ], [ %.1, %56 ]
  %.1 = add nsw i32 %.1.in, 1
  %49 = icmp slt i32 %.1, %.2
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = sext i32 %.1 to i64
  %52 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %.not = icmp eq i32 %53, 0
  br i1 %.not, label %55, label %54

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %50
  %.3 = phi i32 [ %.1, %54 ], [ %.2, %50 ]
  br label %56

56:                                               ; preds = %55
  br label %48, !llvm.loop !17

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %44, %15, %6
  %.0 = phi i32 [ -1, %6 ], [ -1, %15 ], [ %.14, %44 ], [ %.2, %57 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lefdata(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @nlin, align 4
  %.not = icmp sgt i32 %3, %0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* @nlin, align 4
  %6 = add nsw i32 %5, -1
  br label %7

7:                                                ; preds = %4, %2
  %.01 = phi i32 [ %6, %4 ], [ %0, %2 ]
  %8 = call i32 @ctype(i32 noundef %.01, i32 noundef %1) #5
  %9 = icmp eq i32 %8, 115
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %15, %10
  %.02 = phi i32 [ %1, %10 ], [ %16, %15 ]
  %12 = call i32 @ctype(i32 noundef %.01, i32 noundef %.02) #5
  %13 = icmp eq i32 %12, 115
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %.02, -1
  br label %11, !llvm.loop !18

17:                                               ; preds = %11
  %18 = call i32 @thish(i32 noundef %.01, i32 noundef %.02) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %46

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %7
  %23 = sext i32 %.01 to i64
  %24 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %46

32:                                               ; preds = %22
  %33 = load i32, i32* @dboxflg, align 4
  %.not3 = icmp eq i32 %33, 0
  br i1 %.not3, label %37, label %34

34:                                               ; preds = %32
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %46

37:                                               ; preds = %34, %32
  %38 = load i32, i32* @allflg, align 4
  %.not4 = icmp eq i32 %38, 0
  br i1 %.not4, label %40, label %39

39:                                               ; preds = %37
  br label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @boxflg, align 4
  %.not5 = icmp eq i32 %41, 0
  br i1 %.not5, label %45, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %1, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %46

45:                                               ; preds = %42, %40
  br label %46

46:                                               ; preds = %45, %44, %39, %36, %31, %20
  %.0 = phi i32 [ 0, %20 ], [ %29, %31 ], [ 2, %36 ], [ 1, %39 ], [ 1, %44 ], [ 0, %45 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @next(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %16, %1
  %.0 = phi i32 [ %0, %1 ], [ %7, %16 ]
  %3 = add nsw i32 %.0, 1
  %4 = load i32, i32* @nlin, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %2
  %7 = add nsw i32 %.0, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %16

11:                                               ; preds = %6
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %.not2 = icmp eq i8* %14, null
  br i1 %.not2, label %15, label %16

15:                                               ; preds = %11
  br label %17

16:                                               ; preds = %11, %6
  br label %2, !llvm.loop !19

.loopexit:                                        ; preds = %2
  br label %17

17:                                               ; preds = %.loopexit, %15
  %.1 = phi i32 [ %7, %15 ], [ %.0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
