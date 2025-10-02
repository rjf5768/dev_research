; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t8.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* @watchout, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* @once, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* @allflg, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @boxflg, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @dboxflg, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %29, %26
  %36 = load i32, i32* @dboxflg, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 61, i32 45
  call void @fullwide(i32 noundef 0, i32 noundef %39)
  br label %40

40:                                               ; preds = %35, %32, %23
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %124

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %124

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %120, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ncol, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %123

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %59
  %61 = load %struct.colstr*, %struct.colstr** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.colstr, %struct.colstr* %61, i64 %63
  %65 = getelementptr inbounds %struct.colstr, %struct.colstr* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %120

70:                                               ; preds = %57
  %71 = load i8*, i8** %17, align 8
  %72 = call i32 @vspen(i8* noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %94, %74
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @nlin, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %82
  %84 = load %struct.colstr*, %struct.colstr** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.colstr, %struct.colstr* %84, i64 %86
  %88 = getelementptr inbounds %struct.colstr, %struct.colstr* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %17, align 8
  %90 = call i32 @vspen(i8* noundef %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %97

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @next(i32 noundef %95)
  store i32 %96, i32* %11, align 4
  br label %76, !llvm.loop !4

97:                                               ; preds = %92, %76
  %98 = load i8*, i8** %17, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i8*, i8** %17, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = icmp slt i32 %103, 128
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef %107)
  br label %109

109:                                              ; preds = %105, %101, %97
  br label %120

110:                                              ; preds = %70
  %111 = load i8*, i8** %17, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = call i32 @point(i32 noundef %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %120

116:                                              ; preds = %110
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef %118)
  store i32 1, i32* @watchout, align 4
  br label %120

120:                                              ; preds = %116, %115, %109, %69
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %53, !llvm.loop !6

123:                                              ; preds = %53
  br label %124

124:                                              ; preds = %123, %46, %40
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 97
  %137 = sub nsw i32 %136, 1
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %137)
  br label %139

