; ModuleID = './t8.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@watchout = dso_local global i32 0, align 4
@once = dso_local global i32 0, align 4
@allflg = external dso_local global i32, align 4
@boxflg = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@ncol = external dso_local global i32, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@nlin = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c".ne \\n(%c|u+\\n(.Vu\0A\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c".mk #%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c".nr #^ \\n(\\*(#du\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c".nr #- \\n(#^\0A\00", align 1
@font = external dso_local global [100 x [20 x [2 x i8]]], align 16
@stynum = external dso_local global [0 x i32], align 4
@.str.4 = private unnamed_addr constant [63 x i8] c".if (\\n(%c|+\\n(^%c-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(^%c-\\n(#--1v)\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c".if (\\n(%c|+\\n(#^-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(#^-\\n(#--1v)\0A\00", align 1
@pr1403 = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.v\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c".vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c".nr %2d \\n(.f\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c".nr 35 1m\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\&\00", align 1
@rightl = external dso_local global i32, align 4
@lused = external dso_local global [0 x i32], align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"\\h'|\\n(%du'\00", align 1
@csize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@.str.12 = private unnamed_addr constant [23 x i8] c"\\v'-(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"-((\\n(#-u-\\n(^%cu)/2u)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@F1 = external dso_local global i32, align 4
@F2 = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [44 x i8] c"%s: line %d: Data ignored on table line %d\0A\00", align 1
@ifile = external dso_local global i8*, align 8
@iline = external dso_local global i32, align 4
@rused = external dso_local global [0 x i32], align 4
@used = external dso_local global [0 x i32], align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(%du\\&%s'\00", align 1
@ctop = external dso_local global [100 x [20 x i32]], align 16
@topat = dso_local global [20 x i32] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [22 x i8] c"\\v'(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"\0A.sp-1\0A\\&\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c".vs \\n(%du\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c".nr ^%c \\n(#^u\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"\\f\\n(%2d\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr %d \\n(##\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c".sp |\\n(##u-1v\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"(\\n(%du+\\n(%du-\\n(%c-u)/2u\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"\\n(%du\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"\\n(%du-\\n(%c-u\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c".in +\\n(%du\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c".sp |\\n(^%cu\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c".nr %d \\n(#-u-\\n(^%c-\\n(%c|+1v\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c".if \\n(%d>0 .sp \\n(%du/2u\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c".%c+\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c".in -\\n(%du\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c".mk %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c".if \\n(%d>\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c".sp |\\n(%du\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c".sp -1\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\\f(%.2s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\f%.2s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\\s%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @putline(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 0, i32* @watchout, align 4
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 0, i32* @once, align 4
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = load i32, i32* @allflg, align 4
  %.not99 = icmp eq i32 %9, 0
  br i1 %.not99, label %10, label %14

10:                                               ; preds = %8
  %11 = load i32, i32* @boxflg, align 4
  %.not100 = icmp eq i32 %11, 0
  br i1 %.not100, label %12, label %14

12:                                               ; preds = %10
  %13 = load i32, i32* @dboxflg, align 4
  %.not101 = icmp eq i32 %13, 0
  br i1 %.not101, label %17, label %14

14:                                               ; preds = %12, %10, %8
  %15 = load i32, i32* @dboxflg, align 4
  %.not102 = icmp eq i32 %15, 0
  %16 = select i1 %.not102, i32 45, i32 61
  call void @fullwide(i32 noundef 0, i32 noundef %16) #4
  br label %17

17:                                               ; preds = %14, %12, %6
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %81

22:                                               ; preds = %17
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %78, %27
  %.014 = phi i32 [ undef, %27 ], [ %.216, %78 ]
  %.02 = phi i32 [ 0, %27 ], [ %79, %78 ]
  %29 = load i32, i32* @ncol, align 4
  %30 = icmp slt i32 %.02, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %32
  %34 = load %struct.colstr*, %struct.colstr** %33, align 8
  %35 = zext i32 %.02 to i64
  %36 = getelementptr inbounds %struct.colstr, %struct.colstr* %34, i64 %35, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %78

40:                                               ; preds = %31
  %41 = call i32 @vspen(i8* noundef nonnull %37) #4
  %.not96 = icmp eq i32 %41, 0
  br i1 %.not96, label %70, label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %56, %42
  %.115 = phi i32 [ %1, %42 ], [ %57, %56 ]
  %.01 = phi i8* [ %37, %42 ], [ %52, %56 ]
  %44 = load i32, i32* @nlin, align 4
  %45 = icmp slt i32 %.115, %44
  br i1 %45, label %46, label %.loopexit

46:                                               ; preds = %43
  %47 = sext i32 %.115 to i64
  %48 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %47
  %49 = load %struct.colstr*, %struct.colstr** %48, align 8
  %50 = zext i32 %.02 to i64
  %51 = getelementptr inbounds %struct.colstr, %struct.colstr* %49, i64 %50, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @vspen(i8* noundef %52) #4
  %.not98 = icmp eq i32 %53, 0
  br i1 %.not98, label %54, label %55

54:                                               ; preds = %46
  br label %58

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = call i32 @next(i32 noundef %.115) #4
  br label %43, !llvm.loop !4

.loopexit:                                        ; preds = %43
  br label %58

58:                                               ; preds = %.loopexit, %54
  %.1 = phi i8* [ %52, %54 ], [ %.01, %.loopexit ]
  %59 = ptrtoint i8* %.1 to i64
  %60 = trunc i64 %59 to i32
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = ptrtoint i8* %.1 to i64
  %64 = trunc i64 %63 to i32
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef %.1) #4
  br label %69

69:                                               ; preds = %66, %62, %58
  br label %78

70:                                               ; preds = %40
  %71 = ptrtoint i8* %37 to i64
  %72 = trunc i64 %71 to i32
  %73 = call i32 @point(i32 noundef %72) #4
  %.not97 = icmp eq i32 %73, 0
  br i1 %.not97, label %75, label %74

74:                                               ; preds = %70
  br label %78

75:                                               ; preds = %70
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %37) #4
  store i32 1, i32* @watchout, align 4
  br label %78

78:                                               ; preds = %75, %74, %69, %39
  %.216 = phi i32 [ %.014, %39 ], [ %.115, %69 ], [ %.014, %74 ], [ %.014, %75 ]
  %79 = add nuw nsw i32 %.02, 1
  br label %28, !llvm.loop !6

80:                                               ; preds = %28
  br label %81

81:                                               ; preds = %80, %22, %17
  %.317 = phi i32 [ %.014, %80 ], [ undef, %22 ], [ undef, %17 ]
  %82 = sext i32 %1 to i64
  %83 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %.not = icmp eq i32 %84, 0
  br i1 %.not, label %92, label %85

85:                                               ; preds = %81
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %87 = sext i32 %1 to i64
  %88 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 96
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %90) #4
  br label %92

92:                                               ; preds = %85, %81
  %93 = call i32 @prev(i32 noundef %1) #4
  %94 = sext i32 %1 to i64
  %95 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %.not51 = icmp eq i8* %96, null
  br i1 %.not51, label %102, label %97

97:                                               ; preds = %92
  %98 = sext i32 %1 to i64
  %99 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %100) #4
  br label %597

102:                                              ; preds = %92
  %103 = sext i32 %1 to i64
  %104 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %.not52 = icmp eq i32 %105, 0
  br i1 %.not52, label %112, label %106

106:                                              ; preds = %102
  %107 = sext i32 %1 to i64
  %108 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %111 [
    i32 61, label %110
    i32 45, label %110
  ]

110:                                              ; preds = %106, %106
  call void @fullwide(i32 noundef %1, i32 noundef %109) #4
  br label %111

111:                                              ; preds = %110, %106
  br label %597

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %149, %112
  %.09 = phi i32 [ 0, %112 ], [ %.413, %149 ]
  %.13 = phi i32 [ 0, %112 ], [ %150, %149 ]
  %114 = load i32, i32* @ncol, align 4
  %115 = icmp slt i32 %.13, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %113
  %117 = sext i32 %1 to i64
  %118 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = sext i32 %1 to i64
  %123 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = sext i32 %1 to i64
  %128 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %127
  %129 = load %struct.colstr*, %struct.colstr** %128, align 8
  %130 = zext i32 %.13 to i64
  %131 = getelementptr inbounds %struct.colstr, %struct.colstr* %129, i64 %130, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @vspen(i8* noundef %132) #4
  %.not95 = icmp eq i32 %133, 0
  br i1 %.not95, label %135, label %134

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %126
  %.110 = phi i32 [ 1, %134 ], [ %.09, %126 ]
  br label %136

136:                                              ; preds = %135, %121, %116
  %.211 = phi i32 [ %.110, %135 ], [ %.09, %121 ], [ %.09, %116 ]
  %137 = icmp sgt i32 %93, -1
  br i1 %137, label %138, label %148

138:                                              ; preds = %136
  %139 = sext i32 %93 to i64
  %140 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %139
  %141 = load %struct.colstr*, %struct.colstr** %140, align 8
  %142 = zext i32 %.13 to i64
  %143 = getelementptr inbounds %struct.colstr, %struct.colstr* %141, i64 %142, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @vspen(i8* noundef %144) #4
  %.not94 = icmp eq i32 %145, 0
  br i1 %.not94, label %147, label %146

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %138
  %.312 = phi i32 [ 1, %146 ], [ %.211, %138 ]
  br label %148

148:                                              ; preds = %147, %136
  %.413 = phi i32 [ %.312, %147 ], [ %.211, %136 ]
  br label %149

149:                                              ; preds = %148
  %150 = add nuw nsw i32 %.13, 1
  br label %113, !llvm.loop !7

151:                                              ; preds = %113
  %.not53 = icmp eq i32 %.09, 0
  br i1 %.not53, label %157, label %152

152:                                              ; preds = %151
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %154 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %153)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %156 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %155)
  br label %157

157:                                              ; preds = %152, %151
  br label %158

158:                                              ; preds = %204, %157
  %.046 = phi i32 [ 0, %157 ], [ %.147, %204 ]
  %.24 = phi i32 [ 0, %157 ], [ %205, %204 ]
  %159 = load i32, i32* @ncol, align 4
  %160 = icmp slt i32 %.24, %159
  br i1 %160, label %161, label %206

161:                                              ; preds = %158
  %162 = sext i32 %1 to i64
  %163 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %162
  %164 = load %struct.colstr*, %struct.colstr** %163, align 8
  %165 = zext i32 %.24 to i64
  %166 = getelementptr inbounds %struct.colstr, %struct.colstr* %164, i64 %165, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %204

170:                                              ; preds = %161
  %171 = sext i32 %1 to i64
  %172 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = zext i32 %.24 to i64
  %176 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %174, i64 %175, i64 0
  %177 = ptrtoint i8* %176 to i64
  %178 = trunc i64 %177 to i32
  %179 = or i32 %.046, %178
  %180 = ptrtoint i8* %167 to i64
  %181 = trunc i64 %180 to i32
  %182 = call i32 @point(i32 noundef %181) #4
  %.not92 = icmp eq i32 %182, 0
  br i1 %.not92, label %184, label %183

183:                                              ; preds = %170
  br label %204

184:                                              ; preds = %170
  %185 = call i32 @prev(i32 noundef %1) #4
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = sext i32 %185 to i64
  %189 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %188
  %190 = load %struct.colstr*, %struct.colstr** %189, align 8
  %191 = zext i32 %.24 to i64
  %192 = getelementptr inbounds %struct.colstr, %struct.colstr* %190, i64 %191, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @vspen(i8* noundef %193) #4
  %.not93 = icmp eq i32 %194, 0
  br i1 %.not93, label %200, label %195

195:                                              ; preds = %187
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %197 = add nuw nsw i32 %.24, 97
  %198 = add nuw nsw i32 %.24, 97
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %167, i32 noundef %197, i8* noundef nonnull %167, i32 noundef %198) #4
  br label %203

200:                                              ; preds = %187, %184
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %201, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %167, i8* noundef nonnull %167) #4
  br label %203

203:                                              ; preds = %200, %195
  br label %204

204:                                              ; preds = %203, %183, %169
  %.147 = phi i32 [ %.046, %169 ], [ %179, %183 ], [ %179, %203 ]
  %205 = add nuw nsw i32 %.24, 1
  br label %158, !llvm.loop !8

206:                                              ; preds = %158
  %207 = load i32, i32* @allflg, align 4
  %.not54 = icmp eq i32 %207, 0
  br i1 %.not54, label %212, label %208

208:                                              ; preds = %206
  %209 = load i32, i32* @once, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  call void @fullwide(i32 noundef %0, i32 noundef 45) #4
  br label %212

212:                                              ; preds = %211, %208, %206
  store i32 1, i32* @once, align 4
  call void @runtabs(i32 noundef %0, i32 noundef %1) #4
  %213 = call i32 @allh(i32 noundef %0) #4
  %.not55 = icmp eq i32 %213, 0
  br i1 %.not55, label %221, label %214

214:                                              ; preds = %212
  %215 = load i32, i32* @pr1403, align 4
  %.not91 = icmp eq i32 %215, 0
  br i1 %.not91, label %216, label %221

216:                                              ; preds = %214
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef 36) #4
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %220 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %219)
  br label %221

