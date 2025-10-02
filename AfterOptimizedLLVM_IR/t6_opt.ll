; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t6.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i32], align 16
  %10 = alloca [20 x i32], align 16
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %548, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @ncol, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %551

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %18
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 80
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %333, %16
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %336

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 80
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 80
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %36, i32 noundef %38)
  br label %40

40:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %329, %40
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @nlin, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %332

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  br label %329

58:                                               ; preds = %51
  %59 = load i32, i32* %2, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @prev(i32 noundef %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %81, %58
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %67
  %69 = load %struct.colstr*, %struct.colstr** %68, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.colstr, %struct.colstr* %69, i64 %71
  %73 = getelementptr inbounds %struct.colstr, %struct.colstr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @vspen(i8* noundef %74)
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %65, %62
  %78 = phi i1 [ false, %62 ], [ %76, %65 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @prev(i32 noundef %82)
  store i32 %83, i32* %7, align 4
  br label %62, !llvm.loop !4

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @fspan(i32 noundef %85, i32 noundef %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %329

90:                                               ; preds = %84
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %92
  %94 = load %struct.colstr*, %struct.colstr** %93, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.colstr, %struct.colstr* %94, i64 %96
  %98 = getelementptr inbounds %struct.colstr, %struct.colstr* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @filler(i8* noundef %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %329

103:                                              ; preds = %90
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @ctype(i32 noundef %104, i32 noundef %105)
  switch i32 %106, label %328 [
    i32 97, label %107
    i32 110, label %148
    i32 114, label %265
    i32 99, label %265
    i32 108, label %265
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %109
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %112
  %114 = load %struct.colstr*, %struct.colstr** %113, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.colstr, %struct.colstr* %114, i64 %116
  %118 = getelementptr inbounds %struct.colstr, %struct.colstr* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %107
  %124 = load i8*, i8** %11, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = icmp slt i32 %125, 128
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i32 noundef 32)
  br label %139

139:                                              ; preds = %136, %130
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %141
  store i32 1, i32* %142, align 4
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef %144, i32 noundef 32, i32 noundef 32, i8* noundef %145)
  br label %147

147:                                              ; preds = %139, %127, %123, %107
  br label %148

148:                                              ; preds = %103, %147
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %150
  %152 = load %struct.colstr*, %struct.colstr** %151, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.colstr, %struct.colstr* %152, i64 %154
  %156 = getelementptr inbounds %struct.colstr, %struct.colstr* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %264

159:                                              ; preds = %148
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i32 noundef 32)
  br label %171

171:                                              ; preds = %168, %165, %159
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %173
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %176
  %178 = load %struct.colstr*, %struct.colstr** %177, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.colstr, %struct.colstr* %178, i64 %180
  %182 = getelementptr inbounds %struct.colstr, %struct.colstr* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %11, align 8
  %184 = call i32 @real(i8* noundef %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %232

186:                                              ; preds = %171
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @vspen(i8* noundef %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %232, label %190

190:                                              ; preds = %186
  %191 = load i8*, i8** %11, align 8
  %192 = ptrtoint i8* %191 to i32
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i8*, i8** %11, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = icmp slt i32 %196, 128
  br label %198

198:                                              ; preds = %194, %190
  %199 = phi i1 [ false, %190 ], [ %197, %194 ]
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %329

204:                                              ; preds = %198
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38)
  %207 = load i8*, i8** %11, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %212
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %213, i64 0, i64 %215
  %217 = getelementptr inbounds [2 x i8], [2 x i8]* %216, i64 0, i64 0
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %222
  %224 = load i32, i32* %1, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %223, i64 0, i64 %225
  %227 = getelementptr inbounds [4 x i8], [4 x i8]* %226, i64 0, i64 0
  call void @wide(i8* noundef %207, i8* noundef %217, i8* noundef %227)
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %230, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i32 noundef 38, i32 noundef 31, i32 noundef 38)
  br label %232

232:                                              ; preds = %204, %186, %171
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %263

235:                                              ; preds = %232
  %236 = load i32, i32* %2, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %237
  %239 = load %struct.colstr*, %struct.colstr** %238, align 8
  %240 = load i32, i32* %1, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.colstr, %struct.colstr* %239, i64 %241
  %243 = getelementptr inbounds %struct.colstr, %struct.colstr* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %11, align 8
  %245 = call i32 @real(i8* noundef %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %235
  %248 = load i8*, i8** %11, align 8
  %249 = call i32 @vspen(i8* noundef %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %247
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @barent(i8* noundef %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %251
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %257 = load i32, i32* @F1, align 4
  %258 = load i8*, i8** %11, align 8
  %259 = load i32, i32* @F1, align 4
  %260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %256, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef 38, i32 noundef %257, i8* noundef %258, i32 noundef %259)
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %261, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32, i32 noundef 38, i32 noundef 32, i32 noundef 38)
  br label %263

263:                                              ; preds = %255, %251, %247, %235, %232
  br label %329

264:                                              ; preds = %148
  br label %265

265:                                              ; preds = %103, %103, %103, %264
  %266 = load i32, i32* %2, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %267
  %269 = load %struct.colstr*, %struct.colstr** %268, align 8
  %270 = load i32, i32* %1, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.colstr, %struct.colstr* %269, i64 %271
  %273 = getelementptr inbounds %struct.colstr, %struct.colstr* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  store i8* %274, i8** %11, align 8
  %275 = call i32 @real(i8* noundef %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %327

277:                                              ; preds = %265
  %278 = load i8*, i8** %11, align 8
  %279 = call i32 @vspen(i8* noundef %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %327, label %281

281:                                              ; preds = %277
  %282 = load i8*, i8** %11, align 8
  %283 = ptrtoint i8* %282 to i32
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i8*, i8** %11, align 8
  %287 = ptrtoint i8* %286 to i32
  %288 = icmp slt i32 %287, 128
  br label %289

289:                                              ; preds = %285, %281
  %290 = phi i1 [ false, %281 ], [ %288, %285 ]
  %291 = zext i1 %290 to i32
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %329

295:                                              ; preds = %289
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %296, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38)
  %298 = load i8*, i8** %11, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %303
  %305 = load i32, i32* %1, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %304, i64 0, i64 %306
  %308 = getelementptr inbounds [2 x i8], [2 x i8]* %307, i64 0, i64 0
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %313
  %315 = load i32, i32* %1, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %314, i64 0, i64 %316
  %318 = getelementptr inbounds [4 x i8], [4 x i8]* %317, i64 0, i64 0
  call void @wide(i8* noundef %298, i8* noundef %308, i8* noundef %318)
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %319, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %322 = load i32, i32* %1, align 4
  %323 = add nsw i32 %322, 80
  %324 = load i32, i32* %1, align 4
  %325 = add nsw i32 %324, 80
  %326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %321, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef %323, i32 noundef 38, i32 noundef %325, i32 noundef 38)
  br label %327

327:                                              ; preds = %295, %277, %265
  br label %328

328:                                              ; preds = %327, %103
  br label %329

329:                                              ; preds = %328, %294, %263, %203, %102, %89, %57
  %330 = load i32, i32* %2, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %2, align 4
  br label %41, !llvm.loop !6

332:                                              ; preds = %41
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  br label %27, !llvm.loop !7

336:                                              ; preds = %27
  %337 = load i32, i32* %1, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %336
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %344 = load i32, i32* %1, align 4
  %345 = add nsw i32 %344, 80
  %346 = load i32, i32* %1, align 4
  %347 = add nsw i32 %346, 80
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %343, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef 32, i32 noundef %345, i32 noundef %347, i32 noundef 32)
  br label %349

349:                                              ; preds = %342, %336
  %350 = load i32, i32* %1, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %378

355:                                              ; preds = %349
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %357 = load i32, i32* %1, align 4
  %358 = add nsw i32 %357, 60
  %359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %356, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %358, i32 noundef 31)
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %361 = load i32, i32* %1, align 4
  %362 = add nsw i32 %361, 60
  %363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %360, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef 38, i32 noundef %362, i32 noundef 32)
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %365 = load i32, i32* %1, align 4
  %366 = add nsw i32 %365, 80
  %367 = load i32, i32* %1, align 4
  %368 = add nsw i32 %367, 80
  %369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %364, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef 38, i32 noundef %366, i32 noundef %368, i32 noundef 38)
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %371 = load i32, i32* %1, align 4
  %372 = add nsw i32 %371, 80
  %373 = load i32, i32* %1, align 4
  %374 = add nsw i32 %373, 60
  %375 = load i32, i32* %1, align 4
  %376 = add nsw i32 %375, 80
  %377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %370, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 noundef 38, i32 noundef %372, i32 noundef %374, i32 noundef %376, i32 noundef 38)
  br label %378

