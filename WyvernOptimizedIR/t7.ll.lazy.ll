; ModuleID = './t7.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }

@boxflg = external dso_local global i32, align 4
@allflg = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@ctrflg = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c".nr #I \\n(.i\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c".in +(\\n(.lu-\\n(TWu-\\n(.iu)/2u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c".fc %c %c\0A\00", align 1
@F1 = external dso_local global i32, align 4
@F2 = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c".nr #T 0-1\0A\00", align 1
@nlin = external dso_local global i32, align 4
@leftover = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".nr T. 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".T# 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c".in \\n(#Iu\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".ta \00", align 1
@ncol = external dso_local global i32, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@lused = external dso_local global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"\\n(%du \00", align 1
@rused = external dso_local global [0 x i32], align 4
@used = external dso_local global [0 x i32], align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fullbot = external dso_local global [0 x i32], align 4
@instead = external dso_local global [0 x i8*], align 8
@.str.11 = private unnamed_addr constant [13 x i8] c".ne %dv+%dp\0A\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@.str.12 = private unnamed_addr constant [13 x i8] c".nr #%c 0-1\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c".nr #a 0-1\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c".de T#\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c".if \\(ts\\n(.z\\(ts\\(ts .ds #d nl\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c".nr ## -1v\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c".ls 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c".if \\n(#T>=0 .nr #%c \\n(#T\0A\00", align 1
@pr1403 = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c".if \\n(T. .vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c".if \\n(T. \00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"\0A.if \\n(T. .vs\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c".if \\n(#%c>=0 .sp -1\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c".if \\n(#%c>=0 \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"\\h'|\\n(TWu'\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c".if \\n(#a>=0 .sp -1\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c".if \\n(#a>=0 \\h'|\\n(TWu'\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c".ls\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c".ec\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runout() #0 {
  %1 = load i32, i32* @boxflg, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = load i32, i32* @allflg, align 4
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, i32* @dboxflg, align 4
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @need()
  br label %7

7:                                                ; preds = %6, %4
  %8 = load i32, i32* @ctrflg, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %14, label %9

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %12)
  br label %14

14:                                               ; preds = %9, %7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = load i32, i32* @F1, align 4
  %17 = load i32, i32* @F2, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %16, i32 noundef %17) #3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %19)
  call void @deftail()
  br label %21

21:                                               ; preds = %25, %14
  %.0 = phi i32 [ 0, %14 ], [ %26, %25 ]
  %22 = load i32, i32* @nlin, align 4
  %23 = icmp slt i32 %.0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  call void @putline(i32 noundef %.0, i32 noundef %.0) #3
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !4

27:                                               ; preds = %21
  %28 = load i32, i32* @leftover, align 4
  %.not4 = icmp eq i32 %28, 0
  br i1 %.not4, label %30, label %29

29:                                               ; preds = %27
  call void @yetmore() #3
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %35)
  %37 = load i32, i32* @ctrflg, align 4
  %.not5 = icmp eq i32 %37, 0
  br i1 %.not5, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %39)
  br label %41

41:                                               ; preds = %38, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @need() #0 {
  br label %1

1:                                                ; preds = %19, %0
  %.04 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %.01 = phi i32 [ 0, %0 ], [ %.23, %19 ]
  %.0 = phi i32 [ 0, %0 ], [ %.2, %19 ]
  %2 = load i32, i32* @nlin, align 4
  %3 = icmp slt i32 %.04, %2
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = zext i32 %.04 to i64
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.01, 1
  br label %18

10:                                               ; preds = %4
  %11 = zext i32 %.04 to i64
  %12 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %.not5 = icmp eq i8* %13, null
  br i1 %.not5, label %15, label %14

14:                                               ; preds = %10
  br label %19

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %.0, 1
  br label %18

18:                                               ; preds = %16, %8
  %.12 = phi i32 [ %9, %8 ], [ %.01, %16 ]
  %.1 = phi i32 [ %.0, %8 ], [ %17, %16 ]
  br label %19

19:                                               ; preds = %18, %14
  %.23 = phi i32 [ %.12, %18 ], [ %.01, %14 ]
  %.2 = phi i32 [ %.1, %18 ], [ %.0, %14 ]
  %20 = add nuw nsw i32 %.04, 1
  br label %1, !llvm.loop !6

21:                                               ; preds = %1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = shl nsw i32 %.01, 1
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.0, i32 noundef %23) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deftail() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %3 = icmp ult i32 %.0, 100
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %.not11 = icmp eq i32 %7, 0
  br i1 %.not11, label %15, label %8

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 96
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %13) #3
  br label %15

15:                                               ; preds = %8, %4
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

18:                                               ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %33)
  br label %35