221:                                              ; preds = %216, %214, %212
  %.not56 = icmp eq i32 %.046, 0
  br i1 %.not56, label %225, label %222

222:                                              ; preds = %221
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %223, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef 31) #4
  br label %225

225:                                              ; preds = %222, %221
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %227 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %226)
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %229 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %228)
  br label %230

230:                                              ; preds = %548, %225
  %.036 = phi i32 [ 0, %225 ], [ %.15, %548 ]
  %.026 = phi i32 [ 0, %225 ], [ %.834, %548 ]
  %.023 = phi i32 [ undef, %225 ], [ %.225, %548 ]
  %.418 = phi i32 [ %.317, %225 ], [ %.822, %548 ]
  %.5 = phi i32 [ 0, %225 ], [ %.8, %548 ]
  %.3 = phi i32 [ 0, %225 ], [ %549, %548 ]
  %231 = load i32, i32* @ncol, align 4
  %232 = icmp slt i32 %.3, %231
  br i1 %232, label %233, label %550

233:                                              ; preds = %230
  %234 = load i32, i32* @watchout, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = add nsw i32 %0, 1
  %238 = load i32, i32* @nlin, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = call i32 @left(i32 noundef %0, i32 noundef %.3, i32* noundef nonnull %3) #4
  %242 = icmp sgt i32 %241, -1
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  call void @tohcol(i32 noundef %.3) #4
  %244 = load i32, i32* %3, align 4
  call void @drawvert(i32 noundef %241, i32 noundef %0, i32 noundef %.3, i32 noundef %244) #4
  %245 = add nsw i32 %.036, 2
  br label %246