378:                                              ; preds = %355, %349
  %379 = load i32, i32* %1, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %380
  %382 = getelementptr inbounds [10 x i8], [10 x i8]* %381, i64 0, i64 0
  %383 = load i8, i8* %382, align 2
  %384 = icmp ne i8 %383, 0
  br i1 %384, label %385, label %398

385:                                              ; preds = %378
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %387 = load i32, i32* %1, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %388
  %390 = getelementptr inbounds [10 x i8], [10 x i8]* %389, i64 0, i64 0
  %391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %386, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 noundef 38, i8* noundef %390)
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %393 = load i32, i32* %1, align 4
  %394 = add nsw i32 %393, 80
  %395 = load i32, i32* %1, align 4
  %396 = add nsw i32 %395, 80
  %397 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %392, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 noundef %394, i32 noundef 38, i32 noundef %396, i32 noundef 38)
  br label %398

398:                                              ; preds = %385, %378
  store i32 0, i32* %2, align 4
  br label %399

399:                                              ; preds = %544, %398
  %400 = load i32, i32* %2, align 4
  %401 = load i32, i32* @nlin, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %547

403:                                              ; preds = %399
  %404 = load i32, i32* %2, align 4
  %405 = load i32, i32* %1, align 4
  %406 = call i32 @lspan(i32 noundef %404, i32 noundef %405)
  store i32 %406, i32* %4, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %543

