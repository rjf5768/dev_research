; ModuleID = './t6.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }

@ncol = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c".nr %d 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c".%02d\0A.rm %02d\0A\00", align 1
@nlin = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@.str.2 = private unnamed_addr constant [19 x i8] c".nr %d 0\0A.nr %d 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c".if \\n(%c->\\n(%d .nr %d \\n(%c-\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@font = external dso_local global [100 x [20 x [2 x i8]]], align 16
@stynum = external dso_local global [0 x i32], align 4
@csize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c".if \\n(%d<\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c".nr %d \\w%c%s%c\0A\00", align 1
@F1 = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c".if \\n(%d>=\\n(%d .nr %d \\n(%du+2n\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c".nr %d \\n(%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c".nr %d \\n(%d+\\n(%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c".if \\n(%d>\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c".if \\n(%d<\\n(%d .nr %d +(\\n(%d-\\n(%d)/2\0A\00", align 1
@cll = external dso_local global [20 x [10 x i8]], align 16
@.str.13 = private unnamed_addr constant [12 x i8] c".nr %d %sn\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-\\n(%d\00", align 1
@expflg = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"-%dn\00", align 1
@sep = external dso_local global [0 x i32], align 4
@.str.16 = private unnamed_addr constant [29 x i8] c".if \\n(%d>0 .nr %d \\n(%d/%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c".if \\n(%d<0 .nr %d 0\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c".nr %d +\\n(%d/2\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c".nr %d +\\n(%d\0A\00", align 1
@textflg = external dso_local global i32, align 4
@evenflg = external dso_local global i32, align 4
@evenup = external dso_local global [0 x i32], align 4
@.str.20 = private unnamed_addr constant [36 x i8] c".nr %d (100*\\n(%d/\\n(%d)*\\n(%d/100\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c".nr %d 0\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"+\\n(%d\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c".nr %d \\n(.l-\\n(%d\0A\00", align 1
@boxflg = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@allflg = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c".nr %d \\n(%d/%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c".nr %d 1n\0A\00", align 1
@left1flg = external dso_local global i32, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c".nr %d \\n(%d+(%d*\\n(%d)\0A\00", align 1
@rightl = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c".nr %d (\\n(%d+\\n(%d)/2\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr TW \\n(%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c".nr TW +%d*\\n(%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c".if t .if \\n(TW>\\n(.li .tm Table at line %d file %s is too wide - \\n(TW units\0A\00", align 1
@iline = external dso_local global i32, align 4
@ifile = external dso_local global i8*, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"\\w%c\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\n(%c-\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @maktab() #0 {
  %1 = alloca [20 x i32], align 16
  %2 = alloca [20 x i32], align 16
  br label %3

3:                                                ; preds = %366, %0
  %.0 = phi i32 [ 0, %0 ], [ %367, %366 ]
  %4 = load i32, i32* @ncol, align 4
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %368

6:                                                ; preds = %3
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %12 = add nuw nsw i32 %.0, 80
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %12) #3
  br label %14

14:                                               ; preds = %226, %6
  %.010 = phi i32 [ 0, %6 ], [ %227, %226 ]
  %15 = icmp ult i32 %.010, 2
  br i1 %15, label %16, label %228

16:                                               ; preds = %14
  %.not36 = icmp eq i32 %.010, 0
  br i1 %.not36, label %22, label %17

17:                                               ; preds = %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %19 = add nuw nsw i32 %.0, 80
  %20 = add nuw nsw i32 %.0, 80
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %19, i32 noundef %20) #3
  br label %22

22:                                               ; preds = %17, %16
  br label %23

23:                                               ; preds = %223, %22
  %.01 = phi i32 [ 0, %22 ], [ %224, %223 ]
  %24 = load i32, i32* @nlin, align 4
  %25 = icmp slt i32 %.01, %24
  br i1 %25, label %26, label %225

26:                                               ; preds = %23
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %.not37 = icmp eq i8* %29, null
  br i1 %.not37, label %30, label %34

30:                                               ; preds = %26
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %.not38 = icmp eq i32 %33, 0
  br i1 %.not38, label %35, label %34

34:                                               ; preds = %30, %26
  br label %223

35:                                               ; preds = %30
  %36 = call i32 @prev(i32 noundef %.01) #3
  br label %37

37:                                               ; preds = %51, %35
  %.09 = phi i32 [ %36, %35 ], [ %52, %51 ]
  %.08 = phi i32 [ %.01, %35 ], [ %.09, %51 ]
  %38 = icmp sgt i32 %.09, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = sext i32 %.09 to i64
  %41 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %40
  %42 = load %struct.colstr*, %struct.colstr** %41, align 8
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds %struct.colstr, %struct.colstr* %42, i64 %43, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @vspen(i8* noundef %45) #3
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %39, %37
  %49 = phi i1 [ false, %37 ], [ %47, %39 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = call i32 @prev(i32 noundef %.09) #3
  br label %37, !llvm.loop !4

53:                                               ; preds = %48
  %54 = call i32 @fspan(i32 noundef %.08, i32 noundef %.0) #3
  %.not39 = icmp eq i32 %54, 0
  br i1 %.not39, label %56, label %55

55:                                               ; preds = %53
  br label %223

56:                                               ; preds = %53
  %57 = zext i32 %.01 to i64
  %58 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %57
  %59 = load %struct.colstr*, %struct.colstr** %58, align 8
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds %struct.colstr, %struct.colstr* %59, i64 %60, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @filler(i8* noundef %62)
  %.not40 = icmp eq i32 %63, 0
  br i1 %.not40, label %65, label %64

64:                                               ; preds = %56
  br label %223

65:                                               ; preds = %56
  %66 = call i32 @ctype(i32 noundef %.08, i32 noundef %.0) #3
  switch i32 %66, label %222 [
    i32 97, label %67
    i32 110, label %98
    i32 114, label %179
    i32 99, label %179
    i32 108, label %179
  ]

67:                                               ; preds = %65
  %68 = zext i32 %.0 to i64
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %68
  store i32 1, i32* %69, align 4
  %70 = zext i32 %.01 to i64
  %71 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %70
  %72 = load %struct.colstr*, %struct.colstr** %71, align 8
  %73 = zext i32 %.0 to i64
  %74 = getelementptr inbounds %struct.colstr, %struct.colstr* %72, i64 %73, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %67
  %80 = ptrtoint i8* %75 to i64
  %81 = trunc i64 %80 to i32
  %82 = icmp slt i32 %81, 128
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %.not53 = icmp eq i32 %.010, 0
  br i1 %.not53, label %97, label %84

84:                                               ; preds = %83
  %85 = zext i32 %.0 to i64
  %86 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %90, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i32 noundef 32) #3
  br label %92

92:                                               ; preds = %89, %84
  %93 = zext i32 %.0 to i64
  %94 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %93
  store i32 1, i32* %94, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef %75, i32 noundef 32, i32 noundef 32, i8* noundef %75) #3
  br label %97

97:                                               ; preds = %92, %83, %79, %67
  br label %98

98:                                               ; preds = %97, %65
  %99 = zext i32 %.01 to i64
  %100 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %99
  %101 = load %struct.colstr*, %struct.colstr** %100, align 8
  %102 = zext i32 %.0 to i64
  %103 = getelementptr inbounds %struct.colstr, %struct.colstr* %101, i64 %102, i32 1
  %104 = load i8*, i8** %103, align 8
  %.not45 = icmp eq i8* %104, null
  br i1 %.not45, label %178, label %105

105:                                              ; preds = %98
  %106 = zext i32 %.0 to i64
  %107 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = icmp eq i32 %.010, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i32 noundef 32) #3
  br label %115

115:                                              ; preds = %112, %110, %105
  %116 = zext i32 %.0 to i64
  %117 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %116
  store i32 1, i32* %117, align 4
  %118 = zext i32 %.01 to i64
  %119 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %118
  %120 = load %struct.colstr*, %struct.colstr** %119, align 8
  %121 = zext i32 %.0 to i64
  %122 = getelementptr inbounds %struct.colstr, %struct.colstr* %120, i64 %121, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @real(i8* noundef %123) #3
  %.not46 = icmp eq i32 %124, 0
  br i1 %.not46, label %157, label %125

125:                                              ; preds = %115
  %126 = call i32 @vspen(i8* noundef %123) #3
  %.not50 = icmp eq i32 %126, 0
  br i1 %.not50, label %127, label %157

127:                                              ; preds = %125
  %128 = ptrtoint i8* %123 to i64
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = ptrtoint i8* %123 to i64
  %133 = trunc i64 %132 to i32
  %134 = icmp slt i32 %133, 128
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i1 [ false, %127 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %.not51 = icmp eq i32 %.010, %137
  br i1 %.not51, label %139, label %138

138:                                              ; preds = %135
  br label %223

139:                                              ; preds = %135
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38) #3
  %142 = sext i32 %.08 to i64
  %143 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = zext i32 %.0 to i64
  %147 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %145, i64 %146, i64 0
  %148 = sext i32 %.08 to i64
  %149 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = zext i32 %.0 to i64
  %153 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %151, i64 %152, i64 0
  call void @wide(i8* noundef %123, i8* noundef nonnull %147, i8* noundef nonnull %153)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc52 = call i32 @fputc(i32 10, %struct._IO_FILE* %154)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i32 noundef 38, i32 noundef 31, i32 noundef 38) #3
  br label %157

157:                                              ; preds = %139, %125, %115
  %158 = icmp eq i32 %.010, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %157
  %160 = zext i32 %.01 to i64
  %161 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %160
  %162 = load %struct.colstr*, %struct.colstr** %161, align 8
  %163 = zext i32 %.0 to i64
  %164 = getelementptr inbounds %struct.colstr, %struct.colstr* %162, i64 %163, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @real(i8* noundef %165) #3
  %.not47 = icmp eq i32 %166, 0
  br i1 %.not47, label %177, label %167

167:                                              ; preds = %159
  %168 = call i32 @vspen(i8* noundef %165) #3
  %.not48 = icmp eq i32 %168, 0
  br i1 %.not48, label %169, label %177

169:                                              ; preds = %167
  %170 = call i32 @barent(i8* noundef %165) #3
  %.not49 = icmp eq i32 %170, 0
  br i1 %.not49, label %171, label %177

171:                                              ; preds = %169
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %173 = load i32, i32* @F1, align 4
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %172, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef 38, i32 noundef %173, i8* noundef %165, i32 noundef %173) #3
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %175, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32, i32 noundef 38, i32 noundef 32, i32 noundef 38) #3
  br label %177

177:                                              ; preds = %171, %169, %167, %159, %157
  br label %223

178:                                              ; preds = %98
  br label %179

179:                                              ; preds = %178, %65, %65, %65
  %180 = zext i32 %.01 to i64
  %181 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %180
  %182 = load %struct.colstr*, %struct.colstr** %181, align 8
  %183 = zext i32 %.0 to i64
  %184 = getelementptr inbounds %struct.colstr, %struct.colstr* %182, i64 %183, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @real(i8* noundef %185) #3
  %.not41 = icmp eq i32 %186, 0
  br i1 %.not41, label %221, label %187

187:                                              ; preds = %179
  %188 = call i32 @vspen(i8* noundef %185) #3
  %.not42 = icmp eq i32 %188, 0
  br i1 %.not42, label %189, label %221

189:                                              ; preds = %187
  %190 = ptrtoint i8* %185 to i64
  %191 = trunc i64 %190 to i32
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = ptrtoint i8* %185 to i64
  %195 = trunc i64 %194 to i32
  %196 = icmp slt i32 %195, 128
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i1 [ false, %189 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  %.not43 = icmp eq i32 %.010, %199
  br i1 %.not43, label %201, label %200

200:                                              ; preds = %197
  br label %223

201:                                              ; preds = %197
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38) #3
  %204 = sext i32 %.08 to i64
  %205 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = zext i32 %.0 to i64
  %209 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %207, i64 %208, i64 0
  %210 = sext i32 %.08 to i64
  %211 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = zext i32 %.0 to i64
  %215 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %213, i64 %214, i64 0
  call void @wide(i8* noundef %185, i8* noundef nonnull %209, i8* noundef nonnull %215)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc44 = call i32 @fputc(i32 10, %struct._IO_FILE* %216)
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %218 = add nuw nsw i32 %.0, 80
  %219 = add nuw nsw i32 %.0, 80
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef %218, i32 noundef 38, i32 noundef %219, i32 noundef 38) #3
  br label %221

221:                                              ; preds = %201, %187, %179
  br label %222

222:                                              ; preds = %221, %65
  br label %223

223:                                              ; preds = %222, %200, %177, %138, %64, %55, %34
  %224 = add nuw nsw i32 %.01, 1
  br label %23, !llvm.loop !6

225:                                              ; preds = %23
  br label %226

226:                                              ; preds = %225
  %227 = add nuw nsw i32 %.010, 1
  br label %14, !llvm.loop !7

228:                                              ; preds = %14
  %229 = zext i32 %.0 to i64
  %230 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %.not25 = icmp eq i32 %231, 0
  br i1 %.not25, label %237, label %232

232:                                              ; preds = %228
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %234 = add nuw nsw i32 %.0, 80
  %235 = add nuw nsw i32 %.0, 80
  %236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %233, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef 32, i32 noundef %234, i32 noundef %235, i32 noundef 32) #3
  br label %237

237:                                              ; preds = %232, %228
  %238 = zext i32 %.0 to i64
  %239 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %.not26 = icmp eq i32 %240, 0
  br i1 %.not26, label %257, label %241

241:                                              ; preds = %237
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %243 = add nuw nsw i32 %.0, 60
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %242, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %243, i32 noundef 31) #3
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %246 = add nuw nsw i32 %.0, 60
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %245, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef 38, i32 noundef %246, i32 noundef 32) #3
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %249 = add nuw nsw i32 %.0, 80
  %250 = add nuw nsw i32 %.0, 80
  %251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %248, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef 38, i32 noundef %249, i32 noundef %250, i32 noundef 38) #3
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %253 = add nuw nsw i32 %.0, 80
  %254 = add nuw nsw i32 %.0, 60
  %255 = add nuw nsw i32 %.0, 80
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %252, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 noundef 38, i32 noundef %253, i32 noundef %254, i32 noundef %255, i32 noundef 38) #3
  br label %257