246:                                              ; preds = %243, %240, %236, %233
  %.137 = phi i32 [ %245, %243 ], [ %.036, %240 ], [ %.036, %236 ], [ %.036, %233 ]
  %247 = load i32, i32* @rightl, align 4
  %.not63 = icmp eq i32 %247, 0
  br i1 %.not63, label %253, label %248

248:                                              ; preds = %246
  %249 = add nuw nsw i32 %.3, 1
  %250 = load i32, i32* @ncol, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %548

253:                                              ; preds = %248, %246
  %254 = call i32 @prev(i32 noundef %1) #4
  br label %255

255:                                              ; preds = %269, %253
  %.035 = phi i32 [ %0, %253 ], [ %.05, %269 ]
  %.05 = phi i32 [ %254, %253 ], [ %270, %269 ]
  %256 = icmp sgt i32 %.05, -1
  br i1 %256, label %257, label %266

257:                                              ; preds = %255
  %258 = sext i32 %.05 to i64
  %259 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %258
  %260 = load %struct.colstr*, %struct.colstr** %259, align 8
  %261 = zext i32 %.3 to i64
  %262 = getelementptr inbounds %struct.colstr, %struct.colstr* %260, i64 %261, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @vspen(i8* noundef %263) #4
  %265 = icmp ne i32 %264, 0
  br label %266

266:                                              ; preds = %257, %255
  %267 = phi i1 [ false, %255 ], [ %265, %257 ]
  br i1 %267, label %268, label %271

268:                                              ; preds = %266
  br label %269

269:                                              ; preds = %268
  %270 = call i32 @prev(i32 noundef %.05) #4
  br label %255, !llvm.loop !9

271:                                              ; preds = %266
  %272 = call i32 @ctype(i32 noundef %.035, i32 noundef %.3) #4
  %.not64 = icmp eq i32 %272, 115
  br i1 %.not64, label %297, label %273

273:                                              ; preds = %271
  %274 = add nuw nsw i32 %.3, 40
  %275 = icmp eq i32 %272, 97
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = add nuw nsw i32 %.3, 60
  br label %278

278:                                              ; preds = %276, %273
  %.06 = phi i32 [ %277, %276 ], [ %274, %273 ]
  %279 = icmp eq i32 %272, 110
  br i1 %279, label %280, label %294