408:                                              ; preds = %403
  %409 = load i32, i32* %2, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %410
  %412 = load %struct.colstr*, %struct.colstr** %411, align 8
  %413 = load i32, i32* %1, align 4
  %414 = load i32, i32* %4, align 4
  %415 = sub nsw i32 %413, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.colstr, %struct.colstr* %412, i64 %416
  %418 = getelementptr inbounds %struct.colstr, %struct.colstr* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  store i8* %419, i8** %11, align 8
  %420 = load i8*, i8** %11, align 8
  %421 = call i32 @real(i8* noundef %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %408
  %424 = load i8*, i8** %11, align 8
  %425 = call i32 @barent(i8* noundef %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %431, label %427

427:                                              ; preds = %423
  %428 = load i8*, i8** %11, align 8
  %429 = call i32 @vspen(i8* noundef %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %427, %423, %408
  br label %544

432:                                              ; preds = %427
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %433, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38)
  %435 = load i32, i32* %2, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %436
  %438 = load %struct.colstr*, %struct.colstr** %437, align 8
  %439 = load i32, i32* %1, align 4
  %440 = load i32, i32* %4, align 4
  %441 = sub nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.colstr, %struct.colstr* %438, i64 %442
  %444 = getelementptr inbounds %struct.colstr, %struct.colstr* %443, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = load i32, i32* %2, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %450
  %452 = load i32, i32* %1, align 4
  %453 = load i32, i32* %4, align 4
  %454 = sub nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %451, i64 0, i64 %455
  %457 = getelementptr inbounds [2 x i8], [2 x i8]* %456, i64 0, i64 0
  %458 = load i32, i32* %2, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %462
  %464 = load i32, i32* %1, align 4
  %465 = load i32, i32* %4, align 4
  %466 = sub nsw i32 %464, %465
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %463, i64 0, i64 %467
  %469 = getelementptr inbounds [4 x i8], [4 x i8]* %468, i64 0, i64 0
  call void @wide(i8* noundef %445, i8* noundef %457, i8* noundef %469)
  %470 = load i32, i32* %4, align 4
  store i32 %470, i32* %5, align 4
  br label %471

471:                                              ; preds = %496, %432
  %472 = load i32, i32* %5, align 4
  %473 = icmp sge i32 %472, 0
  br i1 %473, label %474, label %499

474:                                              ; preds = %471
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %476 = load i32, i32* %1, align 4
  %477 = add nsw i32 80, %476
  %478 = load i32, i32* %5, align 4
  %479 = sub nsw i32 %477, %478
  %480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %475, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 noundef %479)
  %481 = load i32, i32* @expflg, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %495, label %483

483:                                              ; preds = %474
  %484 = load i32, i32* %5, align 4
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %495

486:                                              ; preds = %483
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %488 = load i32, i32* %1, align 4
  %489 = load i32, i32* %5, align 4
  %490 = sub nsw i32 %488, %489
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %487, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 noundef %493)
  br label %495