139:                                              ; preds = %130, %124
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @prev(i32 noundef %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @puts(i8* noundef %151)
  br label %884

153:                                              ; preds = %139
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %7, align 4
  switch i32 %163, label %167 [
    i32 61, label %164
    i32 45, label %164
  ]

164:                                              ; preds = %159, %159
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %7, align 4
  call void @fullwide(i32 noundef %165, i32 noundef %166)
  br label %167

167:                                              ; preds = %164, %159
  br label %884

168:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %217, %168
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @ncol, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %220

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %179
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %187
  %189 = load %struct.colstr*, %struct.colstr** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.colstr, %struct.colstr* %189, i64 %191
  %193 = getelementptr inbounds %struct.colstr, %struct.colstr* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @vspen(i8* noundef %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  store i32 1, i32* %10, align 4
  br label %198

198:                                              ; preds = %197, %185
  br label %199

199:                                              ; preds = %198, %179, %173
  %200 = load i32, i32* %6, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %204
  %206 = load %struct.colstr*, %struct.colstr** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.colstr, %struct.colstr* %206, i64 %208
  %210 = getelementptr inbounds %struct.colstr, %struct.colstr* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @vspen(i8* noundef %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  store i32 1, i32* %10, align 4
  br label %215

215:                                              ; preds = %214, %202
  br label %216

216:                                              ; preds = %215, %199
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %169, !llvm.loop !7

220:                                              ; preds = %169
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %224, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %226, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %228

228:                                              ; preds = %223, %220
  store i32 0, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %297, %228
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @ncol, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %300

233:                                              ; preds = %229
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %235
  %237 = load %struct.colstr*, %struct.colstr** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.colstr, %struct.colstr* %237, i64 %239
  %241 = getelementptr inbounds %struct.colstr, %struct.colstr* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %17, align 8
  %243 = load i8*, i8** %17, align 8
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %233
  br label %297

246:                                              ; preds = %233
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %251
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %252, i64 0, i64 %254
  %256 = getelementptr inbounds [2 x i8], [2 x i8]* %255, i64 0, i64 0
  %257 = ptrtoint i8* %256 to i32
  %258 = load i32, i32* %16, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %16, align 4
  %260 = load i8*, i8** %17, align 8
  %261 = ptrtoint i8* %260 to i32
  %262 = call i32 @point(i32 noundef %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %246
  br label %297

265:                                              ; preds = %246
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @prev(i32 noundef %266)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %291

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %272
  %274 = load %struct.colstr*, %struct.colstr** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.colstr, %struct.colstr* %274, i64 %276
  %278 = getelementptr inbounds %struct.colstr, %struct.colstr* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @vspen(i8* noundef %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %270
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %284 = load i8*, i8** %17, align 8
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 97, %285
  %287 = load i8*, i8** %17, align 8
  %288 = load i32, i32* %5, align 4
  %289 = add nsw i32 97, %288
  %290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %283, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* noundef %284, i32 noundef %286, i8* noundef %287, i32 noundef %289)
  br label %296

291:                                              ; preds = %270, %265
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %293 = load i8*, i8** %17, align 8
  %294 = load i8*, i8** %17, align 8
  %295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %292, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* noundef %293, i8* noundef %294)
  br label %296

296:                                              ; preds = %291, %282
  br label %297

297:                                              ; preds = %296, %264, %245
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %229, !llvm.loop !8

300:                                              ; preds = %229
  %301 = load i32, i32* @allflg, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i32, i32* @once, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* %3, align 4
  call void @fullwide(i32 noundef %307, i32 noundef 45)
  br label %308

308:                                              ; preds = %306, %303, %300
  store i32 1, i32* @once, align 4
  %309 = load i32, i32* %3, align 4
  %310 = load i32, i32* %4, align 4
  call void @runtabs(i32 noundef %309, i32 noundef %310)
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @allh(i32 noundef %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %308
  %315 = load i32, i32* @pr1403, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %314
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %318, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef 36)
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %320, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %322

322:                                              ; preds = %317, %314, %308
  %323 = load i32, i32* %16, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %326, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef 31)
  br label %328

328:                                              ; preds = %325, %322
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %329, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %331, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %810, %328
  %334 = load i32, i32* %5, align 4
  %335 = load i32, i32* @ncol, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %813

337:                                              ; preds = %333
  %338 = load i32, i32* @watchout, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %358

340:                                              ; preds = %337
  %341 = load i32, i32* %3, align 4
  %342 = add nsw i32 %341, 1
  %343 = load i32, i32* @nlin, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %358

345:                                              ; preds = %340
  %346 = load i32, i32* %3, align 4
  %347 = load i32, i32* %5, align 4
  %348 = call i32 @left(i32 noundef %346, i32 noundef %347, i32* noundef %9)
  store i32 %348, i32* %6, align 4
  %349 = icmp sge i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %345
  %351 = load i32, i32* %5, align 4
  call void @tohcol(i32 noundef %351)
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* %3, align 4
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %9, align 4
  call void @drawvert(i32 noundef %352, i32 noundef %353, i32 noundef %354, i32 noundef %355)
  %356 = load i32, i32* %15, align 4
  %357 = add nsw i32 %356, 2
  store i32 %357, i32* %15, align 4
  br label %358

358:                                              ; preds = %350, %345, %340, %337
  %359 = load i32, i32* @rightl, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load i32, i32* %5, align 4
  %363 = add nsw i32 %362, 1
  %364 = load i32, i32* @ncol, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %361
  br label %810

367:                                              ; preds = %361, %358
  %368 = load i32, i32* %3, align 4
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %4, align 4
  %370 = call i32 @prev(i32 noundef %369)
  store i32 %370, i32* %6, align 4
  br label %371

371:                                              ; preds = %390, %367
  %372 = load i32, i32* %6, align 4
  %373 = icmp sge i32 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %371
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %376
  %378 = load %struct.colstr*, %struct.colstr** %377, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.colstr, %struct.colstr* %378, i64 %380
  %382 = getelementptr inbounds %struct.colstr, %struct.colstr* %381, i32 0, i32 0
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @vspen(i8* noundef %383)
  %385 = icmp ne i32 %384, 0
  br label %386

386:                                              ; preds = %374, %371
  %387 = phi i1 [ false, %371 ], [ %385, %374 ]
  br i1 %387, label %388, label %393

388:                                              ; preds = %386
  %389 = load i32, i32* %6, align 4
  store i32 %389, i32* %14, align 4
  br label %390

390:                                              ; preds = %388
  %391 = load i32, i32* %6, align 4
  %392 = call i32 @prev(i32 noundef %391)
  store i32 %392, i32* %6, align 4
  br label %371, !llvm.loop !9

393:                                              ; preds = %386
  %394 = load i32, i32* %14, align 4
  %395 = load i32, i32* %5, align 4
  %396 = call i32 @ctype(i32 noundef %394, i32 noundef %395)
  store i32 %396, i32* %8, align 4
  %397 = load i32, i32* %8, align 4
  %398 = icmp ne i32 %397, 115
  br i1 %398, label %399, label %434

399:                                              ; preds = %393
  %400 = load i32, i32* %5, align 4
  %401 = add nsw i32 %400, 40
  store i32 %401, i32* %7, align 4
  %402 = load i32, i32* %8, align 4
  %403 = icmp eq i32 %402, 97
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = load i32, i32* %5, align 4
  %406 = add nsw i32 %405, 60
  store i32 %406, i32* %7, align 4
  br label %407

407:                                              ; preds = %404, %399
  %408 = load i32, i32* %8, align 4
  %409 = icmp eq i32 %408, 110
  br i1 %409, label %410, label %430

410:                                              ; preds = %407
  %411 = load i32, i32* %4, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %412
  %414 = load %struct.colstr*, %struct.colstr** %413, align 8
  %415 = load i32, i32* %5, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.colstr, %struct.colstr* %414, i64 %416
  %418 = getelementptr inbounds %struct.colstr, %struct.colstr* %417, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %430

421:                                              ; preds = %410
  %422 = load i32, i32* %5, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %421
  %428 = load i32, i32* %5, align 4
  %429 = add nsw i32 %428, 60
  store i32 %429, i32* %7, align 4
  br label %430

430:                                              ; preds = %427, %421, %410, %407
  %431 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %432 = load i32, i32* %7, align 4
  %433 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %431, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 noundef %432)
  br label %434

434:                                              ; preds = %430, %393
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %436
  %438 = load %struct.colstr*, %struct.colstr** %437, align 8
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.colstr, %struct.colstr* %438, i64 %440
  %442 = getelementptr inbounds %struct.colstr, %struct.colstr* %441, i32 0, i32 0
  %443 = load i8*, i8** %442, align 8
  store i8* %443, i8** %17, align 8
  %444 = load i32, i32* %14, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %448
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %449, i64 0, i64 %451
  %453 = getelementptr inbounds [2 x i8], [2 x i8]* %452, i64 0, i64 0
  store i8* %453, i8** %19, align 8
  %454 = load i32, i32* %14, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %458
  %460 = load i32, i32* %5, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %459, i64 0, i64 %461
  %463 = getelementptr inbounds [4 x i8], [4 x i8]* %462, i64 0, i64 0
  store i8* %463, i8** %18, align 8
  %464 = load i8*, i8** %18, align 8
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %434
  store i8* null, i8** %18, align 8
  br label %469

469:                                              ; preds = %468, %434
  %470 = load i32, i32* %14, align 4
  %471 = load i32, i32* %5, align 4
  %472 = call i32 @ctype(i32 noundef %470, i32 noundef %471)
  store i32 %472, i32* %7, align 4
  switch i32 %472, label %578 [
    i32 110, label %473
    i32 97, label %473
    i32 99, label %551
    i32 114, label %552
    i32 108, label %553
    i32 45, label %554
    i32 61, label %554
  ]

473:                                              ; preds = %469, %469
  %474 = load i32, i32* %4, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %475
  %477 = load %struct.colstr*, %struct.colstr** %476, align 8
  %478 = load i32, i32* %5, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.colstr, %struct.colstr* %477, i64 %479
  %481 = getelementptr inbounds %struct.colstr, %struct.colstr* %480, i32 0, i32 1
  %482 = load i8*, i8** %481, align 8
  %483 = icmp ne i8* %482, null
  br i1 %483, label %484, label %550

484:                                              ; preds = %473
  %485 = load i32, i32* %5, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %540

490:                                              ; preds = %484
  %491 = load i32, i32* %4, align 4
  %492 = call i32 @prev(i32 noundef %491)
  store i32 %492, i32* %11, align 4
  %493 = load i32, i32* %11, align 4
  %494 = icmp sge i32 %493, 0
  br i1 %494, label %495, label %529

495:                                              ; preds = %490
  %496 = load i32, i32* %11, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %497
  %499 = load %struct.colstr*, %struct.colstr** %498, align 8
  %500 = load i32, i32* %5, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.colstr, %struct.colstr* %499, i64 %501
  %503 = getelementptr inbounds %struct.colstr, %struct.colstr* %502, i32 0, i32 0
  %504 = load i8*, i8** %503, align 8
  %505 = call i32 @vspen(i8* noundef %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %528

507:                                              ; preds = %495
  %508 = load i32, i32* %13, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %527

510:                                              ; preds = %507
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %512 = load i32, i32* %5, align 4
  %513 = add nsw i32 %512, 97
  %514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %511, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %513)
  %515 = load i32, i32* %12, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %510
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %519 = load i32, i32* %5, align 4
  %520 = add nsw i32 %519, 97
  %521 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %518, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %520)
  br label %522

