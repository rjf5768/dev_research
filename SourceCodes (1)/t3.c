; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t3.c'
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

; Function Attrs: noinline nounwind uwtable
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
define dso_local void @getcomm() #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca [25 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.optstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.optstr* getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0), %struct.optstr** %5, align 8
  br label %9

9:                                                ; preds = %18, %0
  %10 = load %struct.optstr*, %struct.optstr** %5, align 8
  %11 = getelementptr inbounds %struct.optstr, %struct.optstr* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.optstr*, %struct.optstr** %5, align 8
  %16 = getelementptr inbounds %struct.optstr, %struct.optstr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load %struct.optstr*, %struct.optstr** %5, align 8
  %20 = getelementptr inbounds %struct.optstr, %struct.optstr* %19, i32 1
  store %struct.optstr* %20, %struct.optstr** %5, align 8
  br label %9, !llvm.loop !4

21:                                               ; preds = %9
  store i32 0, i32* @texct, align 4
  %22 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @texstr, i64 0, i64 0), align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* @texname, align 4
  store i32 9, i32* @tab, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 noundef 33)
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  %26 = call i8* @gets1(i8* noundef %25)
  %27 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  %28 = call i8* @strchr(i8* noundef %27, i32 noundef 59) #3
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  call void @backrest(i8* noundef %31)
  br label %161

32:                                               ; preds = %21
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %154, %32
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 59
  br i1 %38, label %39, label %157

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @letter(i32 noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %154

44:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  store %struct.optstr* getelementptr inbounds ([21 x %struct.optstr], [21 x %struct.optstr]* @options, i64 0, i64 0), %struct.optstr** %5, align 8
  br label %45

45:                                               ; preds = %146, %44
  %46 = load %struct.optstr*, %struct.optstr** %5, align 8
  %47 = getelementptr inbounds %struct.optstr, %struct.optstr* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %149

50:                                               ; preds = %45
  %51 = load %struct.optstr*, %struct.optstr** %5, align 8
  %52 = getelementptr inbounds %struct.optstr, %struct.optstr* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @prefix(i8* noundef %53, i8* noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %50
  %58 = load %struct.optstr*, %struct.optstr** %5, align 8
  %59 = getelementptr inbounds %struct.optstr, %struct.optstr* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32 1, i32* %60, align 4
  %61 = load %struct.optstr*, %struct.optstr** %5, align 8
  %62 = getelementptr inbounds %struct.optstr, %struct.optstr* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* noundef %63) #3
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %2, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 @letter(i32 noundef %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  call void @error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %2, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %2, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %2, align 8
  br label %74, !llvm.loop !6

82:                                               ; preds = %74
  %83 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  store i8* %83, i8** %4, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 40
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %95, %88
  %90 = load i8*, i8** %2, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %2, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = icmp ne i32 %93, 41
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  store i8 %97, i8* %98, align 1
  br label %89, !llvm.loop !7

100:                                              ; preds = %89
  br label %104

101:                                              ; preds = %82
  %102 = load i8*, i8** %2, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 -1
  store i8* %103, i8** %2, align 8
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  store i8 0, i8* %105, align 1
  %107 = load i8*, i8** %4, align 8
  store i8 0, i8* %107, align 1
  %108 = load %struct.optstr*, %struct.optstr** %5, align 8
  %109 = getelementptr inbounds %struct.optstr, %struct.optstr* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, @tab
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %114 = load i8, i8* %113, align 16
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = sext i8 %118 to i32
  %120 = load %struct.optstr*, %struct.optstr** %5, align 8
  %121 = getelementptr inbounds %struct.optstr, %struct.optstr* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %112
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.optstr*, %struct.optstr** %5, align 8
  %126 = getelementptr inbounds %struct.optstr, %struct.optstr* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, @linsize
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef 33, i8* noundef %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load %struct.optstr*, %struct.optstr** %5, align 8
  %134 = getelementptr inbounds %struct.optstr, %struct.optstr* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, @delim1
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %139 = load i8, i8* %138, align 16
  %140 = sext i8 %139 to i32
  store i32 %140, i32* @delim1, align 4
  %141 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  store i32 %143, i32* @delim2, align 4
  br label %144

144:                                              ; preds = %137, %132
  store i32 1, i32* %8, align 4
  br label %149

145:                                              ; preds = %50
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.optstr*, %struct.optstr** %5, align 8
  %148 = getelementptr inbounds %struct.optstr, %struct.optstr* %147, i32 1
  store %struct.optstr* %148, %struct.optstr** %5, align 8
  br label %45, !llvm.loop !8

149:                                              ; preds = %144, %45
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  br label %153

153:                                              ; preds = %152, %149
  br label %154

154:                                              ; preds = %153, %43
  %155 = load i8*, i8** %2, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %2, align 8
  br label %34, !llvm.loop !9

157:                                              ; preds = %34
  %158 = load i8*, i8** %2, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %2, align 8
  %160 = load i8*, i8** %2, align 8
  call void @backrest(i8* noundef %160)
  br label %161

161:                                              ; preds = %157, %30
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @gets1(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @backrest(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  br label %5, !llvm.loop !10

13:                                               ; preds = %5
  call void @un1getc(i32 noundef 10)
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %20, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  call void @un1getc(i32 noundef %22)
  br label %14, !llvm.loop !11

23:                                               ; preds = %14
  ret void
}

declare dso_local i32 @letter(i32 noundef) #1

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @error(i8* noundef) #1

declare dso_local void @un1getc(i32 noundef) #1

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