495:                                              ; preds = %486, %483, %474
  br label %496

496:                                              ; preds = %495
  %497 = load i32, i32* %5, align 4
  %498 = add nsw i32 %497, -1
  store i32 %498, i32* %5, align 4
  br label %471, !llvm.loop !8

499:                                              ; preds = %471
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %501 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %500, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %503 = load i32, i32* %4, align 4
  %504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %502, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 noundef 38, i32 noundef 38, i32 noundef 38, i32 noundef %503)
  %505 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %505, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef 38, i32 noundef 38)
  store i32 1, i32* %5, align 4
  br label %507

507:                                              ; preds = %539, %499
  %508 = load i32, i32* %5, align 4
  %509 = load i32, i32* %4, align 4
  %510 = icmp sle i32 %508, %509
  br i1 %510, label %511, label %542

511:                                              ; preds = %507
  %512 = load i32, i32* %1, align 4
  %513 = load i32, i32* %4, align 4
  %514 = sub nsw i32 %512, %513
  %515 = load i32, i32* %5, align 4
  %516 = add nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %530

521:                                              ; preds = %511
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %523 = load i32, i32* %1, align 4
  %524 = load i32, i32* %4, align 4
  %525 = sub nsw i32 %523, %524
  %526 = load i32, i32* %5, align 4
  %527 = add nsw i32 %525, %526
  %528 = add nsw i32 %527, 60
  %529 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %522, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef %528, i32 noundef 38)
  br label %530

530:                                              ; preds = %521, %511
  %531 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %532 = load i32, i32* %1, align 4
  %533 = load i32, i32* %4, align 4
  %534 = sub nsw i32 %532, %533
  %535 = load i32, i32* %5, align 4
  %536 = add nsw i32 %534, %535
  %537 = add nsw i32 %536, 80
  %538 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %531, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %537, i32 noundef 38)
  br label %539

539:                                              ; preds = %530
  %540 = load i32, i32* %5, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %5, align 4
  br label %507, !llvm.loop !9

542:                                              ; preds = %507
  br label %543

543:                                              ; preds = %542, %403
  br label %544

544:                                              ; preds = %543, %431
  %545 = load i32, i32* %2, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %2, align 4
  br label %399, !llvm.loop !10

547:                                              ; preds = %399
  br label %548

548:                                              ; preds = %547
  %549 = load i32, i32* %1, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %1, align 4
  br label %12, !llvm.loop !11

551:                                              ; preds = %12
  %552 = load i32, i32* @textflg, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %551
  call void @untext()
  br label %555

555:                                              ; preds = %554, %551
  %556 = load i32, i32* @evenflg, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %618

558:                                              ; preds = %555
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %560 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %559, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 38)
  store i32 0, i32* %1, align 4
  br label %561

561:                                              ; preds = %579, %558
  %562 = load i32, i32* %1, align 4
  %563 = load i32, i32* @ncol, align 4
  %564 = icmp slt i32 %562, %563
  br i1 %564, label %565, label %582

565:                                              ; preds = %561
  %566 = load i32, i32* %1, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %565
  br label %579

572:                                              ; preds = %565
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %574 = load i32, i32* %1, align 4
  %575 = add nsw i32 %574, 80
  %576 = load i32, i32* %1, align 4
  %577 = add nsw i32 %576, 80
  %578 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %573, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 noundef %575, i32 noundef 38, i32 noundef 38, i32 noundef %577)
  br label %579

579:                                              ; preds = %572, %571
  %580 = load i32, i32* %1, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %1, align 4
  br label %561, !llvm.loop !12

582:                                              ; preds = %561
  store i32 0, i32* %1, align 4
  br label %583

583:                                              ; preds = %614, %582
  %584 = load i32, i32* %1, align 4
  %585 = load i32, i32* @ncol, align 4
  %586 = icmp slt i32 %584, %585
  br i1 %586, label %587, label %617

587:                                              ; preds = %583
  %588 = load i32, i32* %1, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i64 0, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %594