280:                                              ; preds = %278
  %281 = sext i32 %1 to i64
  %282 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %281
  %283 = load %struct.colstr*, %struct.colstr** %282, align 8
  %284 = zext i32 %.3 to i64
  %285 = getelementptr inbounds %struct.colstr, %struct.colstr* %283, i64 %284, i32 1
  %286 = load i8*, i8** %285, align 8
  %.not90 = icmp eq i8* %286, null
  br i1 %.not90, label %294, label %287

287:                                              ; preds = %280
  %288 = zext i32 %.3 to i64
  %289 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = add nuw nsw i32 %.3, 60
  br label %294

294:                                              ; preds = %292, %287, %280, %278
  %.17 = phi i32 [ %293, %292 ], [ %.06, %287 ], [ %.06, %280 ], [ %.06, %278 ]
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %295, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %.17) #4
  br label %297

297:                                              ; preds = %294, %271
  %298 = sext i32 %1 to i64
  %299 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %298
  %300 = load %struct.colstr*, %struct.colstr** %299, align 8
  %301 = zext i32 %.3 to i64
  %302 = getelementptr inbounds %struct.colstr, %struct.colstr* %300, i64 %301, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = sext i32 %.035 to i64
  %305 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = zext i32 %.3 to i64
  %309 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %307, i64 %308, i64 0
  %310 = sext i32 %.035 to i64
  %311 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = zext i32 %.3 to i64
  %315 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %313, i64 %314, i64 0
  %316 = load i8, i8* %315, align 4
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %297
  br label %319

319:                                              ; preds = %318, %297
  %.0 = phi i8* [ null, %318 ], [ %315, %297 ]
  %320 = call i32 @ctype(i32 noundef %.035, i32 noundef %.3) #4
  switch i32 %320, label %392 [
    i32 110, label %321
    i32 97, label %321
    i32 99, label %373
    i32 114, label %374
    i32 108, label %375
    i32 45, label %376
    i32 61, label %376
  ]

321:                                              ; preds = %319, %319
  %322 = sext i32 %1 to i64
  %323 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %322
  %324 = load %struct.colstr*, %struct.colstr** %323, align 8
  %325 = zext i32 %.3 to i64
  %326 = getelementptr inbounds %struct.colstr, %struct.colstr* %324, i64 %325, i32 1
  %327 = load i8*, i8** %326, align 8
  %.not84 = icmp eq i8* %327, null
  br i1 %.not84, label %372, label %328

328:                                              ; preds = %321
  %329 = zext i32 %.3 to i64
  %330 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %329
  %331 = load i32, i32* %330, align 4
  %.not85 = icmp eq i32 %331, 0
  br i1 %.not85, label %365, label %332

332:                                              ; preds = %328
  %333 = call i32 @prev(i32 noundef %1) #4
  %334 = icmp sgt i32 %333, -1
  br i1 %334, label %335, label %358

335:                                              ; preds = %332
  %336 = sext i32 %333 to i64
  %337 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %336
  %338 = load %struct.colstr*, %struct.colstr** %337, align 8
  %339 = zext i32 %.3 to i64
  %340 = getelementptr inbounds %struct.colstr, %struct.colstr* %338, i64 %339, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @vspen(i8* noundef %341) #4
  %.not87 = icmp eq i32 %342, 0
  br i1 %.not87, label %357, label %343

343:                                              ; preds = %335
  %344 = icmp eq i32 %.026, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %343
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %347 = add nuw nsw i32 %.3, 97
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %346, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %347) #4
  %.not88 = icmp eq i32 %.023, 0
  br i1 %.not88, label %353, label %349

349:                                              ; preds = %345
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %351 = add nuw nsw i32 %.3, 97
  %352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %350, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %351) #4
  br label %353

353:                                              ; preds = %349, %345
  %354 = add nsw i32 %.137, 1
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc89 = call i32 @fputc(i32 39, %struct._IO_FILE* %355)
  br label %356

356:                                              ; preds = %353, %343
  %.238 = phi i32 [ %354, %353 ], [ %.137, %343 ]
  %.127 = phi i32 [ 1, %353 ], [ %.026, %343 ]
  br label %357

357:                                              ; preds = %356, %335
  %.339 = phi i32 [ %.238, %356 ], [ %.137, %335 ]
  %.228 = phi i32 [ %.127, %356 ], [ %.026, %335 ]
  br label %358

358:                                              ; preds = %357, %332
  %.440 = phi i32 [ %.339, %357 ], [ %.137, %332 ]
  %.329 = phi i32 [ %.228, %357 ], [ %.026, %332 ]
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %360 = load i32, i32* @F1, align 4
  %361 = load i32, i32* @F2, align 4
  %362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %359, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 noundef %360, i32 noundef %361) #4
  call void @puttext(i8* noundef %303, i8* noundef nonnull %309, i8* noundef %.0)
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %364 = load i32, i32* @F1, align 4
  %fputc86 = call i32 @fputc(i32 %364, %struct._IO_FILE* %363)
  br label %365

365:                                              ; preds = %358, %328
  %.541 = phi i32 [ %.440, %358 ], [ %.137, %328 ]
  %.430 = phi i32 [ %.329, %358 ], [ %.026, %328 ]
  %.519 = phi i32 [ %333, %358 ], [ %.418, %328 ]
  %366 = sext i32 %1 to i64
  %367 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %366
  %368 = load %struct.colstr*, %struct.colstr** %367, align 8
  %369 = zext i32 %.3 to i64
  %370 = getelementptr inbounds %struct.colstr, %struct.colstr* %368, i64 %369, i32 1
  %371 = load i8*, i8** %370, align 8
  br label %393

372:                                              ; preds = %321
  br label %373

373:                                              ; preds = %372, %319
  br label %393

374:                                              ; preds = %319
  br label %393

375:                                              ; preds = %319
  br label %393

