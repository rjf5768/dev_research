; ModuleID = './t4.ll'
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
  br label %1

1:                                                ; preds = %34, %0
  %.0 = phi i32 [ 0, %0 ], [ %35, %34 ]
  %2 = icmp ult i32 %.0, 20
  br i1 %2, label %3, label %36

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %4
  store i32 -1, i32* %5, align 4
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %6
  store i32 0, i32* %7, align 4
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %8, i64 0
  store i8 0, i8* %9, align 2
  br label %10

10:                                               ; preds = %31, %3
  %.01 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %11 = icmp ult i32 %.01, 100
  br i1 %11, label %12, label %33

12:                                               ; preds = %10
  %13 = zext i32 %.01 to i64
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %13, i64 %14, i64 0
  store i8 0, i8* %15, align 4
  %16 = zext i32 %.01 to i64
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %16, i64 %17, i64 0
  store i8 0, i8* %18, align 4
  %19 = zext i32 %.01 to i64
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %19, i64 %20
  store i32 0, i32* %21, align 4
  %22 = zext i32 %.01 to i64
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %22, i64 %23, i64 0
  store i8 0, i8* %24, align 2
  %25 = zext i32 %.01 to i64
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = zext i32 %.01 to i64
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %28, i64 %29
  store i32 108, i32* %30, align 4
  br label %31

31:                                               ; preds = %12
  %32 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !4

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

36:                                               ; preds = %1
  store i32 0, i32* @ncol, align 4
  store i32 0, i32* @nclin, align 4
  store i32 0, i32* @oncol, align 4
  store i32 0, i32* @rightl, align 4
  store i32 0, i32* @left1flg, align 4
  call void @readspec()
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %37)
  br label %39

39:                                               ; preds = %46, %36
  %.1 = phi i32 [ 0, %36 ], [ %47, %46 ]
  %40 = load i32, i32* @ncol, align 4
  %41 = icmp slt i32 %.1, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %44 = add nuw nsw i32 %.1, 80
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %44) #4
  br label %46

46:                                               ; preds = %42
  %47 = add nuw nsw i32 %.1, 1
  br label %39, !llvm.loop !7

48:                                               ; preds = %39
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @readspec() #0 {
  %1 = alloca [10 x i8], align 1
  br label %2

2:                                                ; preds = %.backedge, %0
  %.03 = phi i32 [ 0, %0 ], [ %.03.be, %.backedge ]
  %.0 = phi i32 [ 0, %0 ], [ %.0.be, %.backedge ]
  %3 = call i32 @get1char() #4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %405, label %4

4:                                                ; preds = %2
  switch i32 %3, label %5 [
    i32 32, label %9
    i32 10, label %10
    i32 44, label %14
    i32 46, label %14
    i32 67, label %89
    i32 83, label %89
    i32 82, label %89
    i32 78, label %89
    i32 76, label %89
    i32 65, label %89
    i32 95, label %91
    i32 61, label %95
    i32 45, label %95
    i32 94, label %95
    i32 99, label %95
    i32 115, label %95
    i32 110, label %95
    i32 114, label %95
    i32 108, label %95
    i32 97, label %95
    i32 98, label %151
    i32 105, label %151
    i32 66, label %153
    i32 73, label %153
    i32 116, label %165
    i32 84, label %165
    i32 100, label %174
    i32 68, label %174
    i32 102, label %183
    i32 70, label %183
    i32 80, label %237
    i32 112, label %237
    i32 86, label %284
    i32 118, label %284
    i32 119, label %327
    i32 87, label %327
    i32 101, label %366
    i32 69, label %366
    i32 48, label %373
    i32 49, label %373
    i32 50, label %373
    i32 51, label %373
    i32 52, label %373
    i32 53, label %373
    i32 54, label %373
    i32 55, label %373
    i32 56, label %373
    i32 57, label %373
    i32 124, label %395
  ]

5:                                                ; preds = %4
  %6 = load i32, i32* @tab, align 4
  %.not71 = icmp eq i32 %3, %6
  br i1 %.not71, label %8, label %7

