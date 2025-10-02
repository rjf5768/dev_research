; ModuleID = './t3.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstr = type { i8*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@options = dso_local global [21 x %struct.optstr] zeroinitializer, align 16
@expflg = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"EXPAND\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@ctrflg = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@boxflg = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"allbox\00", align 1
@allflg = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"ALLBOX\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"doublebox\00", align 1
@dboxflg = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"DOUBLEBOX\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"doubleframe\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"DOUBLEFRAME\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@tab = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"linesize\00", align 1
@linsize = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"LINESIZE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"delim\00", align 1
@delim1 = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"DELIM\00", align 1
@texstr = external dso_local global [0 x i8], align 1
@texct = external dso_local global i32, align 4
@texname = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Misspelled global option\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c".nr %d %s\0A\00", align 1
@delim2 = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"Illegal option\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @init_options() #0 {
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0, i32 0), align 16
  store i32* @expflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 1, i32 0), align 16
  store i32* @expflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 1, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 2, i32 0), align 16
  store i32* @ctrflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 2, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 3, i32 0), align 16
  store i32* @ctrflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 3, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 4, i32 0), align 16
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 4, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 5, i32 0), align 16
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 5, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 6, i32 0), align 16
  store i32* @allflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 6, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 7, i32 0), align 16
  store i32* @allflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 7, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 8, i32 0), align 16
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 8, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 9, i32 0), align 16
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 9, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 10, i32 0), align 16
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 10, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 11, i32 0), align 16
  store i32* @boxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 11, i32 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 12, i32 0), align 16
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 12, i32 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 13, i32 0), align 16
  store i32* @dboxflg, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 13, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 14, i32 0), align 16
  store i32* @tab, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 14, i32 1), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 15, i32 0), align 16
  store i32* @tab, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 15, i32 1), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 16, i32 0), align 16
  store i32* @linsize, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 16, i32 1), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 17, i32 0), align 16
  store i32* @linsize, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 17, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 18, i32 0), align 16
  store i32* @delim1, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 18, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 19, i32 0), align 16
  store i32* @delim1, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 19, i32 1), align 8
  store i8* null, i8** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 20, i32 0), align 16
  store i32* null, i32** getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 20, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getcomm() #1 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [25 x i8], align 16
  br label %3

3:                                                ; preds = %9, %0
  %.03 = phi %struct.optstr* [ getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0), %0 ], [ %10, %9 ]
  %4 = getelementptr inbounds %struct.optstr, %struct.optstr* %.03, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.optstr, %struct.optstr* %.03, i64 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.optstr, %struct.optstr* %.03, i64 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  store i32 0, i32* @texct, align 4
  %12 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @texstr, i64 0, i64 0), align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* @texname, align 4
  store i32 9, i32* @tab, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 33) #4
  %15 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  %16 = call i8* @gets1(i8* noundef nonnull %15) #4
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  %18 = call i8* @strchr(i8* noundef nonnull %17, i32 noundef 59) #5
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  call void @backrest(i8* noundef nonnull %21)
  br label %112

22:                                               ; preds = %11
  %23 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  br label %24

24:                                               ; preds = %108, %22
  %.0 = phi i8* [ %23, %22 ], [ %109, %108 ]
  %25 = load i8, i8* %.0, align 1
  %.not7 = icmp eq i8 %25, 59
  br i1 %.not7, label %110, label %26

26:                                               ; preds = %24
  %27 = sext i8 %25 to i32
  %28 = call i32 @letter(i32 noundef %27) #4
  %.not8 = icmp eq i32 %28, 0
  br i1 %.not8, label %29, label %30

29:                                               ; preds = %26
  br label %108

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %103, %30
  %.14 = phi %struct.optstr* [ getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0), %30 ], [ %104, %103 ]
  %32 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %.not9 = icmp eq i32* %33, null
  br i1 %.not9, label %.loopexit, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @prefix(i8* noundef %36, i8* noundef nonnull %.0) #4
  %.not11 = icmp eq i32 %37, 0
  br i1 %.not11, label %102, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #5
  %44 = getelementptr inbounds i8, i8* %.0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @letter(i32 noundef %46) #4
  %.not12 = icmp eq i32 %47, 0
  br i1 %.not12, label %49, label %48

48:                                               ; preds = %38
  call void @error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #4
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %53, %49
  %.1 = phi i8* [ %44, %49 ], [ %54, %53 ]
  %51 = load i8, i8* %.1, align 1
  %52 = icmp eq i8 %51, 32
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %50, !llvm.loop !6

55:                                               ; preds = %50
  %56 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %57 = load i8, i8* %.1, align 1
  %58 = icmp eq i8 %57, 40
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %63, %59
  %.01 = phi i8* [ %56, %59 ], [ %64, %63 ]
  %.2 = phi i8* [ %.1, %59 ], [ %61, %63 ]
  %61 = getelementptr inbounds i8, i8* %.2, i64 1
  %62 = load i8, i8* %61, align 1
  %.not14 = icmp eq i8 %62, 41
  br i1 %.not14, label %65, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %62, i8* %.01, align 1
  br label %60, !llvm.loop !7

65:                                               ; preds = %60
  br label %68

66:                                               ; preds = %55
  %67 = getelementptr inbounds i8, i8* %.1, i64 -1
  br label %68

68:                                               ; preds = %66, %65
  %.12 = phi i8* [ %.01, %65 ], [ %56, %66 ]
  %.3 = phi i8* [ %61, %65 ], [ %67, %66 ]
  %69 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 0, i8* %.12, align 1
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, @tab
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %75 = load i8, i8* %74, align 16
  %.not13 = icmp eq i8 %75, 0
  br i1 %.not13, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %78 = load i8, i8* %77, align 16
  %79 = sext i8 %78 to i32
  %80 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %73
  br label %83

83:                                               ; preds = %82, %68
  %84 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, @linsize
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef 33, i8* noundef nonnull %88) #4
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, @delim1
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %96 = load i8, i8* %95, align 16
  %97 = sext i8 %96 to i32
  store i32 %97, i32* @delim1, align 4
  %98 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  store i32 %100, i32* @delim2, align 4
  br label %101

101:                                              ; preds = %94, %90
  br label %105

102:                                              ; preds = %34
  br label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.optstr, %struct.optstr* %.14, i64 1
  br label %31, !llvm.loop !8

.loopexit:                                        ; preds = %31
  br label %105

105:                                              ; preds = %.loopexit, %101
  %.4 = phi i8* [ %.3, %101 ], [ %.0, %.loopexit ]
  br i1 %.not9, label %106, label %107

106:                                              ; preds = %105
  call void @error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %29
  %.5 = phi i8* [ %.4, %107 ], [ %.0, %29 ]
  %109 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %24, !llvm.loop !9

110:                                              ; preds = %24
  %111 = getelementptr inbounds i8, i8* %.0, i64 1
  call void @backrest(i8* noundef nonnull %111)
  br label %112

112:                                              ; preds = %110, %20
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i8* @gets1(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @backrest(i8* noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i8* [ %0, %1 ], [ %6, %5 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !10

7:                                                ; preds = %2
  call void @un1getc(i32 noundef 10) #4
  br label %8

8:                                                ; preds = %10, %7
  %.1 = phi i8* [ %.0, %7 ], [ %11, %10 ]
  %9 = icmp ugt i8* %.1, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %.1, i64 -1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @un1getc(i32 noundef %13) #4
  br label %8, !llvm.loop !11

14:                                               ; preds = %8
  ret void
}

declare dso_local i32 @letter(i32 noundef) #2

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @error(i8* noundef) #2

declare dso_local void @un1getc(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