522:                                              ; preds = %517, %510
  %523 = load i32, i32* %15, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %15, align 4
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %526 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %525, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %527

527:                                              ; preds = %522, %507
  br label %528

528:                                              ; preds = %527, %495
  br label %529

529:                                              ; preds = %528, %490
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %531 = load i32, i32* @F1, align 4
  %532 = load i32, i32* @F2, align 4
  %533 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %530, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 noundef %531, i32 noundef %532)
  %534 = load i8*, i8** %17, align 8
  %535 = load i8*, i8** %19, align 8
  %536 = load i8*, i8** %18, align 8
  call void @puttext(i8* noundef %534, i8* noundef %535, i8* noundef %536)
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %538 = load i32, i32* @F1, align 4
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %537, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %538)
  br label %540

540:                                              ; preds = %529, %484
  %541 = load i32, i32* %4, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %542
  %544 = load %struct.colstr*, %struct.colstr** %543, align 8
  %545 = load i32, i32* %5, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.colstr, %struct.colstr* %544, i64 %546
  %548 = getelementptr inbounds %struct.colstr, %struct.colstr* %547, i32 0, i32 1
  %549 = load i8*, i8** %548, align 8
  store i8* %549, i8** %17, align 8
  store i32 1, i32* %8, align 4
  br label %579

