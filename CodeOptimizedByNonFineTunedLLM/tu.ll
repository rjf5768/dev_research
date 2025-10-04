; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tu.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @thish(i32 noundef %10, i32 noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %100

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %19
  %21 = load %struct.colstr*, %struct.colstr** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.colstr, %struct.colstr* %21, i64 %23
  %25 = getelementptr inbounds %struct.colstr, %struct.colstr* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %16
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @thish(i32 noundef %38, i32 noundef %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %100

45:                                               ; preds = %37, %34, %16
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %70, %48
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ncol, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ctype(i32 noundef %55, i32 noundef %56)
  %58 = icmp eq i32 %57, 115
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @thish(i32 noundef %61, i32 noundef %62)
  %64 = icmp eq i32 %60, %63
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ true, %54 ], [ %64, %59 ]
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i1 [ false, %50 ], [ %66, %65 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %50, !llvm.loop !4

73:                                               ; preds = %67
  br label %93

74:                                               ; preds = %45
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %89, %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ncol, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ctype(i32 noundef %82, i32 noundef %83)
  %85 = icmp eq i32 %84, 115
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i1 [ false, %77 ], [ %85, %81 ]
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %77, !llvm.loop !6

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %73
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %9, align 4
  call void @drawline(i32 noundef %94, i32 noundef %95, i32 noundef %97, i32 noundef %98, i32 noundef 0, i32 noundef %99)
  br label %100

100:                                              ; preds = %93, %44, %15
  ret void
}

declare dso_local i32 @thish(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %29 [
    i32 45, label %22
    i32 61, label %23
    i32 4, label %28
  ]

22:                                               ; preds = %6
  store i32 1, i32* %15, align 4
  br label %29

23:                                               ; preds = %6
  %24 = load i32, i32* @pr1403, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 2
  store i32 %27, i32* %15, align 4
  br label %29

28:                                               ; preds = %6
  store i32 1, i32* %15, align 4
  br label %29

29:                                               ; preds = %6, %28, %23, %22
  %30 = load i32, i32* %15, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %237

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @ncol, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @allh(i32 noundef %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %39, %33
  %47 = phi i1 [ true, %39 ], [ true, %33 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %220, %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %223

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 2, %60
  %62 = load i32, i32* %15, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %72)
  br label %74

74:                                               ; preds = %68, %59
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %160

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  call void @tohcol(i32 noundef %79)
  %80 = load i32, i32* %15, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @interv(i32 noundef %83, i32 noundef %84)
  switch i32 %85, label %97 [
    i32 1, label %86
    i32 2, label %91
    i32 3, label %96
  ]

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  store i8* %90, i8** %14, align 8
  br label %97

91:                                               ; preds = %82
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  store i8* %95, i8** %14, align 8
  br label %97

96:                                               ; preds = %82
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %97

97:                                               ; preds = %82, %96, %91, %86
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %104)
  br label %106

106:                                              ; preds = %102, %97
  br label %127

107:                                              ; preds = %78
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @interv(i32 noundef %111, i32 noundef %112)
  switch i32 %113, label %116 [
    i32 1, label %114
    i32 2, label %114
    i32 3, label %115
  ]

114:                                              ; preds = %110, %110
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %116

115:                                              ; preds = %110
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %116

116:                                              ; preds = %110, %115, %114
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %123)
  br label %125

125:                                              ; preds = %121, %116
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %15, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  %134 = call i32 @interv(i32 noundef %131, i32 noundef %133)
  switch i32 %134, label %146 [
    i32 1, label %135
    i32 2, label %140
    i32 3, label %145
  ]

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  store i8* %139, i8** %13, align 8
  br label %146

140:                                              ; preds = %130
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  store i8* %144, i8** %13, align 8
  br label %146

145:                                              ; preds = %130
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %146

146:                                              ; preds = %130, %145, %140, %135
  br label %159

147:                                              ; preds = %127
  %148 = load i32, i32* %15, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @interv(i32 noundef %151, i32 noundef %153)
  switch i32 %154, label %157 [
    i32 1, label %155
    i32 2, label %155
    i32 3, label %156
  ]

155:                                              ; preds = %150, %150
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %157

156:                                              ; preds = %150
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %157

157:                                              ; preds = %150, %156, %155
  br label %158

158:                                              ; preds = %157, %147
  br label %159

159:                                              ; preds = %158, %146
  br label %165

160:                                              ; preds = %74
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 40
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %163)
  br label %165

