; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t4.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sep = external dso_local global [0 x i32], align 4
@evenup = external dso_local global [0 x i32], align 4
@cll = external dso_local global [20 x [10 x i8]], align 16
@csize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@vsize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@lefline = external dso_local global [100 x [20 x i32]], align 16
@font = external dso_local global [100 x [20 x [2 x i8]]], align 16
@ctop = external dso_local global [100 x [20 x i32]], align 16
@style = external dso_local global [100 x [20 x i32]], align 16
@ncol = external dso_local global i32, align 4
@nclin = external dso_local global i32, align 4
@oncol = dso_local global i32 0, align 4
@rightl = external dso_local global i32, align 4
@left1flg = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c".rm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@tab = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"bad table specification character\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"too many lines in specification\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no specification\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"dot not last character on format line\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"tried to widen table in T&, not allowed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"first column can not be S-type\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c".tm warning: can't span a-type cols, changed to l\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c".tm warning: can't span n-type cols, changed to c\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"first row can not contain vertical span\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"too many columns in table\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Nonterminated font name\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"point size too large\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"point size unreasonable\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"vertical spacing value too large\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"column width too long\00", align 1
@evenflg = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"EOF reading table specification\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getspec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %64, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 20
  br i1 %5, label %6, label %67

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %14
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %16, align 2
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %60, %6
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %22
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  store i8 0, i8* %27, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %29
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  store i8 0, i8* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %36
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %37, i64 0, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %42
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %43, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %46, i64 0, i64 0
  store i8 0, i8* %47, align 2
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %49
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %50, i64 0, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %55
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %56, i64 0, i64 %58
  store i32 108, i32* %59, align 4
  br label %60

60:                                               ; preds = %20
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %17, !llvm.loop !4

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %3, !llvm.loop !6

67:                                               ; preds = %3
  store i32 0, i32* @ncol, align 4
  store i32 0, i32* @nclin, align 4
  store i32 0, i32* @oncol, align 4
  store i32 0, i32* @rightl, align 4
  store i32 0, i32* @left1flg, align 4
  call void @readspec()
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %79, %67
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @ncol, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 80, %76
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %77)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %70, !llvm.loop !7