376:                                              ; preds = %319, %319
  %377 = sext i32 %1 to i64
  %378 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %377
  %379 = load %struct.colstr*, %struct.colstr** %378, align 8
  %380 = zext i32 %.3 to i64
  %381 = getelementptr inbounds %struct.colstr, %struct.colstr* %379, i64 %380, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 @real(i8* noundef %382) #4
  %.not65 = icmp eq i32 %383, 0
  br i1 %.not65, label %391, label %384

384:                                              ; preds = %376
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %386 = load i8*, i8** @ifile, align 8
  %387 = load i32, i32* @iline, align 4
  %388 = add nsw i32 %387, -1
  %389 = add nsw i32 %0, 1
  %390 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %385, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i8* noundef %386, i32 noundef %388, i32 noundef %389) #5
  br label %391

391:                                              ; preds = %384, %376
  call void @makeline(i32 noundef %0, i32 noundef %.3, i32 noundef %320) #4
  br label %548

392:                                              ; preds = %319
  br label %548

393:                                              ; preds = %375, %374, %373, %365
  %.642 = phi i32 [ %.137, %375 ], [ %.137, %374 ], [ %.137, %373 ], [ %.541, %365 ]
  %.531 = phi i32 [ %.026, %375 ], [ %.026, %374 ], [ %.026, %373 ], [ %.430, %365 ]
  %.620 = phi i32 [ %.418, %375 ], [ %.418, %374 ], [ %.418, %373 ], [ %.519, %365 ]
  %.not74 = phi i1 [ true, %375 ], [ false, %374 ], [ false, %373 ], [ true, %365 ]
  %.not76 = phi i1 [ false, %375 ], [ true, %374 ], [ false, %373 ], [ false, %365 ]
  %.2 = phi i8* [ %303, %375 ], [ %303, %374 ], [ %303, %373 ], [ %371, %365 ]
  %394 = icmp eq i32 %320, 97
  br i1 %394, label %397, label %395

395:                                              ; preds = %393
  %396 = icmp eq i32 %320, 110
  br i1 %396, label %397, label %408

397:                                              ; preds = %395, %393
  %398 = sext i32 %1 to i64
  %399 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %398
  %400 = load %struct.colstr*, %struct.colstr** %399, align 8
  %401 = zext i32 %.3 to i64
  %402 = getelementptr inbounds %struct.colstr, %struct.colstr* %400, i64 %401, i32 1
  %403 = load i8*, i8** %402, align 8
  %.not82 = icmp eq i8* %403, null
  br i1 %.not82, label %408, label %404

404:                                              ; preds = %397
  %405 = zext i32 %.3 to i64
  %406 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %.not83 = icmp eq i32 %407, 0
  br i1 %.not83, label %474, label %412

408:                                              ; preds = %397, %395
  %409 = zext i32 %.3 to i64
  %410 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  %.not66 = icmp eq i32 %411, 0
  br i1 %.not66, label %474, label %412

412:                                              ; preds = %408, %404
  %413 = call i32 @ifline(i8* noundef %.2) #4
  %.not71 = icmp eq i32 %413, 0
  br i1 %.not71, label %416, label %414

414:                                              ; preds = %412
  %415 = call i32 @ifline(i8* noundef %.2) #4
  call void @makeline(i32 noundef %0, i32 noundef %.3, i32 noundef %415) #4
  br label %548

416:                                              ; preds = %412
  %417 = call i32 @filler(i8* noundef %.2) #4
  %.not72 = icmp eq i32 %417, 0
  br i1 %.not72, label %422, label %418

418:                                              ; preds = %416
  %419 = add nuw nsw i32 %.3, 80
  %420 = getelementptr inbounds i8, i8* %.2, i64 2
  %421 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef %419, i8* noundef nonnull %420) #4
  br label %548

422:                                              ; preds = %416
  %423 = call i32 @prev(i32 noundef %1) #4
  %424 = sext i32 %1 to i64
  %425 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  %428 = zext i32 %.3 to i64
  %429 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %427, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %430, 0
  %432 = zext i1 %431 to i32
  %433 = icmp sgt i32 %423, -1
  br i1 %433, label %434, label %457

434:                                              ; preds = %422
  %435 = sext i32 %423 to i64
  %436 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %435
  %437 = load %struct.colstr*, %struct.colstr** %436, align 8
  %438 = zext i32 %.3 to i64
  %439 = getelementptr inbounds %struct.colstr, %struct.colstr* %437, i64 %438, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @vspen(i8* noundef %440) #4
  %.not80 = icmp eq i32 %441, 0
  br i1 %.not80, label %456, label %442

442:                                              ; preds = %434
  %443 = icmp eq i32 %.531, 0
  br i1 %443, label %444, label %455

444:                                              ; preds = %442
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %446 = add nuw nsw i32 %.3, 97
  %447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %445, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %446) #4
  br i1 %431, label %448, label %452

448:                                              ; preds = %444
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %450 = add nuw nsw i32 %.3, 97
  %451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %449, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %450) #4
  br label %452

452:                                              ; preds = %448, %444
  %453 = add nsw i32 %.642, 1
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc81 = call i32 @fputc(i32 39, %struct._IO_FILE* %454)
  br label %455

455:                                              ; preds = %452, %442
  %.743 = phi i32 [ %453, %452 ], [ %.642, %442 ]
  br label %456

456:                                              ; preds = %455, %434
  %.844 = phi i32 [ %.743, %455 ], [ %.642, %434 ]
  br label %457

457:                                              ; preds = %456, %422
  %.9 = phi i32 [ %.844, %456 ], [ %.642, %422 ]
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %459 = load i32, i32* @F1, align 4
  %fputc73 = call i32 @fputc(i32 %459, %struct._IO_FILE* %458)
  br i1 %.not74, label %463, label %460

460:                                              ; preds = %457
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %462 = load i32, i32* @F2, align 4
  %fputc79 = call i32 @fputc(i32 %462, %struct._IO_FILE* %461)
  br label %463