7:                                                ; preds = %5
  call void @error(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %8

8:                                                ; preds = %7, %5
  br label %9

9:                                                ; preds = %8, %4
  br label %.backedge

.backedge:                                        ; preds = %9, %12, %88, %150, %155, %156, %173, %182, %185, %236, %239, %283, %286, %326, %365, %368, %369, %384, %404
  %.03.be = phi i32 [ %.03, %9 ], [ %.03, %404 ], [ %.03, %384 ], [ %.03, %368 ], [ %.03, %369 ], [ %.03, %365 ], [ %.03, %286 ], [ %.03, %326 ], [ %.03, %239 ], [ %.03, %283 ], [ %.03, %185 ], [ %.03, %236 ], [ %.03, %182 ], [ %.03, %173 ], [ %.03, %155 ], [ %.03, %156 ], [ 1, %150 ], [ 0, %88 ], [ %.03, %12 ]
  %.0.be = phi i32 [ %.0, %9 ], [ %.0, %404 ], [ %.0, %384 ], [ %.0, %368 ], [ %.0, %369 ], [ %.0, %365 ], [ %.0, %286 ], [ %.0, %326 ], [ %.0, %239 ], [ %.0, %283 ], [ %.0, %185 ], [ %.0, %236 ], [ %.0, %182 ], [ %.0, %173 ], [ %.0, %155 ], [ %.0, %156 ], [ %141, %150 ], [ 0, %88 ], [ %.0, %12 ]
  br label %2, !llvm.loop !8

10:                                               ; preds = %4
  %11 = icmp eq i32 %.03, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %.backedge

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %4, %4
  %15 = load i32, i32* @ncol, align 4
  %16 = call i32 @max(i32 noundef %15, i32 noundef %.0) #4
  store i32 %16, i32* @ncol, align 4
  %17 = load i32, i32* @nclin, align 4
  %18 = sext i32 %17 to i64
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* @ncol, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @ncol, align 4
  %26 = load i32, i32* @rightl, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @rightl, align 4
  br label %28

28:                                               ; preds = %23, %14
  %.not67 = icmp eq i32 %.03, 0
  br i1 %.not67, label %32, label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @nclin, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nclin, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, i32* @nclin, align 4
  %34 = icmp sgt i32 %33, 99
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* @ncol, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @nclin, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  call void @error(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %43

43:                                               ; preds = %42, %39
  %44 = icmp eq i32 %3, 46
  br i1 %44, label %45, label %88

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %55, %45
  %47 = call i32 @get1char() #4
  %.not68 = icmp eq i32 %47, 0
  br i1 %.not68, label %50, label %48

48:                                               ; preds = %46
  %49 = icmp ne i32 %47, 10
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i1 [ false, %46 ], [ %49, %48 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %.not69 = icmp eq i32 %47, 32
  br i1 %.not69, label %55, label %53

53:                                               ; preds = %52
  %.not70 = icmp eq i32 %47, 9
  br i1 %.not70, label %55, label %54

54:                                               ; preds = %53
  call void @error(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %55

55:                                               ; preds = %54, %53, %52
  br label %46, !llvm.loop !9

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %73, %56
  %.1 = phi i32 [ 0, %56 ], [ %74, %73 ]
  %58 = load i32, i32* @ncol, align 4
  %59 = icmp slt i32 %.1, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = zext i32 %.1 to i64
  %62 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = add nuw nsw i32 %.1, 1
  %67 = load i32, i32* @ncol, align 4
  %68 = icmp slt i32 %66, %67
  %69 = select i1 %68, i32 3, i32 1
  %70 = zext i32 %.1 to i64
  %71 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %70
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %.1, 1
  br label %57, !llvm.loop !10

75:                                               ; preds = %57
  %76 = load i32, i32* @oncol, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @ncol, align 4
  store i32 %79, i32* @oncol, align 4
  br label %87

80:                                               ; preds = %75
  %81 = load i32, i32* @oncol, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* @ncol, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  call void @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0)) #4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %78
  br label %406

88:                                               ; preds = %43
  br label %.backedge

89:                                               ; preds = %4, %4, %4, %4, %4, %4
  %90 = add nsw i32 %3, 32
  br label %91

91:                                               ; preds = %89, %4
  %.01 = phi i32 [ %3, %4 ], [ %90, %89 ]
  %92 = icmp eq i32 %.01, 95
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %91
  %.12 = phi i32 [ 45, %93 ], [ %.01, %91 ]
  br label %95

95:                                               ; preds = %94, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %.2 = phi i32 [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %3, %4 ], [ %.12, %94 ]
  %96 = load i32, i32* @nclin, align 4
  %97 = sext i32 %96 to i64
  %98 = sext i32 %.0 to i64
  %99 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %97, i64 %98
  store i32 %.2, i32* %99, align 4
  %100 = icmp eq i32 %.2, 115
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = icmp slt i32 %.0, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  call void @error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %104

104:                                              ; preds = %103, %101, %95
  %105 = icmp eq i32 %.2, 115
  br i1 %105, label %106, label %122

106:                                              ; preds = %104
  %107 = load i32, i32* @nclin, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i32 %.0, -1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 97
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %116 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %115)
  %117 = load i32, i32* @nclin, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i32 %.0, -1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %118, i64 %120
  store i32 108, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %106, %104
  %123 = icmp eq i32 %.2, 115
  br i1 %123, label %124, label %140

124:                                              ; preds = %122
  %125 = load i32, i32* @nclin, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i32 %.0, -1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 110
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %134 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %133)
  %135 = load i32, i32* @nclin, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i32 %.0, -1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %136, i64 %138
  store i32 99, i32* %139, align 4
  br label %140