257:                                              ; preds = %241, %237
  %258 = zext i32 %.0 to i64
  %259 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %258, i64 0
  %260 = load i8, i8* %259, align 2
  %.not27 = icmp eq i8 %260, 0
  br i1 %.not27, label %270, label %261

261:                                              ; preds = %257
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %263 = zext i32 %.0 to i64
  %264 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %263, i64 0
  %265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %262, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 noundef 38, i8* noundef nonnull %264) #3
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %267 = add nuw nsw i32 %.0, 80
  %268 = add nuw nsw i32 %.0, 80
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %266, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef %267, i32 noundef 38, i32 noundef %268, i32 noundef 38) #3
  br label %270

270:                                              ; preds = %261, %257
  br label %271

271:                                              ; preds = %363, %270
  %.12 = phi i32 [ 0, %270 ], [ %364, %363 ]
  %272 = load i32, i32* @nlin, align 4
  %273 = icmp slt i32 %.12, %272
  br i1 %273, label %274, label %365

274:                                              ; preds = %271
  %275 = call i32 @lspan(i32 noundef %.12, i32 noundef %.0) #3
  %.not28 = icmp eq i32 %275, 0
  br i1 %.not28, label %362, label %276

276:                                              ; preds = %274
  %277 = zext i32 %.12 to i64
  %278 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %277
  %279 = load %struct.colstr*, %struct.colstr** %278, align 8
  %280 = sub nsw i32 %.0, %275
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.colstr, %struct.colstr* %279, i64 %281, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @real(i8* noundef %283) #3
  %.not29 = icmp eq i32 %284, 0
  br i1 %.not29, label %289, label %285