550:                                              ; preds = %473
  br label %551

551:                                              ; preds = %469, %550
  store i32 3, i32* %8, align 4
  br label %579

552:                                              ; preds = %469
  store i32 2, i32* %8, align 4
  br label %579

553:                                              ; preds = %469
  store i32 1, i32* %8, align 4
  br label %579

554:                                              ; preds = %469, %469
  %555 = load i32, i32* %4, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %556
  %558 = load %struct.colstr*, %struct.colstr** %557, align 8
  %559 = load i32, i32* %5, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.colstr, %struct.colstr* %558, i64 %560
  %562 = getelementptr inbounds %struct.colstr, %struct.colstr* %561, i32 0, i32 0
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 @real(i8* noundef %563)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %574

566:                                              ; preds = %554
  %567 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %568 = load i8*, i8** @ifile, align 8
  %569 = load i32, i32* @iline, align 4
  %570 = sub nsw i32 %569, 1
  %571 = load i32, i32* %3, align 4
  %572 = add nsw i32 %571, 1
  %573 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %567, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i8* noundef %568, i32 noundef %570, i32 noundef %572)
  br label %574

574:                                              ; preds = %566, %554
  %575 = load i32, i32* %3, align 4
  %576 = load i32, i32* %5, align 4
  %577 = load i32, i32* %7, align 4
  call void @makeline(i32 noundef %575, i32 noundef %576, i32 noundef %577)
  br label %810

578:                                              ; preds = %469
  br label %810