82:                                               ; preds = %70
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @readspec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %584, %558, %538, %537, %533, %468, %407, %402, %335, %331, %253, %249, %237, %208, %207, %200, %118, %24, %20, %0
  %10 = call i32 @get1char()
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %585

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %14 [
    i32 32, label %20
    i32 10, label %21
    i32 44, label %26
    i32 46, label %26
    i32 67, label %119
    i32 83, label %119
    i32 82, label %119
    i32 78, label %119
    i32 76, label %119
    i32 65, label %119
    i32 95, label %122
    i32 61, label %127
    i32 45, label %127
    i32 94, label %127
    i32 99, label %127
    i32 115, label %127
    i32 110, label %127
    i32 114, label %127
    i32 108, label %127
    i32 97, label %127
    i32 98, label %201
    i32 105, label %201
    i32 66, label %204
    i32 73, label %204
    i32 116, label %226
    i32 84, label %226
    i32 100, label %238
    i32 68, label %238
    i32 102, label %250
    i32 70, label %250
    i32 80, label %332
    i32 112, label %332
    i32 86, label %404
    i32 118, label %404
    i32 119, label %471
    i32 87, label %471
    i32 101, label %534
    i32 69, label %534
    i32 48, label %543
    i32 49, label %543
    i32 50, label %543
    i32 51, label %543
    i32 52, label %543
    i32 53, label %543
    i32 54, label %543
    i32 55, label %543
    i32 56, label %543
    i32 57, label %543
    i32 124, label %572
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @tab, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @error(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %12, %19
  br label %9, !llvm.loop !8

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %9, !llvm.loop !8

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %12, %12, %25
  %27 = load i32, i32* @ncol, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @max(i32 noundef %27, i32 noundef %28)
  store i32 %29, i32* @ncol, align 4
  %30 = load i32, i32* @nclin, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %31
  %33 = load i32, i32* @ncol, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load i32, i32* @ncol, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @ncol, align 4
  %41 = load i32, i32* @rightl, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @rightl, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @nclin, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @nclin, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @nclin, align 4
  %51 = icmp sge i32 %50, 100
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %52, %49
  store i32 0, i32* %1, align 4
  %54 = load i32, i32* @ncol, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @nclin, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  call void @error(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %118

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %79, %63
  %65 = call i32 @get1char()
  store i32 %65, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 10
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %80

72:                                               ; preds = %70
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 32
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 9
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @error(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %78, %75, %72
  br label %64, !llvm.loop !9

80:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @ncol, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @ncol, align 4
  %95 = icmp slt i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 3, i32 1
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %81, !llvm.loop !10

105:                                              ; preds = %81
  %106 = load i32, i32* @oncol, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @ncol, align 4
  store i32 %109, i32* @oncol, align 4
  br label %117

110:                                              ; preds = %105
  %111 = load i32, i32* @oncol, align 4
  %112 = add nsw i32 %111, 2
  %113 = load i32, i32* @ncol, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  call void @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116, %108
  br label %586

118:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %9, !llvm.loop !8

119:                                              ; preds = %12, %12, %12, %12, %12, %12
  %120 = load i32, i32* %2, align 4
  %121 = add nsw i32 %120, 32
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %12, %119
  %123 = load i32, i32* %2, align 4
  %124 = icmp eq i32 %123, 95
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 45, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %126
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @nclin, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %130
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [20 x i32], [20 x i32]* %131, i64 0, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* %2, align 4
  %136 = icmp eq i32 %135, 115
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load i32, i32* %1, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %141

141:                                              ; preds = %140, %137, %127
  %142 = load i32, i32* %2, align 4
  %143 = icmp eq i32 %142, 115
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i32, i32* @nclin, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %146
  %148 = load i32, i32* %1, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [20 x i32], [20 x i32]* %147, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 97
  br i1 %153, label %154, label %164

154:                                              ; preds = %144
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32, i32* @nclin, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %158
  %160 = load i32, i32* %1, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [20 x i32], [20 x i32]* %159, i64 0, i64 %162
  store i32 108, i32* %163, align 4
  br label %164

164:                                              ; preds = %154, %144, %141
  %165 = load i32, i32* %2, align 4
  %166 = icmp eq i32 %165, 115
  br i1 %166, label %167, label %187

167:                                              ; preds = %164
  %168 = load i32, i32* @nclin, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %169
  %171 = load i32, i32* %1, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [20 x i32], [20 x i32]* %170, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 110
  br i1 %176, label %177, label %187

177:                                              ; preds = %167
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %180 = load i32, i32* @nclin, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %181
  %183 = load i32, i32* %1, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [20 x i32], [20 x i32]* %182, i64 0, i64 %185
  store i32 99, i32* %186, align 4
  br label %187

187:                                              ; preds = %177, %167, %164
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %1, align 4
  %190 = load i32, i32* %2, align 4
  %191 = icmp eq i32 %190, 94
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* @nclin, align 4
  %194 = icmp sle i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  call void @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %196

196:                                              ; preds = %195, %192, %187
  %197 = load i32, i32* %1, align 4
  %198 = icmp sge i32 %197, 20
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call void @error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %200

200:                                              ; preds = %199, %196
  store i32 1, i32* %3, align 4
  br label %9, !llvm.loop !8

201:                                              ; preds = %12, %12
  %202 = load i32, i32* %2, align 4
  %203 = add nsw i32 %202, -32
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %12, %12, %201
  %205 = load i32, i32* %1, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %9, !llvm.loop !8

208:                                              ; preds = %204
  %209 = load i32, i32* @nclin, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %210
  %212 = load i32, i32* %1, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %211, i64 0, i64 %214
  %216 = getelementptr inbounds [2 x i8], [2 x i8]* %215, i64 0, i64 0
  store i8* %216, i8** %7, align 8
  %217 = load i32, i32* %2, align 4
  %218 = icmp eq i32 %217, 73
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 50, i32 51
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  store i8 %221, i8* %223, align 1
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8 0, i8* %225, align 1
  br label %9, !llvm.loop !8

226:                                              ; preds = %12, %12
  %227 = load i32, i32* %1, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32, i32* @nclin, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %231
  %233 = load i32, i32* %1, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [20 x i32], [20 x i32]* %232, i64 0, i64 %235
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %229, %226
  br label %9, !llvm.loop !8

238:                                              ; preds = %12, %12
  %239 = load i32, i32* %1, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load i32, i32* @nclin, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %243
  %245 = load i32, i32* %1, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [20 x i32], [20 x i32]* %244, i64 0, i64 %247
  store i32 -1, i32* %248, align 4
  br label %249

249:                                              ; preds = %241, %238
  br label %9, !llvm.loop !8

250:                                              ; preds = %12, %12
  %251 = load i32, i32* %1, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %9, !llvm.loop !8

254:                                              ; preds = %250
  %255 = load i32, i32* @nclin, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %256
  %258 = load i32, i32* %1, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %257, i64 0, i64 %260
  %262 = getelementptr inbounds [2 x i8], [2 x i8]* %261, i64 0, i64 0
  store i8* %262, i8** %7, align 8
  store i32 0, i32* %4, align 4
  %263 = load i8*, i8** %7, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  store i8 0, i8* %264, align 1
  %265 = load i8*, i8** %7, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  store i8 0, i8* %266, align 1
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %319, %254
  %268 = load i32, i32* %5, align 4
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %270, label %322

270:                                              ; preds = %267
  %271 = call i32 @get1char()
  store i32 %271, i32* %2, align 4
  %272 = load i32, i32* %5, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load i32, i32* %2, align 4
  %276 = icmp eq i32 %275, 40
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  store i32 41, i32* %4, align 4
  %278 = call i32 @get1char()
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %277, %274, %270
  %280 = load i32, i32* %2, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %322

283:                                              ; preds = %279
  %284 = load i32, i32* %2, align 4
  %285 = load i32, i32* %4, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %322

288:                                              ; preds = %283
  %289 = load i32, i32* %4, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load i32, i32* %2, align 4
  %293 = icmp eq i32 %292, 32
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %2, align 4
  %296 = load i32, i32* @tab, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %294, %291
  br label %322

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %288
  %301 = load i32, i32* %2, align 4
  %302 = icmp eq i32 %301, 10
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i32, i32* %2, align 4
  call void @un1getc(i32 noundef %304)
  br label %322

305:                                              ; preds = %300
  %306 = load i32, i32* %2, align 4
  %307 = trunc i32 %306 to i8
  %308 = load i8*, i8** %7, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  store i8 %307, i8* %311, align 1
  %312 = load i32, i32* %2, align 4
  %313 = icmp sge i32 %312, 48
  br i1 %313, label %314, label %318

314:                                              ; preds = %305
  %315 = load i32, i32* %2, align 4
  %316 = icmp sle i32 %315, 57
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %322

318:                                              ; preds = %314, %305
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %267, !llvm.loop !11

322:                                              ; preds = %317, %303, %298, %287, %282, %267
  %323 = load i32, i32* %4, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = call i32 @get1char()
  %327 = load i32, i32* %4, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %330

330:                                              ; preds = %329, %325
  br label %331

331:                                              ; preds = %330, %322
  br label %9, !llvm.loop !8

332:                                              ; preds = %12, %12
  %333 = load i32, i32* %1, align 4
  %334 = icmp sle i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  br label %9, !llvm.loop !8

336:                                              ; preds = %332
  %337 = load i32, i32* @nclin, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %338
  %340 = load i32, i32* %1, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %339, i64 0, i64 %342
  %344 = getelementptr inbounds [4 x i8], [4 x i8]* %343, i64 0, i64 0
  store i8* %344, i8** %7, align 8
  store i8* %344, i8** %8, align 8
  br label %345

345:                                              ; preds = %395, %336
  %346 = call i32 @get1char()
  store i32 %346, i32* %2, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %396

348:                                              ; preds = %345
  %349 = load i32, i32* %2, align 4
  %350 = icmp eq i32 %349, 32
  br i1 %350, label %358, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %2, align 4
  %353 = load i32, i32* @tab, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* %2, align 4
  %357 = icmp eq i32 %356, 10
  br i1 %357, label %358, label %359

358:                                              ; preds = %355, %351, %348
  br label %396

359:                                              ; preds = %355
  %360 = load i32, i32* %2, align 4
  %361 = icmp eq i32 %360, 45
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %2, align 4
  %364 = icmp eq i32 %363, 43
  br i1 %364, label %365, label %376

365:                                              ; preds = %362, %359
  %366 = load i8*, i8** %7, align 8
  %367 = load i8*, i8** %8, align 8
  %368 = icmp ugt i8* %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %365
  br label %396

370:                                              ; preds = %365
  %371 = load i32, i32* %2, align 4
  %372 = trunc i32 %371 to i8
  %373 = load i8*, i8** %7, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %7, align 8
  store i8 %372, i8* %373, align 1
  br label %375

375:                                              ; preds = %370
  br label %387

376:                                              ; preds = %362
  %377 = load i32, i32* %2, align 4
  %378 = call i32 @digit(i32 noundef %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = load i32, i32* %2, align 4
  %382 = trunc i32 %381 to i8
  %383 = load i8*, i8** %7, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %7, align 8
  store i8 %382, i8* %383, align 1
  br label %386

385:                                              ; preds = %376
  br label %396

386:                                              ; preds = %380
  br label %387

387:                                              ; preds = %386, %375
  %388 = load i8*, i8** %7, align 8
  %389 = load i8*, i8** %8, align 8
  %390 = ptrtoint i8* %388 to i64
  %391 = ptrtoint i8* %389 to i64
  %392 = sub i64 %390, %391
  %393 = icmp sgt i64 %392, 4
  br i1 %393, label %394, label %395

394:                                              ; preds = %387
  call void @error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %395

395:                                              ; preds = %394, %387
  br label %345, !llvm.loop !12

396:                                              ; preds = %385, %369, %358, %345
  %397 = load i8*, i8** %7, align 8
  store i8 0, i8* %397, align 1
  %398 = load i8*, i8** %8, align 8
  %399 = call i32 @atoi(i8* noundef %398) #3
  %400 = icmp sgt i32 %399, 36
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %402

402:                                              ; preds = %401, %396
  %403 = load i32, i32* %2, align 4
  call void @un1getc(i32 noundef %403)
  br label %9, !llvm.loop !8

404:                                              ; preds = %12, %12
  %405 = load i32, i32* %1, align 4
  %406 = icmp sle i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  br label %9, !llvm.loop !8

408:                                              ; preds = %404
  %409 = load i32, i32* @nclin, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %410
  %412 = load i32, i32* %1, align 4
  %413 = sub nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %411, i64 0, i64 %414
  %416 = getelementptr inbounds [4 x i8], [4 x i8]* %415, i64 0, i64 0
  store i8* %416, i8** %7, align 8
  store i8* %416, i8** %8, align 8
  br label %417

417:                                              ; preds = %467, %408
  %418 = call i32 @get1char()
  store i32 %418, i32* %2, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %468

420:                                              ; preds = %417
  %421 = load i32, i32* %2, align 4
  %422 = icmp eq i32 %421, 32
  br i1 %422, label %430, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %2, align 4
  %425 = load i32, i32* @tab, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %430, label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %2, align 4
  %429 = icmp eq i32 %428, 10
  br i1 %429, label %430, label %431

430:                                              ; preds = %427, %423, %420
  br label %468

431:                                              ; preds = %427
  %432 = load i32, i32* %2, align 4
  %433 = icmp eq i32 %432, 45
  br i1 %433, label %437, label %434

434:                                              ; preds = %431
  %435 = load i32, i32* %2, align 4
  %436 = icmp eq i32 %435, 43
  br i1 %436, label %437, label %448

437:                                              ; preds = %434, %431
  %438 = load i8*, i8** %7, align 8
  %439 = load i8*, i8** %8, align 8
  %440 = icmp ugt i8* %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  br label %468

442:                                              ; preds = %437
  %443 = load i32, i32* %2, align 4
  %444 = trunc i32 %443 to i8
  %445 = load i8*, i8** %7, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %7, align 8
  store i8 %444, i8* %445, align 1
  br label %447

447:                                              ; preds = %442
  br label %459

448:                                              ; preds = %434
  %449 = load i32, i32* %2, align 4
  %450 = call i32 @digit(i32 noundef %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %448
  %453 = load i32, i32* %2, align 4
  %454 = trunc i32 %453 to i8
  %455 = load i8*, i8** %7, align 8
  %456 = getelementptr inbounds i8, i8* %455, i32 1
  store i8* %456, i8** %7, align 8
  store i8 %454, i8* %455, align 1
  br label %458

457:                                              ; preds = %448
  br label %468

458:                                              ; preds = %452
  br label %459

459:                                              ; preds = %458, %447
  %460 = load i8*, i8** %7, align 8
  %461 = load i8*, i8** %8, align 8
  %462 = ptrtoint i8* %460 to i64
  %463 = ptrtoint i8* %461 to i64
  %464 = sub i64 %462, %463
  %465 = icmp sgt i64 %464, 4
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  call void @error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %467

467:                                              ; preds = %466, %459
  br label %417, !llvm.loop !13

468:                                              ; preds = %457, %441, %430, %417
  %469 = load i8*, i8** %7, align 8
  store i8 0, i8* %469, align 1
  %470 = load i32, i32* %2, align 4
  call void @un1getc(i32 noundef %470)
  br label %9, !llvm.loop !8

471:                                              ; preds = %12, %12
  %472 = load i32, i32* %1, align 4
  %473 = sub nsw i32 %472, 1
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %474
  %476 = getelementptr inbounds [10 x i8], [10 x i8]* %475, i64 0, i64 0
  store i8* %476, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %477

477:                                              ; preds = %510, %491, %471
  %478 = call i32 @get1char()
  store i32 %478, i32* %2, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %515

480:                                              ; preds = %477
  %481 = load i8*, i8** %7, align 8
  %482 = load i32, i32* %1, align 4
  %483 = sub nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %484
  %486 = getelementptr inbounds [10 x i8], [10 x i8]* %485, i64 0, i64 0
  %487 = icmp eq i8* %481, %486
  br i1 %487, label %488, label %492

488:                                              ; preds = %480
  %489 = load i32, i32* %2, align 4
  %490 = icmp eq i32 %489, 40
  br i1 %490, label %491, label %492

491:                                              ; preds = %488
  store i32 41, i32* %4, align 4
  br label %477, !llvm.loop !14

492:                                              ; preds = %488, %480
  %493 = load i32, i32* %4, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %502, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %2, align 4
  %497 = icmp sgt i32 %496, 57
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = load i32, i32* %2, align 4
  %500 = icmp slt i32 %499, 48
  br i1 %500, label %501, label %502

501:                                              ; preds = %498, %495
  br label %515

502:                                              ; preds = %498, %492
  %503 = load i32, i32* %4, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %502
  %506 = load i32, i32* %2, align 4
  %507 = load i32, i32* %4, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  br label %515

510:                                              ; preds = %505, %502
  %511 = load i32, i32* %2, align 4
  %512 = trunc i32 %511 to i8
  %513 = load i8*, i8** %7, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %7, align 8
  store i8 %512, i8* %513, align 1
  br label %477, !llvm.loop !14

515:                                              ; preds = %509, %501, %477
  %516 = load i8*, i8** %7, align 8
  store i8 0, i8* %516, align 1
  %517 = load i8*, i8** %7, align 8
  %518 = load i32, i32* %1, align 4
  %519 = sub nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %520
  %522 = getelementptr inbounds [10 x i8], [10 x i8]* %521, i64 0, i64 0
  %523 = ptrtoint i8* %517 to i64
  %524 = ptrtoint i8* %522 to i64
  %525 = sub i64 %523, %524
  %526 = icmp sgt i64 %525, 10
  br i1 %526, label %527, label %528

527:                                              ; preds = %515
  call void @error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %528

528:                                              ; preds = %527, %515
  %529 = load i32, i32* %4, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %528
  %532 = load i32, i32* %2, align 4
  call void @un1getc(i32 noundef %532)
  br label %533

533:                                              ; preds = %531, %528
  br label %9, !llvm.loop !8

534:                                              ; preds = %12, %12
  %535 = load i32, i32* %1, align 4
  %536 = icmp slt i32 %535, 1
  br i1 %536, label %537, label %538

537:                                              ; preds = %534
  br label %9, !llvm.loop !8

538:                                              ; preds = %534
  %539 = load i32, i32* %1, align 4
  %540 = sub nsw i32 %539, 1
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %541
  store i32 1, i32* %542, align 4
  store i32 1, i32* @evenflg, align 4
  br label %9, !llvm.loop !8

543:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %544 = load i32, i32* %2, align 4
  %545 = trunc i32 %544 to i8
  %546 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  store i8 %545, i8* %546, align 1
  %547 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  store i8* %548, i8** %7, align 8
  br label %549

549:                                              ; preds = %557, %543
  %550 = call i32 @get1char()
  store i32 %550, i32* %2, align 4
  %551 = trunc i32 %550 to i8
  %552 = load i8*, i8** %7, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %553, i8** %7, align 8
  store i8 %551, i8* %552, align 1
  %554 = sext i8 %551 to i32
  %555 = call i32 @digit(i32 noundef %554)
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %549
  br label %549, !llvm.loop !15

558:                                              ; preds = %549
  %559 = load i32, i32* %2, align 4
  call void @un1getc(i32 noundef %559)
  %560 = load i32, i32* %1, align 4
  %561 = sub nsw i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %566 = call i32 @numb(i8* noundef %565)
  %567 = call i32 @max(i32 noundef %564, i32 noundef %566)
  %568 = load i32, i32* %1, align 4
  %569 = sub nsw i32 %568, 1
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %570
  store i32 %567, i32* %571, align 4
  br label %9, !llvm.loop !8

572:                                              ; preds = %12
  %573 = load i32, i32* @nclin, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %574
  %576 = load i32, i32* %1, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [20 x i32], [20 x i32]* %575, i64 0, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %578, align 4
  %581 = load i32, i32* %1, align 4
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %572
  store i32 1, i32* @left1flg, align 4
  br label %584

584:                                              ; preds = %583, %572
  br label %9, !llvm.loop !8

585:                                              ; preds = %9
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %586

586:                                              ; preds = %585, %117
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @get1char() #1

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @max(i32 noundef, i32 noundef) #1

declare dso_local void @un1getc(i32 noundef) #1

declare dso_local i32 @digit(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @numb(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