285:                                              ; preds = %276
  %286 = call i32 @barent(i8* noundef %283) #3
  %.not30 = icmp eq i32 %286, 0
  br i1 %.not30, label %287, label %289

287:                                              ; preds = %285
  %288 = call i32 @vspen(i8* noundef %283) #3
  %.not31 = icmp eq i32 %288, 0
  br i1 %.not31, label %290, label %289

289:                                              ; preds = %287, %285, %276
  br label %363

290:                                              ; preds = %287
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %291, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38) #3
  %293 = zext i32 %.12 to i64
  %294 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %293
  %295 = load %struct.colstr*, %struct.colstr** %294, align 8
  %296 = sub nsw i32 %.0, %275
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.colstr, %struct.colstr* %295, i64 %297, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = zext i32 %.12 to i64
  %301 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = sub nsw i32 %.0, %275
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %303, i64 %305, i64 0
  %307 = zext i32 %.12 to i64
  %308 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = sub nsw i32 %.0, %275
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %310, i64 %312, i64 0
  call void @wide(i8* noundef %299, i8* noundef nonnull %306, i8* noundef nonnull %313)
  br label %314

314:                                              ; preds = %332, %290
  %.06 = phi i32 [ %275, %290 ], [ %333, %332 ]
  %315 = icmp sgt i32 %.06, -1
  br i1 %315, label %316, label %334