579:                                              ; preds = %553, %552, %551, %540
  %580 = load i32, i32* %7, align 4
  %581 = icmp eq i32 %580, 97
  br i1 %581, label %585, label %582

582:                                              ; preds = %579
  %583 = load i32, i32* %7, align 4
  %584 = icmp eq i32 %583, 110
  br i1 %584, label %585, label %602

585:                                              ; preds = %582, %579
  %586 = load i32, i32* %4, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %587
  %589 = load %struct.colstr*, %struct.colstr** %588, align 8
  %590 = load i32, i32* %5, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.colstr, %struct.colstr* %589, i64 %591
  %593 = getelementptr inbounds %struct.colstr, %struct.colstr* %592, i32 0, i32 1
  %594 = load i8*, i8** %593, align 8
  %595 = icmp ne i8* %594, null
  br i1 %595, label %596, label %602

596:                                              ; preds = %585
  %597 = load i32, i32* %5, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %608, label %708

602:                                              ; preds = %585, %582
  %603 = load i32, i32* %5, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i64 0, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %708

608:                                              ; preds = %602, %596
  %609 = load i8*, i8** %17, align 8
  %610 = call i32 @ifline(i8* noundef %609)
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %608
  %613 = load i32, i32* %3, align 4
  %614 = load i32, i32* %5, align 4
  %615 = load i8*, i8** %17, align 8
  %616 = call i32 @ifline(i8* noundef %615)
  call void @makeline(i32 noundef %613, i32 noundef %614, i32 noundef %616)
  br label %810

617:                                              ; preds = %608
  %618 = load i8*, i8** %17, align 8
  %619 = call i32 @filler(i8* noundef %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %627

621:                                              ; preds = %617
  %622 = load i32, i32* %5, align 4
  %623 = add nsw i32 %622, 80
  %624 = load i8*, i8** %17, align 8
  %625 = getelementptr inbounds i8, i8* %624, i64 2
  %626 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef %623, i8* noundef %625)
  br label %810

627:                                              ; preds = %617
  %628 = load i32, i32* %4, align 4
  %629 = call i32 @prev(i32 noundef %628)
  store i32 %629, i32* %11, align 4
  %630 = load i32, i32* %4, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %631
  %633 = load i32, i32* %632, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %634
  %636 = load i32, i32* %5, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [20 x i32], [20 x i32]* %635, i64 0, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = icmp eq i32 %639, 0
  %641 = zext i1 %640 to i32
  store i32 %641, i32* %12, align 4
  %642 = load i32, i32* %11, align 4
  %643 = icmp sge i32 %642, 0
  br i1 %643, label %644, label %678

644:                                              ; preds = %627
  %645 = load i32, i32* %11, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %646
  %648 = load %struct.colstr*, %struct.colstr** %647, align 8
  %649 = load i32, i32* %5, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.colstr, %struct.colstr* %648, i64 %650
  %652 = getelementptr inbounds %struct.colstr, %struct.colstr* %651, i32 0, i32 0
  %653 = load i8*, i8** %652, align 8
  %654 = call i32 @vspen(i8* noundef %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %677

656:                                              ; preds = %644
  %657 = load i32, i32* %13, align 4
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %676

659:                                              ; preds = %656
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %661 = load i32, i32* %5, align 4
  %662 = add nsw i32 %661, 97
  %663 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %660, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %662)
  %664 = load i32, i32* %12, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %659
  %667 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %668 = load i32, i32* %5, align 4
  %669 = add nsw i32 %668, 97
  %670 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %667, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %669)
  br label %671

671:                                              ; preds = %666, %659
  %672 = load i32, i32* %15, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %15, align 4
  %674 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %675 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %674, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %676

676:                                              ; preds = %671, %656
  br label %677

677:                                              ; preds = %676, %644
  br label %678

678:                                              ; preds = %677, %627
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %680 = load i32, i32* @F1, align 4
  %681 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %679, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %680)
  %682 = load i32, i32* %8, align 4
  %683 = icmp ne i32 %682, 1
  br i1 %683, label %684, label %688

684:                                              ; preds = %678
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %686 = load i32, i32* @F2, align 4
  %687 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %685, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %686)
  br label %688