463:                                              ; preds = %460, %457
  %464 = call i32 @vspen(i8* noundef %.2) #4
  %.not75 = icmp eq i32 %464, 0
  br i1 %.not75, label %466, label %465

465:                                              ; preds = %463
  br label %467

466:                                              ; preds = %463
  call void @puttext(i8* noundef %.2, i8* noundef nonnull %309, i8* noundef %.0)
  br label %467

467:                                              ; preds = %466, %465
  %.6 = phi i32 [ 1, %465 ], [ %.5, %466 ]
  br i1 %.not76, label %471, label %468

468:                                              ; preds = %467
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %470 = load i32, i32* @F2, align 4
  %fputc78 = call i32 @fputc(i32 %470, %struct._IO_FILE* %469)
  br label %471

471:                                              ; preds = %468, %467
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %473 = load i32, i32* @F1, align 4
  %fputc77 = call i32 @fputc(i32 %473, %struct._IO_FILE* %472)
  br label %474

474:                                              ; preds = %471, %408, %404
  %.10 = phi i32 [ %.9, %471 ], [ %.642, %404 ], [ %.642, %408 ]
  %.124 = phi i32 [ %432, %471 ], [ %.023, %404 ], [ %.023, %408 ]
  %.721 = phi i32 [ %423, %471 ], [ %.620, %404 ], [ %.620, %408 ]
  %.7 = phi i32 [ %.6, %471 ], [ %.5, %404 ], [ %.5, %408 ]
  %475 = icmp sgt i32 %.721, -1
  br i1 %475, label %476, label %539

476:                                              ; preds = %474
  %477 = sext i32 %.721 to i64
  %478 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %477
  %479 = load %struct.colstr*, %struct.colstr** %478, align 8
  %480 = zext i32 %.3 to i64
  %481 = getelementptr inbounds %struct.colstr, %struct.colstr* %479, i64 %480, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = call i32 @vspen(i8* noundef %482) #4
  %.not67 = icmp eq i32 %483, 0
  br i1 %.not67, label %537, label %484

484:                                              ; preds = %476
  %485 = add nuw nsw i32 %.3, 1
  %486 = load i32, i32* @ncol, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %488, label %522

488:                                              ; preds = %484
  %489 = sext i32 %.721 to i64
  %490 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %489
  %491 = load %struct.colstr*, %struct.colstr** %490, align 8
  %492 = add nuw nsw i32 %.3, 1
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds %struct.colstr, %struct.colstr* %491, i64 %493, i32 0
  %495 = load i8*, i8** %494, align 8
  %496 = call i32 @vspen(i8* noundef %495) #4
  %.not70 = icmp eq i32 %496, 0
  br i1 %.not70, label %522, label %497

497:                                              ; preds = %488
  %498 = zext i32 %.3 to i64
  %499 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = add nuw nsw i32 %.3, 1
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = icmp eq i32 %500, %504
  br i1 %505, label %506, label %522

506:                                              ; preds = %497
  %507 = sext i32 %1 to i64
  %508 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  %511 = add nuw nsw i32 %.3, 1
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %510, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %514, 0
  %516 = zext i1 %515 to i32
  %517 = icmp eq i32 %.124, %516
  br i1 %517, label %518, label %522

518:                                              ; preds = %506
  %519 = add nuw nsw i32 %.3, 1
  %520 = call i32 @left(i32 noundef %0, i32 noundef %519, i32* noundef nonnull %3) #4
  %521 = icmp slt i32 %520, 0
  br label %522

522:                                              ; preds = %518, %506, %497, %488, %484
  %523 = phi i1 [ false, %506 ], [ false, %497 ], [ false, %488 ], [ false, %484 ], [ %521, %518 ]
  %524 = zext i1 %523 to i32
  br i1 %523, label %536, label %525

525:                                              ; preds = %522
  %526 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %527 = add nuw nsw i32 %.3, 97
  %528 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %526, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 noundef %527) #4
  %.not68 = icmp eq i32 %.124, 0
  br i1 %.not68, label %533, label %529

529:                                              ; preds = %525
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %531 = add nuw nsw i32 %.3, 97
  %532 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %530, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %531) #4
  br label %533

533:                                              ; preds = %529, %525
  %534 = add nsw i32 %.10, 1
  %535 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc69 = call i32 @fputc(i32 39, %struct._IO_FILE* %535)
  br label %536

536:                                              ; preds = %533, %522
  %.11 = phi i32 [ %534, %533 ], [ %.10, %522 ]
  br label %538

537:                                              ; preds = %476
  br label %538

538:                                              ; preds = %537, %536
  %.12 = phi i32 [ %.11, %536 ], [ %.10, %537 ]
  %.632 = phi i32 [ %524, %536 ], [ 0, %537 ]
  br label %539

539:                                              ; preds = %538, %474
  %.1345 = phi i32 [ %.12, %538 ], [ %.10, %474 ]
  %.733 = phi i32 [ %.632, %538 ], [ %.531, %474 ]
  %540 = icmp sgt i32 %.1345, 7
  br i1 %540, label %541, label %547

541:                                              ; preds = %539
  %542 = load i32, i32* @ncol, align 4
  %543 = icmp slt i32 %.3, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %541
  %545 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %546 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %545)
  br label %547

547:                                              ; preds = %544, %541, %539
  %.14 = phi i32 [ 0, %544 ], [ %.1345, %541 ], [ %.1345, %539 ]
  br label %548