316:                                              ; preds = %314
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %318 = add nuw nsw i32 %.0, 80
  %319 = sub nsw i32 %318, %.06
  %320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %317, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 noundef %319) #3
  %321 = load i32, i32* @expflg, align 4
  %.not35 = icmp eq i32 %321, 0
  br i1 %.not35, label %322, label %331

322:                                              ; preds = %316
  %323 = icmp sgt i32 %.06, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %322
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %326 = sub nsw i32 %.0, %.06
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %325, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 noundef %329) #3
  br label %331

331:                                              ; preds = %324, %322, %316
  br label %332

332:                                              ; preds = %331
  %333 = add nsw i32 %.06, -1
  br label %314, !llvm.loop !8

334:                                              ; preds = %314
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc32 = call i32 @fputc(i32 10, %struct._IO_FILE* %335)
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %336, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 noundef 38, i32 noundef 38, i32 noundef 38, i32 noundef %275) #3
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %338, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef 38, i32 noundef 38) #3
  br label %340

340:                                              ; preds = %359, %334
  %.17 = phi i32 [ 1, %334 ], [ %360, %359 ]
  %.not33 = icmp sgt i32 %.17, %275
  br i1 %.not33, label %361, label %341

341:                                              ; preds = %340
  %342 = sub nsw i32 %.0, %275
  %343 = add nsw i32 %342, %.17
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %.not34 = icmp eq i32 %346, 0
  br i1 %.not34, label %353, label %347