140:                                              ; preds = %132, %124, %122
  %141 = add nsw i32 %.0, 1
  %142 = icmp eq i32 %.2, 94
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @nclin, align 4
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @error(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %147

147:                                              ; preds = %146, %143, %140
  %148 = icmp sgt i32 %.0, 18
  br i1 %148, label %149, label %150

149:                                              ; preds = %147
  call void @error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %150

150:                                              ; preds = %149, %147
  br label %.backedge

151:                                              ; preds = %4, %4
  %152 = add nsw i32 %3, -32
  br label %153

153:                                              ; preds = %151, %4, %4
  %.3 = phi i32 [ %3, %4 ], [ %3, %4 ], [ %152, %151 ]
  %154 = icmp eq i32 %.0, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %153
  br label %.backedge

156:                                              ; preds = %153
  %157 = load i32, i32* @nclin, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i32 %.0, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %158, i64 %160, i64 0
  %162 = icmp eq i32 %.3, 73
  %163 = select i1 %162, i8 50, i8 51
  store i8 %163, i8* %161, align 2
  %164 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %158, i64 %160, i64 1
  store i8 0, i8* %164, align 1
  br label %.backedge

165:                                              ; preds = %4, %4
  %166 = icmp sgt i32 %.0, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %165
  %168 = load i32, i32* @nclin, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i32 %.0, -1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %169, i64 %171
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %167, %165
  br label %.backedge

174:                                              ; preds = %4, %4
  %175 = icmp sgt i32 %.0, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %174
  %177 = load i32, i32* @nclin, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i32 %.0, -1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %178, i64 %180
  store i32 -1, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %174
  br label %.backedge

183:                                              ; preds = %4, %4
  %184 = icmp eq i32 %.0, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  br label %.backedge

186:                                              ; preds = %183
  %187 = load i32, i32* @nclin, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i32 %.0, -1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %188, i64 %190, i64 0
  %192 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %188, i64 %190, i64 1
  store i8 0, i8* %192, align 1
  store i8 0, i8* %191, align 2
  br label %193

193:                                              ; preds = %229, %186
  %.08 = phi i32 [ 0, %186 ], [ %230, %229 ]
  %.04 = phi i32 [ 0, %186 ], [ %.15, %229 ]
  %194 = icmp ult i32 %.08, 2
  br i1 %194, label %195, label %.loopexit

195:                                              ; preds = %193
  %196 = call i32 @get1char() #4
  %197 = icmp eq i32 %.08, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = icmp eq i32 %196, 40
  br i1 %199, label %200, label %202

200:                                              ; preds = %198
  %201 = call i32 @get1char() #4
  br label %202

202:                                              ; preds = %200, %198, %195
  %.15 = phi i32 [ 41, %200 ], [ %.04, %198 ], [ %.04, %195 ]
  %.4 = phi i32 [ %201, %200 ], [ %196, %198 ], [ %196, %195 ]
  %203 = icmp eq i32 %.4, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %202
  br label %231

205:                                              ; preds = %202
  %206 = icmp eq i32 %.4, %.15
  br i1 %206, label %207, label %208

207:                                              ; preds = %205
  br label %231

208:                                              ; preds = %205
  %209 = icmp eq i32 %.15, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = icmp eq i32 %.4, 32
  br i1 %211, label %215, label %212

212:                                              ; preds = %210
  %213 = load i32, i32* @tab, align 4
  %214 = icmp eq i32 %.4, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %210
  br label %231

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %208
  %218 = icmp eq i32 %.4, 10
  br i1 %218, label %219, label %220

219:                                              ; preds = %217
  call void @un1getc(i32 noundef %.4) #4
  br label %231

220:                                              ; preds = %217
  %221 = trunc i32 %.4 to i8
  %222 = zext i32 %.08 to i64
  %223 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %188, i64 %190, i64 %222
  store i8 %221, i8* %223, align 1
  %224 = icmp sgt i32 %.4, 47
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = icmp slt i32 %.4, 58
  br i1 %226, label %227, label %228

227:                                              ; preds = %225
  br label %231

228:                                              ; preds = %225, %220
  br label %229

229:                                              ; preds = %228
  %230 = add nuw nsw i32 %.08, 1
  br label %193, !llvm.loop !11

.loopexit:                                        ; preds = %193
  br label %231

231:                                              ; preds = %.loopexit, %227, %219, %215, %207, %204
  %.26 = phi i32 [ %.15, %204 ], [ 0, %207 ], [ %.15, %215 ], [ %.15, %219 ], [ %.15, %227 ], [ %.04, %.loopexit ]
  %.not65 = icmp eq i32 %.26, 0
  br i1 %.not65, label %236, label %232

232:                                              ; preds = %231
  %233 = call i32 @get1char() #4
  %.not66 = icmp eq i32 %233, %.26
  br i1 %.not66, label %235, label %234

234:                                              ; preds = %232
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %235

235:                                              ; preds = %234, %232
  br label %236

236:                                              ; preds = %235, %231
  br label %.backedge

237:                                              ; preds = %4, %4
  %238 = icmp slt i32 %.0, 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %237
  br label %.backedge

240:                                              ; preds = %237
  %241 = load i32, i32* @nclin, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i32 %.0, -1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %242, i64 %244, i64 0
  br label %246

246:                                              ; preds = %278, %240
  %.09 = phi i8* [ %245, %240 ], [ %.110, %278 ]
  %247 = call i32 @get1char() #4
  %.not63 = icmp eq i32 %247, 0
  br i1 %.not63, label %.loopexit14, label %248

248:                                              ; preds = %246
  %249 = icmp eq i32 %247, 32
  br i1 %249, label %255, label %250

250:                                              ; preds = %248
  %251 = load i32, i32* @tab, align 4
  %252 = icmp eq i32 %247, %251
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = icmp eq i32 %247, 10
  br i1 %254, label %255, label %256

255:                                              ; preds = %253, %250, %248
  br label %279

256:                                              ; preds = %253
  %257 = icmp eq i32 %247, 45
  br i1 %257, label %260, label %258

258:                                              ; preds = %256
  %259 = icmp eq i32 %247, 43
  br i1 %259, label %260, label %266

260:                                              ; preds = %258, %256
  %261 = icmp ugt i8* %.09, %245
  br i1 %261, label %262, label %263

262:                                              ; preds = %260
  br label %279

263:                                              ; preds = %260
  %264 = trunc i32 %247 to i8
  store i8 %264, i8* %.09, align 1
  br label %265

265:                                              ; preds = %263
  br label %272

266:                                              ; preds = %258
  %267 = call i32 @digit(i32 noundef %247) #4
  %.not64 = icmp eq i32 %267, 0
  br i1 %.not64, label %270, label %268

268:                                              ; preds = %266
  %269 = trunc i32 %247 to i8
  store i8 %269, i8* %.09, align 1
  br label %271

270:                                              ; preds = %266
  br label %279

271:                                              ; preds = %268
  br label %272

272:                                              ; preds = %271, %265
  %.110 = getelementptr inbounds i8, i8* %.09, i64 1
  %273 = ptrtoint i8* %.110 to i64
  %274 = ptrtoint i8* %245 to i64
  %275 = sub i64 %273, %274
  %276 = icmp sgt i64 %275, 4
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  call void @error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %278

278:                                              ; preds = %277, %272
  br label %246, !llvm.loop !12

.loopexit14:                                      ; preds = %246
  br label %279

279:                                              ; preds = %.loopexit14, %270, %262, %255
  store i8 0, i8* %.09, align 1
  %280 = call i32 @atoi(i8* noundef nonnull %245) #5
  %281 = icmp sgt i32 %280, 36
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call void @error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %283

283:                                              ; preds = %282, %279
  call void @un1getc(i32 noundef %247) #4
  br label %.backedge

284:                                              ; preds = %4, %4
  %285 = icmp slt i32 %.0, 1
  br i1 %285, label %286, label %287

286:                                              ; preds = %284
  br label %.backedge

287:                                              ; preds = %284
  %288 = load i32, i32* @nclin, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i32 %.0, -1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %289, i64 %291, i64 0
  br label %293

293:                                              ; preds = %325, %287
  %.211 = phi i8* [ %292, %287 ], [ %.312, %325 ]
  %294 = call i32 @get1char() #4
  %.not61 = icmp eq i32 %294, 0
  br i1 %.not61, label %.loopexit15, label %295

295:                                              ; preds = %293
  %296 = icmp eq i32 %294, 32
  br i1 %296, label %302, label %297

297:                                              ; preds = %295
  %298 = load i32, i32* @tab, align 4
  %299 = icmp eq i32 %294, %298
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = icmp eq i32 %294, 10
  br i1 %301, label %302, label %303

302:                                              ; preds = %300, %297, %295
  br label %326

303:                                              ; preds = %300
  %304 = icmp eq i32 %294, 45
  br i1 %304, label %307, label %305

305:                                              ; preds = %303
  %306 = icmp eq i32 %294, 43
  br i1 %306, label %307, label %313

307:                                              ; preds = %305, %303
  %308 = icmp ugt i8* %.211, %292
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  br label %326

310:                                              ; preds = %307
  %311 = trunc i32 %294 to i8
  store i8 %311, i8* %.211, align 1
  br label %312

312:                                              ; preds = %310
  br label %319

313:                                              ; preds = %305
  %314 = call i32 @digit(i32 noundef %294) #4
  %.not62 = icmp eq i32 %314, 0
  br i1 %.not62, label %317, label %315

315:                                              ; preds = %313
  %316 = trunc i32 %294 to i8
  store i8 %316, i8* %.211, align 1
  br label %318

317:                                              ; preds = %313
  br label %326

318:                                              ; preds = %315
  br label %319

319:                                              ; preds = %318, %312
  %.312 = getelementptr inbounds i8, i8* %.211, i64 1
  %320 = ptrtoint i8* %.312 to i64
  %321 = ptrtoint i8* %292 to i64
  %322 = sub i64 %320, %321
  %323 = icmp sgt i64 %322, 4
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  call void @error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0)) #4
  br label %325