35:                                               ; preds = %49, %18
  %.1 = phi i32 [ 0, %18 ], [ %50, %49 ]
  %36 = icmp ult i32 %.1, 100
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %.not10 = icmp eq i32 %40, 0
  br i1 %.not10, label %48, label %41

41:                                               ; preds = %37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %43 = zext i32 %.1 to i64
  %44 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 96
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 noundef %46) #3
  br label %48

48:                                               ; preds = %41, %37
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.1, 1
  br label %35, !llvm.loop !8

51:                                               ; preds = %35
  %52 = load i32, i32* @boxflg, align 4
  %.not = icmp eq i32 %52, 0
  br i1 %.not, label %53, label %57

53:                                               ; preds = %51
  %54 = load i32, i32* @allflg, align 4
  %.not2 = icmp eq i32 %54, 0
  br i1 %.not2, label %55, label %57

55:                                               ; preds = %53
  %56 = load i32, i32* @dboxflg, align 4
  %.not3 = icmp eq i32 %56, 0
  br i1 %.not3, label %79, label %57

57:                                               ; preds = %55, %53, %51
  %58 = load i32, i32* @nlin, align 4
  %59 = add nsw i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load i32, i32* @pr1403, align 4
  %.not8 = icmp eq i32 %65, 0
  br i1 %.not8, label %66, label %69

66:                                               ; preds = %64
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %68 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %67)
  br label %69

69:                                               ; preds = %66, %64
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %70)
  %72 = load i32, i32* @nlin, align 4
  %73 = load i32, i32* @ncol, align 4
  %74 = load i32, i32* @dboxflg, align 4
  %.not9 = icmp eq i32 %74, 0
  %75 = select i1 %.not9, i32 45, i32 61
  call void @drawline(i32 noundef %72, i32 noundef 0, i32 noundef %73, i32 noundef %75, i32 noundef 1, i32 noundef 0) #3
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %76)
  br label %78

78:                                               ; preds = %69, %57
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %107, %79
  %.01 = phi i32 [ 0, %79 ], [ %108, %107 ]
  %81 = load i32, i32* @ncol, align 4
  %82 = icmp slt i32 %.01, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* @nlin, align 4
  %85 = add nsw i32 %84, -1
  %86 = call i32 @left(i32 noundef %85, i32 noundef %.01, i32* noundef nonnull %1) #3
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 96
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 noundef %93) #3
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %96 = sext i32 %86 to i64
  %97 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 96
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i32 noundef %99) #3
  call void @tohcol(i32 noundef %.01) #3
  %101 = load i32, i32* @nlin, align 4
  %102 = add nsw i32 %101, -1
  %103 = load i32, i32* %1, align 4
  call void @drawvert(i32 noundef %86, i32 noundef %102, i32 noundef %.01, i32 noundef %103) #3
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %105 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %104)
  br label %106

106:                                              ; preds = %88, %83
  br label %107

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.01, 1
  br label %80, !llvm.loop !9

109:                                              ; preds = %80
  %110 = load i32, i32* @boxflg, align 4
  %.not4 = icmp eq i32 %110, 0
  br i1 %.not4, label %111, label %115

111:                                              ; preds = %109
  %112 = load i32, i32* @allflg, align 4
  %.not5 = icmp eq i32 %112, 0
  br i1 %.not5, label %113, label %115

113:                                              ; preds = %111
  %114 = load i32, i32* @dboxflg, align 4
  %.not6 = icmp eq i32 %114, 0
  br i1 %.not6, label %126, label %115

115:                                              ; preds = %113, %111, %109
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %119 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %118)
  %120 = load i32, i32* @nlin, align 4
  %121 = add nsw i32 %120, -1
  %122 = load i32, i32* @ncol, align 4
  %123 = load i32, i32* @dboxflg, align 4
  %.not7 = icmp eq i32 %123, 0
  %124 = select i1 %.not7, i32 1, i32 2
  call void @drawvert(i32 noundef 0, i32 noundef %121, i32 noundef %122, i32 noundef %124) #3
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %125)
  br label %126

126:                                              ; preds = %115, %113
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %128 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %127)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %130 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %131)
  ret void
}

declare dso_local void @putline(i32 noundef, i32 noundef) #1

declare dso_local void @yetmore() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runtabs(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %3)
  br label %5

5:                                                ; preds = %84, %2
  %.02 = phi i32 [ 0, %2 ], [ %85, %84 ]
  %6 = load i32, i32* @ncol, align 4
  %7 = icmp slt i32 %.02, %6
  br i1 %7, label %8, label %86

8:                                                ; preds = %5
  %9 = call i32 @prev(i32 noundef %0) #3
  br label %10