347:                                              ; preds = %341
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %349 = sub nsw i32 %.0, %275
  %350 = add nsw i32 %349, %.17
  %351 = add nsw i32 %350, 60
  %352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %348, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef %351, i32 noundef 38) #3
  br label %353

353:                                              ; preds = %347, %341
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %355 = sub nsw i32 %.0, %275
  %356 = add nsw i32 %355, %.17
  %357 = add nsw i32 %356, 80
  %358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %354, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %357, i32 noundef 38) #3
  br label %359

359:                                              ; preds = %353
  %360 = add nuw nsw i32 %.17, 1
  br label %340, !llvm.loop !9

361:                                              ; preds = %340
  br label %362

362:                                              ; preds = %361, %274
  br label %363

363:                                              ; preds = %362, %289
  %364 = add nuw nsw i32 %.12, 1
  br label %271, !llvm.loop !10

365:                                              ; preds = %271
  br label %366

366:                                              ; preds = %365
  %367 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !11

368:                                              ; preds = %3
  %369 = load i32, i32* @textflg, align 4
  %.not = icmp eq i32 %369, 0
  br i1 %.not, label %371, label %370

370:                                              ; preds = %368
  call void @untext() #3
  br label %371

371:                                              ; preds = %370, %368
  %372 = load i32, i32* @evenflg, align 4
  %.not11 = icmp eq i32 %372, 0
  br i1 %.not11, label %419, label %373