325:                                              ; preds = %324, %319
  br label %293, !llvm.loop !13

.loopexit15:                                      ; preds = %293
  br label %326

326:                                              ; preds = %.loopexit15, %317, %309, %302
  store i8 0, i8* %.211, align 1
  call void @un1getc(i32 noundef %294) #4
  br label %.backedge

327:                                              ; preds = %4, %4
  %328 = add nsw i32 %.0, -1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %329, i64 0
  br label %.outer

.outer:                                           ; preds = %351, %327
  %.413.ph = phi i8* [ %353, %351 ], [ %330, %327 ]
  %.37.ph = phi i32 [ %.37, %351 ], [ 0, %327 ]
  br label %331

331:                                              ; preds = %.outer, %340
  %.37 = phi i32 [ 41, %340 ], [ %.37.ph, %.outer ]
  %332 = call i32 @get1char() #4
  %.not57 = icmp eq i32 %332, 0
  br i1 %.not57, label %.loopexit16, label %333

333:                                              ; preds = %331
  %334 = add nsw i32 %.0, -1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %335, i64 0
  %337 = icmp eq i8* %.413.ph, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %333
  %339 = icmp eq i32 %332, 40
  br i1 %339, label %340, label %341

340:                                              ; preds = %338
  br label %331, !llvm.loop !14

