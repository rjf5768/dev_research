; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t7.c'
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
  %1 = alloca i32, align 4
  %2 = load i32, i32* @boxflg, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @allflg, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @dboxflg, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  call void @need()
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, i32* @ctrflg, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %21 = load i32, i32* @F1, align 4
  %22 = load i32, i32* @F2, align 4
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %21, i32 noundef %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  call void @deftail()
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %33, %19
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @nlin, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  call void @putline(i32 noundef %31, i32 noundef %32)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %26, !llvm.loop !4

36:                                               ; preds = %26
  %37 = load i32, i32* @leftover, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @yetmore()
  br label %40

40:                                               ; preds = %39, %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @ctrflg, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @need() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @nlin, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4, !llvm.loop !6

32:                                               ; preds = %4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %2, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 noundef %34, i32 noundef %36)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deftail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 97
  %21 = sub nsw i32 %20, 1
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %21)
  br label %23

23:                                               ; preds = %14, %8
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %5, !llvm.loop !7

27:                                               ; preds = %5
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %63, %27
  %45 = load i32, i32* %1, align 4
  %46 = icmp slt i32 %45, 100
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 97
  %60 = sub nsw i32 %59, 1
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 noundef %60)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %44, !llvm.loop !8

66:                                               ; preds = %44
  %67 = load i32, i32* @boxflg, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @allflg, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @dboxflg, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72, %69, %66
  %76 = load i32, i32* @nlin, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load i32, i32* @pr1403, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %91 = load i32, i32* @nlin, align 4
  %92 = load i32, i32* @ncol, align 4
  %93 = load i32, i32* @dboxflg, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 61, i32 45
  call void @drawline(i32 noundef %91, i32 noundef 0, i32 noundef %92, i32 noundef %96, i32 noundef 1, i32 noundef 0)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %99

99:                                               ; preds = %88, %75
  br label %100

100:                                              ; preds = %99, %72
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %137, %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @ncol, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %101
  %106 = load i32, i32* @nlin, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @left(i32 noundef %107, i32 noundef %108, i32* noundef %4)
  store i32 %109, i32* %3, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %105
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 97
  %118 = sub nsw i32 %117, 1
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 noundef %118)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 97
  %126 = sub nsw i32 %125, 1
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i32 noundef %126)
  %128 = load i32, i32* %2, align 4
  call void @tohcol(i32 noundef %128)
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @nlin, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %4, align 4
  call void @drawvert(i32 noundef %129, i32 noundef %131, i32 noundef %132, i32 noundef %133)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  br label %136

136:                                              ; preds = %111, %105
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %2, align 4
  br label %101, !llvm.loop !9

140:                                              ; preds = %101
  %141 = load i32, i32* @boxflg, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @allflg, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @dboxflg, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146, %143, %140
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %150, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %154 = load i32, i32* @nlin, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @ncol, align 4
  %157 = load i32, i32* @dboxflg, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 2, i32 1
  call void @drawvert(i32 noundef 0, i32 noundef %155, i32 noundef %156, i32 noundef %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %163

163:                                              ; preds = %149, %146
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %166, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %168, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  ret void
}

declare dso_local void @putline(i32 noundef, i32 noundef) #1

declare dso_local void @yetmore() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runtabs(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %127, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ncol, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %130

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @prev(i32 noundef %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %38, %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %24
  %26 = load %struct.colstr*, %struct.colstr** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.colstr, %struct.colstr* %26, i64 %28
  %30 = getelementptr inbounds %struct.colstr, %struct.colstr* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @vspen(i8* noundef %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %22, %19
  %35 = phi i1 [ false, %19 ], [ %33, %22 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @prev(i32 noundef %39)
  store i32 %40, i32* %8, align 4
  br label %19, !llvm.loop !10

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fspan(i32 noundef %42, i32 noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %127

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ctype(i32 noundef %48, i32 noundef %49)
  store i32 %50, i32* %6, align 4
  switch i32 %50, label %126 [
    i32 110, label %51
    i32 97, label %51
    i32 99, label %75
    i32 108, label %75
    i32 114, label %75
    i32 115, label %115
  ]

51:                                               ; preds = %47, %47
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %53
  %55 = load %struct.colstr*, %struct.colstr** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %57
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 60
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %71)
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %47, %47, %47, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 97
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 110
  br i1 %80, label %81, label %98

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %83
  %85 = load %struct.colstr*, %struct.colstr** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.colstr, %struct.colstr* %85, i64 %87
  %89 = getelementptr inbounds %struct.colstr, %struct.colstr* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %114

98:                                               ; preds = %81, %78
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %102, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98, %92
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 80
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %112)
  br label %114

114:                                              ; preds = %109, %98, %92
  br label %127

115:                                              ; preds = %47
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @lspan(i32 noundef %116, i32 noundef %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 80
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %123)
  br label %125

125:                                              ; preds = %120, %115
  br label %127

126:                                              ; preds = %47
  br label %127

127:                                              ; preds = %126, %125, %114, %46
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %11, !llvm.loop !11

130:                                              ; preds = %11
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @fspan(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @lspan(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ifline(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = ptrtoint i8* %4 to i32
  %6 = call i32 @point(i32 noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 95
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 45, i32* %2, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 61, i32* %2, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %30, %23, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @point(i32 noundef) #1

declare dso_local void @drawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @left(i32 noundef, i32 noundef, i32* noundef) #1

declare dso_local void @tohcol(i32 noundef) #1

declare dso_local void @drawvert(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