548:                                              ; preds = %547, %418, %414, %392, %391, %252
  %.15 = phi i32 [ %.137, %252 ], [ %.137, %392 ], [ %.137, %391 ], [ %.642, %414 ], [ %.642, %418 ], [ %.14, %547 ]
  %.834 = phi i32 [ %.026, %252 ], [ %.026, %392 ], [ %.026, %391 ], [ %.531, %414 ], [ %.531, %418 ], [ %.733, %547 ]
  %.225 = phi i32 [ %.023, %252 ], [ %.023, %392 ], [ %.023, %391 ], [ %.023, %414 ], [ %.023, %418 ], [ %.124, %547 ]
  %.822 = phi i32 [ %.418, %252 ], [ %.418, %392 ], [ %.418, %391 ], [ %.620, %414 ], [ %.620, %418 ], [ %.721, %547 ]
  %.8 = phi i32 [ %.5, %252 ], [ %.5, %392 ], [ %.5, %391 ], [ %.5, %414 ], [ %.5, %418 ], [ %.7, %547 ]
  %549 = add nuw nsw i32 %.3, 1
  br label %230, !llvm.loop !10

550:                                              ; preds = %230
  %551 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %551)
  %552 = call i32 @allh(i32 noundef %0) #4
  %.not57 = icmp eq i32 %552, 0
  br i1 %.not57, label %558, label %553

553:                                              ; preds = %550
  %554 = load i32, i32* @pr1403, align 4
  %.not62 = icmp eq i32 %554, 0
  br i1 %.not62, label %555, label %558

555:                                              ; preds = %553
  %556 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %557 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %556, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef 36) #4
  br label %558

558:                                              ; preds = %555, %553, %550
  %559 = load i32, i32* @watchout, align 4
  %.not58 = icmp eq i32 %559, 0
  br i1 %.not58, label %561, label %560

560:                                              ; preds = %558
  call void @funnies(i32 noundef %0, i32 noundef %1)
  br label %561

561:                                              ; preds = %560, %558
  %.not59 = icmp eq i32 %.5, 0
  br i1 %.not59, label %597, label %562

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %594, %562
  %.4 = phi i32 [ 0, %562 ], [ %595, %594 ]
  %564 = load i32, i32* @ncol, align 4
  %565 = icmp slt i32 %.4, %564
  br i1 %565, label %566, label %596

566:                                              ; preds = %563
  %567 = sext i32 %1 to i64
  %568 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %567
  %569 = load %struct.colstr*, %struct.colstr** %568, align 8
  %570 = zext i32 %.4 to i64
  %571 = getelementptr inbounds %struct.colstr, %struct.colstr* %569, i64 %570, i32 0
  %572 = load i8*, i8** %571, align 8
  %573 = call i32 @vspen(i8* noundef %572) #4
  %.not60 = icmp eq i32 %573, 0
  br i1 %.not60, label %593, label %574

574:                                              ; preds = %566
  %575 = icmp eq i32 %1, 0
  br i1 %575, label %587, label %576

576:                                              ; preds = %574
  %577 = call i32 @prev(i32 noundef %1) #4
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %587, label %579

579:                                              ; preds = %576
  %580 = sext i32 %577 to i64
  %581 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %580
  %582 = load %struct.colstr*, %struct.colstr** %581, align 8
  %583 = zext i32 %.4 to i64
  %584 = getelementptr inbounds %struct.colstr, %struct.colstr* %582, i64 %583, i32 0
  %585 = load i8*, i8** %584, align 8
  %586 = call i32 @vspen(i8* noundef %585) #4
  %.not61 = icmp eq i32 %586, 0
  br i1 %.not61, label %587, label %593

587:                                              ; preds = %579, %576, %574
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %589 = add nuw nsw i32 %.4, 97
  %590 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %588, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 noundef %589) #4
  %591 = zext i32 %.4 to i64
  %592 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %591
  store i32 %1, i32* %592, align 4
  br label %593

593:                                              ; preds = %587, %579, %566
  br label %594

594:                                              ; preds = %593
  %595 = add nuw nsw i32 %.4, 1
  br label %563, !llvm.loop !11

596:                                              ; preds = %563
  br label %597

597:                                              ; preds = %596, %561, %111, %97
  ret void
}

declare dso_local void @fullwide(i32 noundef, i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @next(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @point(i32 noundef) #1

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local void @runtabs(i32 noundef, i32 noundef) #1

declare dso_local i32 @allh(i32 noundef) #1

declare dso_local i32 @left(i32 noundef, i32 noundef, i32* noundef) #1

declare dso_local void @tohcol(i32 noundef) #1

declare dso_local void @drawvert(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @puttext(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = ptrtoint i8* %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = call i32 @point(i32 noundef %5) #4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %17, label %7

7:                                                ; preds = %3
  call void @putfont(i8* noundef %1)
  call void @putsize(i8* noundef %2)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %8)
  %9 = load i8, i8* %1, align 1
  %10 = icmp sgt i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 noundef 31) #4
  br label %14

14:                                               ; preds = %11, %7
  %.not1 = icmp eq i8* %2, null
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %14
  call void @putsize(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @real(i8* noundef) #1

declare dso_local void @makeline(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @ifline(i8* noundef) #1

declare dso_local i32 @filler(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @funnies(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef 31) #4
  br label %8

8:                                                ; preds = %119, %2
  %.03 = phi i32 [ 0, %2 ], [ %120, %119 ]
  %.0 = phi i32 [ undef, %2 ], [ %.3, %119 ]
  %9 = load i32, i32* @ncol, align 4
  %10 = icmp slt i32 %.03, %9
  br i1 %10, label %11, label %121

11:                                               ; preds = %8
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %12
  %14 = load %struct.colstr*, %struct.colstr** %13, align 8
  %15 = zext i32 %.03 to i64
  %16 = getelementptr inbounds %struct.colstr, %struct.colstr* %14, i64 %15, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = trunc i64 %18 to i32
  %20 = call i32 @point(i32 noundef %19) #4
  %.not6 = icmp eq i32 %20, 0
  br i1 %.not6, label %22, label %21

21:                                               ; preds = %11
  br label %119

22:                                               ; preds = %11
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %119

25:                                               ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %26)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 noundef 37) #4
  br label %30

30:                                               ; preds = %43, %25
  %.05 = phi i32 [ %0, %25 ], [ %44, %43 ]
  %.1 = phi i32 [ %.0, %25 ], [ %.2, %43 ]
  %31 = icmp sgt i32 %.05, -1
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = call i16** @__ctype_b_loc() #6
  %34 = load i16*, i16** %33, align 8
  %35 = call i32 @ctype(i32 noundef %.05, i32 noundef %.03) #4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = and i16 %38, 1024
  %.not8 = icmp eq i16 %39, 0
  br label %40

40:                                               ; preds = %32, %30
  %.2 = phi i32 [ %35, %32 ], [ %.1, %30 ]
  %41 = phi i1 [ %.not8, %32 ], [ false, %30 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = call i32 @prev(i32 noundef %.05) #4
  br label %30, !llvm.loop !12

45:                                               ; preds = %40
  switch i32 %.2, label %66 [
    i32 110, label %46
    i32 99, label %46
    i32 108, label %54
    i32 97, label %58
    i32 114, label %62
  ]

46:                                               ; preds = %45, %45
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %48 = add nuw nsw i32 %.03, 40
  %49 = add nsw i32 %.03, -1
  %50 = call i32 @ctspan(i32 noundef %1, i32 noundef %.03) #4
  %51 = add nsw i32 %49, %50
  %52 = add nsw i32 %51, 80
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i32 noundef %48, i32 noundef %52, i32 noundef %19) #4
  br label %66

54:                                               ; preds = %45
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %56 = add nuw nsw i32 %.03, 40
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef %56) #4
  br label %66

58:                                               ; preds = %45
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %60 = add nuw nsw i32 %.03, 60
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef %60) #4
  br label %66

62:                                               ; preds = %45
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %64 = add nuw nsw i32 %.03, 80
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 noundef %64, i32 noundef %19) #4
  br label %66