341:                                              ; preds = %338, %333
  %.not59 = icmp eq i32 %.37, 0
  br i1 %.not59, label %342, label %347

342:                                              ; preds = %341
  %343 = icmp sgt i32 %332, 57
  br i1 %343, label %346, label %344

344:                                              ; preds = %342
  %345 = icmp slt i32 %332, 48
  br i1 %345, label %346, label %347

346:                                              ; preds = %344, %342
  br label %354

347:                                              ; preds = %344, %341
  %.not60 = icmp eq i32 %.37, 0
  br i1 %.not60, label %351, label %348

348:                                              ; preds = %347
  %349 = icmp eq i32 %332, %.37
  br i1 %349, label %350, label %351

350:                                              ; preds = %348
  br label %354

351:                                              ; preds = %348, %347
  %352 = trunc i32 %332 to i8
  %353 = getelementptr inbounds i8, i8* %.413.ph, i64 1
  store i8 %352, i8* %.413.ph, align 1
  br label %.outer, !llvm.loop !14

.loopexit16:                                      ; preds = %331
  br label %354

354:                                              ; preds = %.loopexit16, %350, %346
  %.3721 = phi i32 [ %.37, %.loopexit16 ], [ 1, %350 ], [ %.37, %346 ]
  store i8 0, i8* %.413.ph, align 1
  %355 = add nsw i32 %.0, -1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %356, i64 0
  %358 = ptrtoint i8* %.413.ph to i64
  %359 = ptrtoint i8* %357 to i64
  %360 = sub i64 %358, %359
  %361 = icmp sgt i64 %360, 10
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  call void @error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %363