373:                                              ; preds = %371
  %374 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %374, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #3
  br label %376

376:                                              ; preds = %390, %373
  %.1 = phi i32 [ 0, %373 ], [ %391, %390 ]
  %377 = load i32, i32* @ncol, align 4
  %378 = icmp slt i32 %.1, %377
  br i1 %378, label %379, label %392

379:                                              ; preds = %376
  %380 = zext i32 %.1 to i64
  %381 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %390

385:                                              ; preds = %379
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %387 = add nuw nsw i32 %.1, 80
  %388 = add nuw nsw i32 %.1, 80
  %389 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %386, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %387, i32 noundef 38, i32 noundef 38, i32 noundef %388) #3
  br label %390

390:                                              ; preds = %385, %384
  %391 = add nuw nsw i32 %.1, 1
  br label %376, !llvm.loop !12

392:                                              ; preds = %376
  br label %393

393:                                              ; preds = %416, %392
  %.2 = phi i32 [ 0, %392 ], [ %417, %416 ]
  %394 = load i32, i32* @ncol, align 4
  %395 = icmp slt i32 %.2, %394
  br i1 %395, label %396, label %418

396:                                              ; preds = %393
  %397 = zext i32 %.2 to i64
  %398 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  br label %416

402:                                              ; preds = %396
  %403 = zext i32 %.2 to i64
  %404 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %.not24 = icmp eq i32 %405, 0
  br i1 %.not24, label %412, label %406

406:                                              ; preds = %402
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %408 = add nuw nsw i32 %.2, 60
  %409 = add nuw nsw i32 %.2, 60
  %410 = add nuw nsw i32 %.2, 80
  %411 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %407, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 noundef %408, i32 noundef %409, i32 noundef %410, i32 noundef 38) #3
  br label %412

412:                                              ; preds = %406, %402
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %414 = add nuw nsw i32 %.2, 80
  %415 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %413, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %414, i32 noundef 38) #3
  br label %416

416:                                              ; preds = %412, %401
  %417 = add nuw nsw i32 %.2, 1
  br label %393, !llvm.loop !13

418:                                              ; preds = %393
  br label %419

419:                                              ; preds = %418, %371
  br label %420

420:                                              ; preds = %424, %419
  %.03 = phi i32 [ 0, %419 ], [ %428, %424 ]
  %.3 = phi i32 [ 0, %419 ], [ %429, %424 ]
  %421 = load i32, i32* @ncol, align 4
  %422 = icmp slt i32 %.3, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %420
  br label %424

424:                                              ; preds = %423
  %425 = zext i32 %.3 to i64
  %426 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %.03, %427
  %429 = add nuw nsw i32 %.3, 1
  br label %420, !llvm.loop !14

430:                                              ; preds = %420
  %431 = load i32, i32* @expflg, align 4
  %.not12 = icmp eq i32 %431, 0
  br i1 %.not12, label %467, label %432

