; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@texname = external dso_local global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too many text block diversions\00", align 1
@textflg = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c".nr %d \\n(.lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".am %02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".di %c+\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c".nr %d \\n(.f\0A.ft %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".ft \\n(.f\0A\00", align 1
@vsize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@stynum = external dso_local global [0 x i32], align 4
@.str.8 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.v\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\\n(.s+2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".ps %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".vs %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c".if \\n(%du>\\n(.vu .sp \\n(%du-\\n(.vu\0A\00", align 1
@cll = external dso_local global [20 x [10 x i8]], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c".ll %sn\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c".ll \\n(%du*%du/%du\0A\00", align 1
@ncol = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c".if \\n(.l<\\n(%d .ll \\n(%du\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c".ll -2n\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c".in 0\0A\00", align 1
@tab = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"T}\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c".ft \\n(%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c".br\0A.ps\0A.vs\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".di\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c".nr %c| \\n(dn\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c".nr %c- \\n(dl\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c".ec \\\0A\00", align 1
@texstr = external dso_local global [0 x i8], align 1
@texct = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c".ll \\n(%du\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gettext(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @texname, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  call void @error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* @textflg, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 34)
  store i32 1, i32* @textflg, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 80
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %33 = load i32, i32* @texname, align 4
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %33)
  call void @rstofill()
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef %44)
  br label %46

46:                                               ; preds = %42, %37, %23
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i64 0, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %54, i64 0, i64 %56
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i64 0, i64 0
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61, %46
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %103

69:                                               ; preds = %66
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69, %61
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 noundef 32)
  %77 = load i8*, i8** %13, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %13, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %95)
  br label %97

97:                                               ; preds = %93, %88, %85
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 noundef 32, i32 noundef 32)
  br label %103

103:                                              ; preds = %97, %69, %66
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %105
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %106, i64 0, i64 0
  %108 = load i8, i8* %107, align 2
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i64 0, i64 %113
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %114, i64 0, i64 0
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef %115)
  br label %125

117:                                              ; preds = %103
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @ctspan(i32 noundef %119, i32 noundef %120)
  %122 = load i32, i32* @ncol, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef 34, i32 noundef %121, i32 noundef %123)
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 80
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 80
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %128, i32 noundef %130)
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ctype(i32 noundef %132, i32 noundef %133)
  %135 = icmp eq i32 %134, 97
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %125
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %142

142:                                              ; preds = %168, %139
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %144 = call i8* @gets1(i8* noundef %143)
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %148 = load i8, i8* %147, align 16
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 84
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 125
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 2
  %158 = load i8, i8* %157, align 2
  %159 = sext i8 %158 to i32
  %160 = load i32, i32* @tab, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %172

163:                                              ; preds = %156, %151, %146
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %165 = call i32 @match(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %172

168:                                              ; preds = %163
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %170)
  br label %142, !llvm.loop !4

172:                                              ; preds = %167, %162, %142
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i8*, i8** %9, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %181, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 noundef 31)
  br label %183

183:                                              ; preds = %180, %175, %172
  %184 = load i8*, i8** %10, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i8*, i8** %10, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %186, %183
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %195, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %197, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %200 = load i32, i32* @texname, align 4
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %199, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 noundef %200)
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %203 = load i32, i32* @texname, align 4
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 noundef %203)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %207, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %209 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 2
  %210 = load i8, i8* %209, align 2
  %211 = icmp ne i8 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %194
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %215 = getelementptr inbounds i8, i8* %214, i64 3
  call void @tcopy(i8* noundef %213, i8* noundef %215)
  br label %218

216:                                              ; preds = %194
  %217 = load i8*, i8** %6, align 8
  store i8 0, i8* %217, align 1
  br label %218

218:                                              ; preds = %216, %212
  %219 = load i32, i32* @texname, align 4
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* @texct, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @texct, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [0 x i8], [0 x i8]* @texstr, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  store i32 %225, i32* @texname, align 4
  %226 = load i32, i32* %12, align 4
  ret i32 %226
}

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @rstofill() #1

declare dso_local i32 @ctspan(i32 noundef, i32 noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @match(i8* noundef, i8* noundef) #1

declare dso_local void @tcopy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @untext() #0 {
  call void @rstofill()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 noundef 34)
  ret void
}

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