593:                                              ; preds = %587
  br label %614

594:                                              ; preds = %587
  %595 = load i32, i32* %1, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %609

600:                                              ; preds = %594
  %601 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %602 = load i32, i32* %1, align 4
  %603 = add nsw i32 %602, 60
  %604 = load i32, i32* %1, align 4
  %605 = add nsw i32 %604, 60
  %606 = load i32, i32* %1, align 4
  %607 = add nsw i32 %606, 80
  %608 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %601, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 noundef %603, i32 noundef %605, i32 noundef %607, i32 noundef 38)
  br label %609

609:                                              ; preds = %600, %594
  %610 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %611 = load i32, i32* %1, align 4
  %612 = add nsw i32 %611, 80
  %613 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %610, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %612, i32 noundef 38)
  br label %614

614:                                              ; preds = %609, %593
  %615 = load i32, i32* %1, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %1, align 4
  br label %583, !llvm.loop !13

617:                                              ; preds = %583
  br label %618

618:                                              ; preds = %617, %555
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %619

619:                                              ; preds = %630, %618
  %620 = load i32, i32* %1, align 4
  %621 = load i32, i32* @ncol, align 4
  %622 = icmp slt i32 %620, %621
  br i1 %622, label %623, label %633

623:                                              ; preds = %619
  %624 = load i32, i32* %1, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* %3, align 4
  %629 = add nsw i32 %628, %627
  store i32 %629, i32* %3, align 4
  br label %630

630:                                              ; preds = %623
  %631 = load i32, i32* %1, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %1, align 4
  br label %619, !llvm.loop !14

633:                                              ; preds = %619
  %634 = load i32, i32* @expflg, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %681

636:                                              ; preds = %633
  %637 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %638 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %637, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef 38)
  store i32 0, i32* %1, align 4
  br label %639

639:                                              ; preds = %648, %636
  %640 = load i32, i32* %1, align 4
  %641 = load i32, i32* @ncol, align 4
  %642 = icmp slt i32 %640, %641
  br i1 %642, label %643, label %651

643:                                              ; preds = %639
  %644 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %645 = load i32, i32* %1, align 4
  %646 = add nsw i32 %645, 80
  %647 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %644, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 noundef %646)
  br label %648

648:                                              ; preds = %643
  %649 = load i32, i32* %1, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %1, align 4
  br label %639, !llvm.loop !15

651:                                              ; preds = %639
  %652 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %653 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %652, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %654 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %655 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %654, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 38, i32 noundef 38)
  %656 = load i32, i32* @boxflg, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %664, label %658

658:                                              ; preds = %651
  %659 = load i32, i32* @dboxflg, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %664, label %661

661:                                              ; preds = %658
  %662 = load i32, i32* @allflg, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %661, %658, %651
  %665 = load i32, i32* %3, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %3, align 4
  br label %675

667:                                              ; preds = %661
  %668 = load i32, i32* @ncol, align 4
  %669 = sub nsw i32 %668, 1
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %670
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* %3, align 4
  %674 = sub nsw i32 %673, %672
  store i32 %674, i32* %3, align 4
  br label %675

675:                                              ; preds = %667, %664
  %676 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %677 = load i32, i32* %3, align 4
  %678 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %676, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 38, i32 noundef 38, i32 noundef %677)
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %680 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %679, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef 38, i32 noundef 38)
  br label %684

681:                                              ; preds = %633
  %682 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %683 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %682, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 38)
  br label %684

684:                                              ; preds = %681, %675
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %686 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %685, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 79)
  %687 = load i32, i32* @boxflg, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %698, label %689

689:                                              ; preds = %684
  %690 = load i32, i32* @allflg, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %698, label %692

692:                                              ; preds = %689
  %693 = load i32, i32* @dboxflg, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %692
  %696 = load i32, i32* @left1flg, align 4
  %697 = icmp ne i32 %696, 0
  br label %698

698:                                              ; preds = %695, %692, %689, %684
  %699 = phi i1 [ true, %692 ], [ true, %689 ], [ true, %684 ], [ %697, %695 ]
  %700 = zext i1 %699 to i64
  %701 = select i1 %699, i32 1, i32 0
  store i32 %701, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %702