10:                                               ; preds = %24, %8
  %.01 = phi i32 [ %0, %8 ], [ %.0, %24 ]
  %.0 = phi i32 [ %9, %8 ], [ %25, %24 ]
  %11 = icmp sgt i32 %.0, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %13
  %15 = load %struct.colstr*, %struct.colstr** %14, align 8
  %16 = zext i32 %.02 to i64
  %17 = getelementptr inbounds %struct.colstr, %struct.colstr* %15, i64 %16, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @vspen(i8* noundef %18) #3
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %10
  %22 = phi i1 [ false, %10 ], [ %20, %12 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = call i32 @prev(i32 noundef %.0) #3
  br label %10, !llvm.loop !10

26:                                               ; preds = %21
  %27 = call i32 @fspan(i32 noundef %.01, i32 noundef %.02) #3
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %29, label %28

28:                                               ; preds = %26
  br label %84

29:                                               ; preds = %26
  %30 = call i32 @ctype(i32 noundef %.01, i32 noundef %.02) #3
  switch i32 %30, label %83 [
    i32 110, label %31
    i32 97, label %31
    i32 99, label %48
    i32 108, label %48
    i32 114, label %48
    i32 115, label %76
  ]

31:                                               ; preds = %29, %29
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %32
  %34 = load %struct.colstr*, %struct.colstr** %33, align 8
  %35 = zext i32 %.02 to i64
  %36 = getelementptr inbounds %struct.colstr, %struct.colstr* %34, i64 %35, i32 1
  %37 = load i8*, i8** %36, align 8
  %.not7 = icmp eq i8* %37, null
  br i1 %.not7, label %47, label %38

38:                                               ; preds = %31
  %39 = zext i32 %.02 to i64
  %40 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %.not8 = icmp eq i32 %41, 0
  br i1 %.not8, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %44 = add nuw nsw i32 %.02, 60
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %44) #3
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %29, %29, %29
  %49 = icmp eq i32 %30, 97
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = icmp eq i32 %30, 110
  br i1 %51, label %52, label %63

52:                                               ; preds = %50, %48
  %53 = sext i32 %1 to i64
  %54 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %53
  %55 = load %struct.colstr*, %struct.colstr** %54, align 8
  %56 = zext i32 %.02 to i64
  %57 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %56, i32 1
  %58 = load i8*, i8** %57, align 8
  %.not5 = icmp eq i8* %58, null
  br i1 %.not5, label %63, label %59

59:                                               ; preds = %52
  %60 = zext i32 %.02 to i64
  %61 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %.not6 = icmp eq i32 %62, 0
  br i1 %.not6, label %75, label %71

63:                                               ; preds = %52, %50
  %64 = zext i32 %.02 to i64
  %65 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %.02 to i64
  %68 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 0, %69
  %.not4 = icmp eq i32 %66, %70
  br i1 %.not4, label %75, label %71

71:                                               ; preds = %63, %59
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %73 = add nuw nsw i32 %.02, 80
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %73) #3
  br label %75

75:                                               ; preds = %71, %63, %59
  br label %84

76:                                               ; preds = %29
  %77 = call i32 @lspan(i32 noundef %0, i32 noundef %.02) #3
  %.not3 = icmp eq i32 %77, 0
  br i1 %.not3, label %82, label %78

78:                                               ; preds = %76
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %80 = add nuw nsw i32 %.02, 80
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %80) #3
  br label %82

82:                                               ; preds = %78, %76
  br label %84

83:                                               ; preds = %29
  br label %84

84:                                               ; preds = %83, %82, %75, %28
  %85 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !11

86:                                               ; preds = %5
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %87)
  ret void
}

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @fspan(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @lspan(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ifline(i8* noundef %0) #0 {
  %2 = ptrtoint i8* %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = call i32 @point(i32 noundef %3) #3
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load i8, i8* %0, align 1
  %8 = icmp eq i8 %7, 92
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  br label %11

11:                                               ; preds = %9, %6
  %.01 = phi i8* [ %10, %9 ], [ %0, %6 ]
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  %13 = load i8, i8* %12, align 1
  %.not2 = icmp eq i8 %13, 0
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %11
  br label %24

15:                                               ; preds = %11
  %16 = load i8, i8* %.01, align 1
  %17 = icmp eq i8 %16, 95
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15
  %20 = load i8, i8* %.01, align 1
  %21 = icmp eq i8 %20, 61
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %22, %18, %14, %5
  %.0 = phi i32 [ 0, %14 ], [ 45, %18 ], [ 61, %22 ], [ 0, %23 ], [ 0, %5 ]
  ret i32 %.0
}

declare dso_local i32 @point(i32 noundef) #1

declare dso_local void @drawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @left(i32 noundef, i32 noundef, i32* noundef) #1

declare dso_local void @tohcol(i32 noundef) #1

declare dso_local void @drawvert(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
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
!11 = distinct !{!11, !5}