688:                                              ; preds = %684, %678
  %689 = load i8*, i8** %17, align 8
  %690 = call i32 @vspen(i8* noundef %689)
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %693

692:                                              ; preds = %688
  store i32 1, i32* %10, align 4
  br label %697

693:                                              ; preds = %688
  %694 = load i8*, i8** %17, align 8
  %695 = load i8*, i8** %19, align 8
  %696 = load i8*, i8** %18, align 8
  call void @puttext(i8* noundef %694, i8* noundef %695, i8* noundef %696)
  br label %697

697:                                              ; preds = %693, %692
  %698 = load i32, i32* %8, align 4
  %699 = icmp ne i32 %698, 2
  br i1 %699, label %700, label %704

700:                                              ; preds = %697
  %701 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %702 = load i32, i32* @F2, align 4
  %703 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %701, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %702)
  br label %704

704:                                              ; preds = %700, %697
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %706 = load i32, i32* @F1, align 4
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %705, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %706)
  br label %708

708:                                              ; preds = %704, %602, %596
  %709 = load i32, i32* %11, align 4
  %710 = icmp sge i32 %709, 0
  br i1 %710, label %711, label %799

711:                                              ; preds = %708
  %712 = load i32, i32* %11, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %713
  %715 = load %struct.colstr*, %struct.colstr** %714, align 8
  %716 = load i32, i32* %5, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.colstr, %struct.colstr* %715, i64 %717
  %719 = getelementptr inbounds %struct.colstr, %struct.colstr* %718, i32 0, i32 0
  %720 = load i8*, i8** %719, align 8
  %721 = call i32 @vspen(i8* noundef %720)
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %797

723:                                              ; preds = %711
  %724 = load i32, i32* %5, align 4
  %725 = add nsw i32 %724, 1
  %726 = load i32, i32* @ncol, align 4
  %727 = icmp slt i32 %725, %726
  br i1 %727, label %728, label %774

728:                                              ; preds = %723
  %729 = load i32, i32* %11, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %730
  %732 = load %struct.colstr*, %struct.colstr** %731, align 8
  %733 = load i32, i32* %5, align 4
  %734 = add nsw i32 %733, 1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.colstr, %struct.colstr* %732, i64 %735
  %737 = getelementptr inbounds %struct.colstr, %struct.colstr* %736, i32 0, i32 0
  %738 = load i8*, i8** %737, align 8
  %739 = call i32 @vspen(i8* noundef %738)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %774

741:                                              ; preds = %728
  %742 = load i32, i32* %5, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %743
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* %5, align 4
  %747 = add nsw i32 %746, 1
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = icmp eq i32 %745, %750
  br i1 %751, label %752, label %774

752:                                              ; preds = %741
  %753 = load i32, i32* %12, align 4
  %754 = load i32, i32* %4, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %758
  %760 = load i32, i32* %5, align 4
  %761 = add nsw i32 %760, 1
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [20 x i32], [20 x i32]* %759, i64 0, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = icmp eq i32 %764, 0
  %766 = zext i1 %765 to i32
  %767 = icmp eq i32 %753, %766
  br i1 %767, label %768, label %774

768:                                              ; preds = %752
  %769 = load i32, i32* %3, align 4
  %770 = load i32, i32* %5, align 4
  %771 = add nsw i32 %770, 1
  %772 = call i32 @left(i32 noundef %769, i32 noundef %771, i32* noundef %9)
  %773 = icmp slt i32 %772, 0
  br label %774

774:                                              ; preds = %768, %752, %741, %728, %723
  %775 = phi i1 [ false, %752 ], [ false, %741 ], [ false, %728 ], [ false, %723 ], [ %773, %768 ]
  %776 = zext i1 %775 to i32
  store i32 %776, i32* %13, align 4
  %777 = load i32, i32* %13, align 4
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %796

779:                                              ; preds = %774
  %780 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %781 = load i32, i32* %5, align 4
  %782 = add nsw i32 %781, 97
  %783 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %780, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 noundef %782)
  %784 = load i32, i32* %12, align 4
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %791