702:                                              ; preds = %738, %698
  %703 = load i32, i32* %1, align 4
  %704 = load i32, i32* @ncol, align 4
  %705 = icmp slt i32 %703, %704
  br i1 %705, label %706, label %741

706:                                              ; preds = %702
  %707 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %708 = load i32, i32* %1, align 4
  %709 = add nsw i32 %708, 40
  %710 = load i32, i32* %1, align 4
  %711 = add nsw i32 %710, 80
  %712 = sub nsw i32 %711, 1
  %713 = load i32, i32* %3, align 4
  %714 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %707, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 noundef %709, i32 noundef %712, i32 noundef %713, i32 noundef 38)
  %715 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %716 = load i32, i32* %1, align 4
  %717 = add nsw i32 %716, 80
  %718 = load i32, i32* %1, align 4
  %719 = add nsw i32 %718, 40
  %720 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %715, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %717, i32 noundef %719)
  %721 = load i32, i32* %1, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %733

726:                                              ; preds = %706
  %727 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %728 = load i32, i32* %1, align 4
  %729 = add nsw i32 %728, 60
  %730 = load i32, i32* %1, align 4
  %731 = add nsw i32 %730, 40
  %732 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %727, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef %729, i32 noundef %731)
  br label %733

733:                                              ; preds = %726, %706
  %734 = load i32, i32* %1, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %735
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %3, align 4
  br label %738

738:                                              ; preds = %733
  %739 = load i32, i32* %1, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %1, align 4
  br label %702, !llvm.loop !16

741:                                              ; preds = %702
  %742 = load i32, i32* @rightl, align 4
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %756

744:                                              ; preds = %741
  %745 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %746 = load i32, i32* @ncol, align 4
  %747 = add nsw i32 %746, 80
  %748 = sub nsw i32 %747, 1
  %749 = load i32, i32* @ncol, align 4
  %750 = add nsw i32 %749, 40
  %751 = sub nsw i32 %750, 1
  %752 = load i32, i32* @ncol, align 4
  %753 = add nsw i32 %752, 80
  %754 = sub nsw i32 %753, 2
  %755 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %745, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 noundef %748, i32 noundef %751, i32 noundef %754)
  br label %756

756:                                              ; preds = %744, %741
  %757 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %758 = load i32, i32* @ncol, align 4
  %759 = add nsw i32 %758, 80
  %760 = sub nsw i32 %759, 1
  %761 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %757, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef %760)
  %762 = load i32, i32* @boxflg, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %770, label %764

764:                                              ; preds = %756
  %765 = load i32, i32* @allflg, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %770, label %767

767:                                              ; preds = %764
  %768 = load i32, i32* @dboxflg, align 4
  %769 = icmp ne i32 %768, 0
  br i1 %769, label %770, label %778

770:                                              ; preds = %767, %764, %756
  %771 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %772 = load i32, i32* @ncol, align 4
  %773 = sub nsw i32 %772, 1
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i64 0, i64 %774
  %776 = load i32, i32* %775, align 4
  %777 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %771, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 noundef %776, i32 noundef 38)
  br label %778

778:                                              ; preds = %770, %767
  %779 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %780 = load i32, i32* @iline, align 4
  %781 = sub nsw i32 %780, 1
  %782 = load i8*, i8** @ifile, align 8
  %783 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %779, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i64 0, i64 0), i32 noundef %781, i8* noundef %782)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local i32 @vspen(i8* noundef) #1

declare dso_local i32 @fspan(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filler(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i32
  %5 = call i32 @point(i32 noundef %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 92
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 82
  br label %19

19:                                               ; preds = %13, %7, %1
  %20 = phi i1 [ false, %7 ], [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @real(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @wide(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = call i32 @point(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %13 = load i32, i32* @F1, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 noundef %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  call void @putfont(i8* noundef %20)
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  call void @putsize(i8* noundef %26)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* noundef %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  call void @putfont(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @putsize(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %43 = load i32, i32* @F1, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32 noundef %43)
  br label %49

45:                                               ; preds = %3
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef %47)
  br label %49

49:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @barent(i8* noundef) #1

declare dso_local i32 @lspan(i32 noundef, i32 noundef) #1

declare dso_local void @untext() #1

declare dso_local i32 @point(i32 noundef) #1

declare dso_local void @putfont(i8* noundef) #1

declare dso_local void @putsize(i8* noundef) #1

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