66:                                               ; preds = %62, %58, %54, %46, %45
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 noundef 37) #4
  %69 = sext i32 %0 to i64
  %70 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = zext i32 %.03 to i64
  %74 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %72, i64 %73, i64 0
  call void @putfont(i8* noundef nonnull %74)
  %75 = call i32 @prev(i32 noundef %0) #4
  %76 = icmp sgt i32 %0, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %66
  %78 = icmp sgt i32 %75, -1
  br i1 %78, label %79, label %106

79:                                               ; preds = %77
  %80 = sext i32 %75 to i64
  %81 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %80
  %82 = load %struct.colstr*, %struct.colstr** %81, align 8
  %83 = zext i32 %.03 to i64
  %84 = getelementptr inbounds %struct.colstr, %struct.colstr* %82, i64 %83, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @vspen(i8* noundef %85) #4
  %.not7 = icmp eq i32 %86, 0
  br i1 %.not7, label %106, label %87

87:                                               ; preds = %79
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %89 = add nuw nsw i32 %.03, 97
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 noundef %89) #4
  %91 = sext i32 %0 to i64
  %92 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = zext i32 %.03 to i64
  %96 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %101 = add nuw nsw i32 %.03, 97
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 noundef 38, i32 noundef %101, i32 noundef %19) #4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 noundef 38, i32 noundef 38) #4
  br label %105

105:                                              ; preds = %99, %87
  br label %106

106:                                              ; preds = %105, %79, %77, %66
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %107, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 noundef %19) #4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 noundef 37) #4
  %111 = load i8, i8* %74, align 2
  %112 = icmp sgt i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  call void @putfont(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %114

114:                                              ; preds = %113, %106
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 noundef 32) #4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i32 noundef 32, i32 noundef 31, i32 noundef 31, i32 noundef 32) #4
  br label %119

119:                                              ; preds = %114, %24, %21
  %.3 = phi i32 [ %.0, %21 ], [ %.0, %24 ], [ %.2, %114 ]
  %120 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !13

121:                                              ; preds = %8
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i32 noundef 31) #4
  br label %124

124:                                              ; preds = %143, %121
  %.14 = phi i32 [ 0, %121 ], [ %144, %143 ]
  %.01 = phi i32 [ 0, %121 ], [ %.12, %143 ]
  %125 = load i32, i32* @ncol, align 4
  %126 = icmp slt i32 %.14, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = add nsw i32 %0, 1
  %129 = load i32, i32* @nlin, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = call i32 @left(i32 noundef %0, i32 noundef %.14, i32* noundef nonnull %3) #4
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = icmp eq i32 %.01, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %138 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %137)
  br label %139

139:                                              ; preds = %136, %134
  call void @tohcol(i32 noundef %.14) #4
  %140 = add nsw i32 %.01, 2
  %141 = load i32, i32* %3, align 4
  call void @drawvert(i32 noundef %132, i32 noundef %0, i32 noundef %.14, i32 noundef %141) #4
  br label %142

142:                                              ; preds = %139, %131, %127
  %.12 = phi i32 [ %140, %139 ], [ %.01, %131 ], [ %.01, %127 ]
  br label %143

143:                                              ; preds = %142
  %144 = add nuw nsw i32 %.14, 1
  br label %124, !llvm.loop !14

145:                                              ; preds = %124
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %148, label %146

146:                                              ; preds = %145
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %147)
  br label %148

148:                                              ; preds = %146, %145
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putfont(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = load i8, i8* %0, align 1
  %.not1 = icmp eq i8 %3, 0
  br i1 %.not1, label %10, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %6, align 1
  %.not2 = icmp eq i8 %7, 0
  %8 = select i1 %.not2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0)
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef %8, i8* noundef nonnull %0) #4
  br label %10

10:                                               ; preds = %4, %2, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putsize(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %7, label %2

2:                                                ; preds = %1
  %3 = load i8, i8* %0, align 1
  %.not1 = icmp eq i8 %3, 0
  br i1 %.not1, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %0) #4
  br label %7

7:                                                ; preds = %4, %2, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @ctspan(i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