432:                                              ; preds = %430
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %433, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef 38) #3
  br label %435

435:                                              ; preds = %442, %432
  %.4 = phi i32 [ 0, %432 ], [ %443, %442 ]
  %436 = load i32, i32* @ncol, align 4
  %437 = icmp slt i32 %.4, %436
  br i1 %437, label %438, label %444

438:                                              ; preds = %435
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %440 = add nuw nsw i32 %.4, 80
  %441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %439, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 noundef %440) #3
  br label %442

442:                                              ; preds = %438
  %443 = add nuw nsw i32 %.4, 1
  br label %435, !llvm.loop !15

444:                                              ; preds = %435
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %445)
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %446, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 38, i32 noundef 38) #3
  %448 = load i32, i32* @boxflg, align 4
  %.not21 = icmp eq i32 %448, 0
  br i1 %.not21, label %449, label %453

449:                                              ; preds = %444
  %450 = load i32, i32* @dboxflg, align 4
  %.not22 = icmp eq i32 %450, 0
  br i1 %.not22, label %451, label %453

451:                                              ; preds = %449
  %452 = load i32, i32* @allflg, align 4
  %.not23 = icmp eq i32 %452, 0
  br i1 %.not23, label %455, label %453

453:                                              ; preds = %451, %449, %444
  %454 = add nsw i32 %.03, 1
  br label %462

455:                                              ; preds = %451
  %456 = load i32, i32* @ncol, align 4
  %457 = add nsw i32 %456, -1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %.03, %460
  br label %462

462:                                              ; preds = %455, %453
  %.14 = phi i32 [ %454, %453 ], [ %461, %455 ]
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %463, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 38, i32 noundef 38, i32 noundef %.14) #3
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %465, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef 38, i32 noundef 38) #3
  br label %470

467:                                              ; preds = %430
  %468 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %468, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 38) #3
  br label %470

470:                                              ; preds = %467, %462
  %471 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %471, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 79) #3
  %473 = load i32, i32* @boxflg, align 4
  %.not13 = icmp eq i32 %473, 0
  br i1 %.not13, label %474, label %481

474:                                              ; preds = %470
  %475 = load i32, i32* @allflg, align 4
  %.not14 = icmp eq i32 %475, 0
  br i1 %.not14, label %476, label %481

476:                                              ; preds = %474
  %477 = load i32, i32* @dboxflg, align 4
  %.not15 = icmp eq i32 %477, 0
  br i1 %.not15, label %478, label %481

478:                                              ; preds = %476
  %479 = load i32, i32* @left1flg, align 4
  %480 = icmp ne i32 %479, 0
  %phi.cast = zext i1 %480 to i32
  br label %481

481:                                              ; preds = %478, %476, %474, %470
  %482 = phi i32 [ 1, %476 ], [ 1, %474 ], [ 1, %470 ], [ %phi.cast, %478 ]
  br label %483

483:                                              ; preds = %504, %481
  %.25 = phi i32 [ %482, %481 ], [ %507, %504 ]
  %.5 = phi i32 [ 0, %481 ], [ %508, %504 ]
  %484 = load i32, i32* @ncol, align 4
  %485 = icmp slt i32 %.5, %484
  br i1 %485, label %486, label %509

486:                                              ; preds = %483
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %488 = add nuw nsw i32 %.5, 40
  %489 = add nuw nsw i32 %.5, 79
  %490 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %487, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 noundef %488, i32 noundef %489, i32 noundef %.25, i32 noundef 38) #3
  %491 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %492 = add nuw nsw i32 %.5, 80
  %493 = add nuw nsw i32 %.5, 40
  %494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %491, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %492, i32 noundef %493) #3
  %495 = zext i32 %.5 to i64
  %496 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 %495
  %497 = load i32, i32* %496, align 4
  %.not20 = icmp eq i32 %497, 0
  br i1 %.not20, label %503, label %498