786:                                              ; preds = %779
  %787 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %788 = load i32, i32* %5, align 4
  %789 = add nsw i32 %788, 97
  %790 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %787, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %789)
  br label %791

791:                                              ; preds = %786, %779
  %792 = load i32, i32* %15, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %15, align 4
  %794 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %795 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %794, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %796

796:                                              ; preds = %791, %774
  br label %798

797:                                              ; preds = %711
  store i32 0, i32* %13, align 4
  br label %798

798:                                              ; preds = %797, %796
  br label %799

799:                                              ; preds = %798, %708
  %800 = load i32, i32* %15, align 4
  %801 = icmp sgt i32 %800, 7
  br i1 %801, label %802, label %809

802:                                              ; preds = %799
  %803 = load i32, i32* %5, align 4
  %804 = load i32, i32* @ncol, align 4
  %805 = icmp slt i32 %803, %804
  br i1 %805, label %806, label %809

806:                                              ; preds = %802
  %807 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %808 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %807, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %809

809:                                              ; preds = %806, %802, %799
  br label %810

810:                                              ; preds = %809, %621, %612, %578, %574, %366
  %811 = load i32, i32* %5, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, i32* %5, align 4
  br label %333, !llvm.loop !10

813:                                              ; preds = %333
  %814 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %815 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %814, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %816 = load i32, i32* %3, align 4
  %817 = call i32 @allh(i32 noundef %816)
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %825

819:                                              ; preds = %813
  %820 = load i32, i32* @pr1403, align 4
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %825, label %822

822:                                              ; preds = %819
  %823 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %824 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %823, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef 36)
  br label %825

825:                                              ; preds = %822, %819, %813
  %826 = load i32, i32* @watchout, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %831

828:                                              ; preds = %825
  %829 = load i32, i32* %3, align 4
  %830 = load i32, i32* %4, align 4
  call void @funnies(i32 noundef %829, i32 noundef %830)
  br label %831

831:                                              ; preds = %828, %825
  %832 = load i32, i32* %10, align 4
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %884

834:                                              ; preds = %831
  store i32 0, i32* %5, align 4
  br label %835

835:                                              ; preds = %880, %834
  %836 = load i32, i32* %5, align 4
  %837 = load i32, i32* @ncol, align 4
  %838 = icmp slt i32 %836, %837
  br i1 %838, label %839, label %883

839:                                              ; preds = %835
  %840 = load i32, i32* %4, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %841
  %843 = load %struct.colstr*, %struct.colstr** %842, align 8
  %844 = load i32, i32* %5, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.colstr, %struct.colstr* %843, i64 %845
  %847 = getelementptr inbounds %struct.colstr, %struct.colstr* %846, i32 0, i32 0
  %848 = load i8*, i8** %847, align 8
  %849 = call i32 @vspen(i8* noundef %848)
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %879

851:                                              ; preds = %839
  %852 = load i32, i32* %4, align 4
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %870, label %854

854:                                              ; preds = %851
  %855 = load i32, i32* %4, align 4
  %856 = call i32 @prev(i32 noundef %855)
  store i32 %856, i32* %6, align 4
  %857 = icmp slt i32 %856, 0
  br i1 %857, label %870, label %858

858:                                              ; preds = %854
  %859 = load i32, i32* %6, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %860
  %862 = load %struct.colstr*, %struct.colstr** %861, align 8
  %863 = load i32, i32* %5, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.colstr, %struct.colstr* %862, i64 %864
  %866 = getelementptr inbounds %struct.colstr, %struct.colstr* %865, i32 0, i32 0
  %867 = load i8*, i8** %866, align 8
  %868 = call i32 @vspen(i8* noundef %867)
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %879, label %870

870:                                              ; preds = %858, %854, %851
  %871 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %872 = load i32, i32* %5, align 4
  %873 = add nsw i32 97, %872
  %874 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %871, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 noundef %873)
  %875 = load i32, i32* %4, align 4
  %876 = load i32, i32* %5, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [20 x i32], [20 x i32]* @topat, i64 0, i64 %877
  store i32 %875, i32* %878, align 4
  br label %879

879:                                              ; preds = %870, %858, %839
  br label %880