363:                                              ; preds = %362, %354
  %.not58 = icmp eq i32 %.3721, 0
  br i1 %.not58, label %364, label %365

364:                                              ; preds = %363
  call void @un1getc(i32 noundef %332) #4
  br label %365

365:                                              ; preds = %364, %363
  br label %.backedge

366:                                              ; preds = %4, %4
  %367 = icmp slt i32 %.0, 1
  br i1 %367, label %368, label %369

368:                                              ; preds = %366
  br label %.backedge

369:                                              ; preds = %366
  %370 = add nsw i32 %.0, -1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %371
  store i32 1, i32* %372, align 4
  store i32 1, i32* @evenflg, align 4
  br label %.backedge

373:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %374 = trunc i32 %3 to i8
  %375 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  store i8 %374, i8* %375, align 1
  %376 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  br label %377

377:                                              ; preds = %382, %373
  %.5 = phi i8* [ %376, %373 ], [ %383, %382 ]
  %378 = call i32 @get1char() #4
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %.5, align 1
  %sext = shl i32 %378, 24
  %380 = ashr exact i32 %sext, 24
  %381 = call i32 @digit(i32 noundef %380) #4
  %.not56 = icmp eq i32 %381, 0
  br i1 %.not56, label %384, label %382

382:                                              ; preds = %377
  %383 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %377, !llvm.loop !15

384:                                              ; preds = %377
  call void @un1getc(i32 noundef %378) #4
  %385 = add nsw i32 %.0, -1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %390 = call i32 @numb(i8* noundef nonnull %389) #4
  %391 = call i32 @max(i32 noundef %388, i32 noundef %390) #4
  %392 = add nsw i32 %.0, -1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %393
  store i32 %391, i32* %394, align 4
  br label %.backedge

395:                                              ; preds = %4
  %396 = load i32, i32* @nclin, align 4
  %397 = sext i32 %396 to i64
  %398 = sext i32 %.0 to i64
  %399 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = icmp eq i32 %.0, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %395
  store i32 1, i32* @left1flg, align 4
  br label %404

404:                                              ; preds = %403, %395
  br label %.backedge

405:                                              ; preds = %2
  call void @error(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %406

406:                                              ; preds = %405, %87
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @get1char() #1

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @max(i32 noundef, i32 noundef) #1

declare dso_local void @un1getc(i32 noundef) #1

declare dso_local i32 @digit(i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @numb(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