165:                                              ; preds = %160, %159
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %166, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 noundef 33)
  %168 = load i32, i32* @linsize, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 33)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 80
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %177, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 noundef %179)
  br label %211

181:                                              ; preds = %173
  store i32 ptrtoint ([5 x i8]* @.str.14 to i32), i32* %20, align 4
  %182 = load i32, i32* @pr1403, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %20, align 4
  br label %190

190:                                              ; preds = %184, %181
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  %193 = load i32, i32* @ncol, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %197, i32 noundef %198)
  br label %210

200:                                              ; preds = %190
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 80
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  %206 = add nsw i32 %205, 40
  %207 = load i8*, i8** %13, align 8
  %208 = load i32, i32* %20, align 4
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %201, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 noundef %203, i32 noundef %206, i8* noundef %207, i32 noundef %208)
  br label %210

210:                                              ; preds = %200, %195
  br label %211

211:                                              ; preds = %210, %176
  %212 = load i32, i32* @linsize, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %215, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 noundef 33)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %55, !llvm.loop !7

223:                                              ; preds = %55
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sub nsw i32 0, %228
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %227, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %229)
  br label %231

231:                                              ; preds = %226, %223
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %235, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %237

237:                                              ; preds = %32, %234, %231
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fullwide(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @pr1403, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef 36)
  br label %12

12:                                               ; preds = %9, %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %71, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ncol, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %30, %17
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @prev(i32 noundef %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vspand(i32 noundef %24, i32 noundef %25, i32 noundef 1)
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %19, !llvm.loop !8

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %50, %33
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ncol, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @prev(i32 noundef %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @vspand(i32 noundef %44, i32 noundef %45, i32 noundef 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %35, !llvm.loop !9

53:                                               ; preds = %48, %35
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ncol, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ncol, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = load i32, i32* %4, align 4
  call void @drawline(i32 noundef %58, i32 noundef %59, i32 noundef %69, i32 noundef %70, i32 noundef 1, i32 noundef 0)
  br label %71

71:                                               ; preds = %68, %53
  br label %13, !llvm.loop !10

72:                                               ; preds = %13
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @pr1403, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef 36)
  br label %80

80:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @vspand(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @prev(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ true, %7 ], [ %18, %13 ]
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i1 [ false, %3 ], [ %20, %19 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %3, !llvm.loop !11

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @allh(i32 noundef) #1

declare dso_local void @tohcol(i32 noundef) #1

declare dso_local i32 @interv(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getstop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 200
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %6, !llvm.loop !12

16:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %49, %16
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @nlin, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ncol, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @left(i32 noundef %27, i32 noundef %28, i32* noundef %4)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %22, !llvm.loop !13

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %17, !llvm.loop !14

52:                                               ; preds = %17
  %53 = load i32, i32* @boxflg, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @allflg, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @dboxflg, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55, %52
  store i32 1, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @linestop, i64 0, i64 0), align 4
  br label %62

62:                                               ; preds = %61, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @left(i32 noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lefdata(i32 noundef %12, i32 noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %101

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @nlin, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @next(i32 noundef %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @lefdata(i32 noundef %25, i32 noundef %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %101

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @lefdata(i32 noundef %37, i32 noundef %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %9, align 4
  %46 = call i32 @prev(i32 noundef %45)
  store i32 %46, i32* %5, align 4
  br label %33, !llvm.loop !15

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @prev(i32 noundef %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %77, %52
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %101

76:                                               ; preds = %67, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %57, !llvm.loop !16

80:                                               ; preds = %57
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %96, %80
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %87
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %83, !llvm.loop !17

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %74, %30, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lefdata(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @nlin, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @nlin, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ctype(i32 noundef %14, i32 noundef %15)
  %17 = icmp eq i32 %16, 115
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %26, %18
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ctype(i32 noundef %21, i32 noundef %22)
  %24 = icmp eq i32 %23, 115
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  br label %20, !llvm.loop !18

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @thish(i32 noundef %30, i32 noundef %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %71

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i64 0, i64 %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %36
  %53 = load i32, i32* @dboxflg, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 2, i32* %3, align 4
  br label %71

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @allflg, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @boxflg, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %71

70:                                               ; preds = %66, %63
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %62, %58, %50, %34
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @next(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @nlin, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %24

23:                                               ; preds = %16, %8
  br label %3, !llvm.loop !19

24:                                               ; preds = %22, %3
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