880:                                              ; preds = %879
  %881 = load i32, i32* %5, align 4
  %882 = add nsw i32 %881, 1
  store i32 %882, i32* %5, align 4
  br label %835, !llvm.loop !11

883:                                              ; preds = %835
  br label %884

884:                                              ; preds = %147, %167, %883, %831
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
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  call void @putfont(i8* noundef %12)
  %13 = load i8*, i8** %6, align 8
  call void @putsize(i8* noundef %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 noundef 31)
  br label %24

24:                                               ; preds = %21, %11
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @putsize(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %3
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 noundef 31)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %173, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ncol, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %176

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %23
  %25 = load %struct.colstr*, %struct.colstr** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.colstr, %struct.colstr* %25, i64 %27
  %29 = getelementptr inbounds %struct.colstr, %struct.colstr* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @point(i32 noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %173

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %173

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 noundef 37)
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = call i16** @__ctype_b_loc() #3
  %51 = load i16*, i16** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ctype(i32 noundef %52, i32 noundef %53)
  store i32 %54, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %51, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 1024
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %49, %46
  %63 = phi i1 [ false, %46 ], [ %61, %49 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @prev(i32 noundef %66)
  store i32 %67, i32* %7, align 4
  br label %46, !llvm.loop !12

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  switch i32 %69, label %99 [
    i32 110, label %70
    i32 99, label %70
    i32 108, label %83
    i32 97, label %88
    i32 114, label %93
  ]

70:                                               ; preds = %68, %68
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 40
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ctspan(i32 noundef %76, i32 noundef %77)
  %79 = add nsw i32 %75, %78
  %80 = add nsw i32 %79, 80
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i32 noundef %73, i32 noundef %80, i32 noundef %81)
  br label %99

83:                                               ; preds = %68
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 40
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef %86)
  br label %99

88:                                               ; preds = %68
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 60
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 noundef %91)
  br label %99

93:                                               ; preds = %68
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 80
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 noundef %96, i32 noundef %97)
  br label %99

99:                                               ; preds = %68, %93, %88, %83, %70
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 noundef 37)
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %106
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %107, i64 0, i64 %109
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %110, i64 0, i64 0
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  call void @putfont(i8* noundef %112)
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @prev(i32 noundef %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %99
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %122
  %124 = load %struct.colstr*, %struct.colstr** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.colstr, %struct.colstr* %124, i64 %126
  %128 = getelementptr inbounds %struct.colstr, %struct.colstr* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @vspen(i8* noundef %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %120
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 97, %134
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 noundef %135)
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i64 0, i64 %141
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [20 x i32], [20 x i32]* %142, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %132
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 97, %150
  %152 = load i32, i32* %6, align 4
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 noundef 38, i32 noundef %151, i32 noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %154, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i32 noundef 38, i32 noundef 38)
  br label %156

156:                                              ; preds = %148, %132
  br label %157

157:                                              ; preds = %156, %120, %117, %99
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %158, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 noundef %159)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 noundef 37)
  %163 = load i8*, i8** %12, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  call void @putfont(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %168

168:                                              ; preds = %167, %157
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 noundef 32)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i32 noundef 32, i32 noundef 31, i32 noundef 31, i32 noundef 32)
  br label %173

173:                                              ; preds = %168, %39, %35
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %17, !llvm.loop !13

176:                                              ; preds = %17
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %177, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i32 noundef 31)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %209, %176
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @ncol, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %212

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* @nlin, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %183
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @left(i32 noundef %189, i32 noundef %190, i32* noundef %8)
  store i32 %191, i32* %10, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  %196 = icmp eq i32 %194, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %5, align 4
  call void @tohcol(i32 noundef %201)
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %8, align 4
  call void @drawvert(i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207)
  br label %208

208:                                              ; preds = %200, %188, %183
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %179, !llvm.loop !14

212:                                              ; preds = %179
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %216, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %212
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putfont(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef %18, i8* noundef %19)
  br label %21

21:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putsize(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %12)
  br label %14

14:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @ctspan(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!142, !5}
!142 = distinct !{!143, !5}
!143 = distinct !{!144, !5}
!144 = distinct !{!145, !5}