498:                                              ; preds = %486
  %499 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %500 = add nuw nsw i32 %.5, 60
  %501 = add nuw nsw i32 %.5, 40
  %502 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %499, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %500, i32 noundef %501) #3
  br label %503

503:                                              ; preds = %498, %486
  br label %504

504:                                              ; preds = %503
  %505 = zext i32 %.5 to i64
  %506 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = add nuw nsw i32 %.5, 1
  br label %483, !llvm.loop !16

509:                                              ; preds = %483
  %510 = load i32, i32* @rightl, align 4
  %.not16 = icmp eq i32 %510, 0
  br i1 %.not16, label %518, label %511

511:                                              ; preds = %509
  %512 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %513 = load i32, i32* @ncol, align 4
  %514 = add nsw i32 %513, 79
  %515 = add nsw i32 %513, 39
  %516 = add nsw i32 %513, 78
  %517 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %512, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 noundef %514, i32 noundef %515, i32 noundef %516) #3
  br label %518

518:                                              ; preds = %511, %509
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %520 = load i32, i32* @ncol, align 4
  %521 = add nsw i32 %520, 79
  %522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %519, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef %521) #3
  %523 = load i32, i32* @boxflg, align 4
  %.not17 = icmp eq i32 %523, 0
  br i1 %.not17, label %524, label %528

524:                                              ; preds = %518
  %525 = load i32, i32* @allflg, align 4
  %.not18 = icmp eq i32 %525, 0
  br i1 %.not18, label %526, label %528

526:                                              ; preds = %524
  %527 = load i32, i32* @dboxflg, align 4
  %.not19 = icmp eq i32 %527, 0
  br i1 %.not19, label %536, label %528

528:                                              ; preds = %526, %524, %518
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %530 = load i32, i32* @ncol, align 4
  %531 = add nsw i32 %530, -1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %529, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 noundef %534, i32 noundef 38) #3
  br label %536

536:                                              ; preds = %528, %526
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %538 = load i32, i32* @iline, align 4
  %539 = add nsw i32 %538, -1
  %540 = load i8*, i8** @ifile, align 8
  %541 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %537, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i64 0, i64 0), i32 noundef %539, i8* noundef %540) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @fspan(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filler(i8* noundef %0) #0 {
  %2 = ptrtoint i8* %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = call i32 @point(i32 noundef %3) #3
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %12, label %5

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1
  %7 = icmp eq i8 %6, 92
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %0, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 82
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %phi.cast, %8 ]
  ret i32 %13
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @real(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @wide(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = ptrtoint i8* %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = call i32 @point(i32 noundef %5) #3
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %28, label %7

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %9 = load i32, i32* @F1, align 4
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 noundef %9) #3
  %11 = load i8, i8* %1, align 1
  %12 = icmp sgt i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  call void @putfont(i8* noundef nonnull %1) #3
  br label %14

14:                                               ; preds = %13, %7
  %15 = load i8, i8* %2, align 1
  %.not1 = icmp eq i8 %15, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %14
  call void @putsize(i8* noundef nonnull %2) #3
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %18)
  %19 = load i8, i8* %1, align 1
  %20 = icmp sgt i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @putfont(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #3
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i8, i8* %2, align 1
  %.not2 = icmp eq i8 %23, 0
  br i1 %.not2, label %25, label %24

24:                                               ; preds = %22
  call void @putsize(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #3
  br label %25

25:                                               ; preds = %24, %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %27 = load i32, i32* @F1, align 4
  %fputc = call i32 @fputc(i32 %27, %struct._IO_FILE* %26)
  br label %31

28:                                               ; preds = %3
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %0) #3
  br label %31

31:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @barent(i8* noundef) #1

declare dso_local i32 @lspan(i32 noundef, i32 noundef) #1

declare dso_local void @untext() #1

declare dso_local i32 @point(i32 noundef) #1

declare dso_local void @putfont(i8* noundef) #1

declare dso_local void @putsize(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #2

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
