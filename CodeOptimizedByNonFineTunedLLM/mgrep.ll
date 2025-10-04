; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/mgrep.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/mgrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pat_list = type { i32, %struct.pat_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@LONG = dso_local global i32 0, align 4
@SHORT = dso_local global i32 0, align 4
@p_size = dso_local global i32 0, align 4
@total_line = external dso_local global i32, align 4
@HASH = dso_local global [8192 x %struct.pat_list*] zeroinitializer, align 16
@tr = dso_local global [256 x i8] zeroinitializer, align 16
@patt = dso_local global [30000 x i8*] zeroinitializer, align 16
@pat_len = dso_local global [30000 x i8] zeroinitializer, align 16
@num_of_matched = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@SILENT = external dso_local global i32, align 4
@COUNT = external dso_local global i32, align 4
@FNAME = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@INVERSE = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SHIFT1 = dso_local global [4096 x i8] zeroinitializer, align 16
@qt = dso_local global %struct.pat_list* null, align 8
@pt = dso_local global %struct.pat_list* null, align 8
@pat_spool = dso_local global [320256 x i8] zeroinitializer, align 16
@buf = dso_local global [268192 x i8] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@WORDBOUND = external dso_local global i32, align 4
@WHOLELINE = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@NOUPPER = external dso_local global i32, align 4
@tr1 = dso_local global [256 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"the pattern file is empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @countline(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @total_line, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @total_line, align 4
  br label %21

21:                                               ; preds = %18, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6, !llvm.loop !4

25:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @m_short(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pat_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %187, %3
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ule i8* %31, %32
  br i1 %33, label %34, label %188

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %37
  %39 = load %struct.pat_list*, %struct.pat_list** %38, align 8
  store %struct.pat_list* %39, %struct.pat_list** %9, align 8
  br label %40

40:                                               ; preds = %186, %34
  %41 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %42 = icmp ne %struct.pat_list* %41, null
  br i1 %42, label %43, label %187

43:                                               ; preds = %40
  %44 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %45 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.pat_list*, %struct.pat_list** %9, align 8
  %48 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %47, i32 0, i32 1
  %49 = load %struct.pat_list*, %struct.pat_list** %48, align 8
  store %struct.pat_list* %49, %struct.pat_list** %9, align 8
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %14, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %72, %43
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %63, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %51, !llvm.loop !6

75:                                               ; preds = %51
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %182

83:                                               ; preds = %75
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %206

88:                                               ; preds = %83
  %89 = load i32, i32* @num_of_matched, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @num_of_matched, align 4
  %91 = load i32, i32* @FILENAMEONLY, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @SILENT, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %88
  br label %206

97:                                               ; preds = %93
  %98 = load i32, i32* @COUNT, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %106, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %4, align 8
  br label %101, !llvm.loop !7

109:                                              ; preds = %101
  br label %181

110:                                              ; preds = %97
  %111 = load i32, i32* @FNAME, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* @INVERSE, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %125, %118
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %123, 10
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %119, !llvm.loop !8

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %133, %126
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 10
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call i32 @putchar(i32 noundef %136)
  br label %127, !llvm.loop !9

138:                                              ; preds = %127
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %180

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %147, %140
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %143, i8** %4, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 10
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %141, !llvm.loop !10

148:                                              ; preds = %141
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = icmp ult i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %148
  br label %154

154:                                              ; preds = %158, %153
  %155 = load i8*, i8** %13, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = icmp ult i8* %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i8*, i8** %13, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %13, align 8
  %161 = load i8, i8* %159, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 @putchar(i32 noundef %162)
  br label %154, !llvm.loop !11

164:                                              ; preds = %154
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 @putchar(i32 noundef 10)
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %167, %164
  br label %170

170:                                              ; preds = %176, %169
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp ne i32 %174, 10
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %170, !llvm.loop !12

177:                                              ; preds = %170
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8* %179, i8** %13, align 8
  store i32 1, i32* %11, align 4
  br label %180

180:                                              ; preds = %177, %138
  br label %181

181:                                              ; preds = %180, %109
  br label %182

182:                                              ; preds = %181, %75
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %187

186:                                              ; preds = %182
  br label %40, !llvm.loop !13

187:                                              ; preds = %185, %40
  store i32 0, i32* %11, align 4
  br label %29, !llvm.loop !14

188:                                              ; preds = %29
  %189 = load i32, i32* @INVERSE, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load i32, i32* @COUNT, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %199, %194
  %196 = load i8*, i8** %13, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = icmp ule i8* %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i8*, i8** %13, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %13, align 8
  %202 = load i8, i8* %200, align 1
  %203 = zext i8 %202 to i32
  %204 = call i32 @putchar(i32 noundef %203)
  br label %195, !llvm.loop !15

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %87, %96, %205, %191, %188
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f_prep(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 15, i32* %8, align 4
  %9 = load i32, i32* @p_size, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LONG, align 4
  %15 = add nsw i32 1, %14
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = add i32 %27, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @LONG, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %49, %50
  %52 = add i32 %42, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %40, %17
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sge i32 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  br label %73

73:                                               ; preds = %64, %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %12, !llvm.loop !16

77:                                               ; preds = %12
  %78 = load i32, i32* @SHORT, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 255, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %77
  store i32 0, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %102, %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %98, %99
  %101 = add i32 %89, %100
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %5, align 4
  br label %84, !llvm.loop !17

105:                                              ; preds = %84
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 8191
  store i32 %107, i32* %7, align 4
  %108 = call noalias i8* @malloc(i64 noundef 16) #6
  %109 = bitcast i8* %108 to %struct.pat_list*
  store %struct.pat_list* %109, %struct.pat_list** @qt, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %112 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %114
  %116 = load %struct.pat_list*, %struct.pat_list** %115, align 8
  store %struct.pat_list* %116, %struct.pat_list** @pt, align 8
  %117 = load %struct.pat_list*, %struct.pat_list** @pt, align 8
  %118 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %119 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %118, i32 0, i32 1
  store %struct.pat_list* %117, %struct.pat_list** %119, align 8
  %120 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %122
  store %struct.pat_list* %120, %struct.pat_list** %123, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepf(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  store i8* getelementptr inbounds ([320256 x i8], [320256 x i8]* @pat_spool, i64 0, i64 0), i8** %7, align 8
  store i32 15, i32* %8, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* getelementptr inbounds ([268192 x i8], [268192 x i8]* @buf, i64 0, i64 0), i64 %13
  %15 = call i64 @read(i32 noundef %11, i8* noundef %14, i64 noundef 8192)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 260000
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0), i32 noundef 260000)
  call void @exit(i32 noundef 2) #7
  unreachable

27:                                               ; preds = %18
  br label %10, !llvm.loop !18

28:                                               ; preds = %10
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %30
  store i8 10, i8* %31, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %77, %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %39
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @WORDBOUND, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 -128, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* @WHOLELINE, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 10, i8* %50, align 1
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %62, %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  %60 = zext i8 %58 to i32
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %53, !llvm.loop !19

65:                                               ; preds = %53
  %66 = load i32, i32* @WORDBOUND, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 -128, i8* %69, align 1
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @WHOLELINE, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 10, i8* %75, align 1
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 0, i8* %78, align 1
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %32, !llvm.loop !20

82:                                               ; preds = %32
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 30000
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0), i32 noundef 30000)
  call void @exit(i32 noundef 2) #7
  unreachable

88:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %96, %88
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %7, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %89, !llvm.loop !21

99:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %109, %99
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 256
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %107
  store i8 %105, i8* %108, align 1
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %100, !llvm.loop !22

112:                                              ; preds = %100
  %113 = load i32, i32* @NOUPPER, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  store i32 65, i32* %4, align 4
  br label %116

116:                                              ; preds = %127, %115
  %117 = load i32, i32* %4, align 4
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 97
  %122 = sub nsw i32 %121, 65
  %123 = trunc i32 %122 to i8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %125
  store i8 %123, i8* %126, align 1
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %116, !llvm.loop !23

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32, i32* @WORDBOUND, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 128
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = call i16** @__ctype_b_loc() #8
  %140 = load i16*, i16** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %140, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %150
  store i8 -128, i8* %151, align 1
  br label %152

152:                                              ; preds = %148, %138
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %135, !llvm.loop !24

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %131
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %173, %157
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 256
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* %8, align 4
  %168 = and i32 %166, %167
  %169 = trunc i32 %168 to i8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %171
  store i8 %169, i8* %172, align 1
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %158, !llvm.loop !25

176:                                              ; preds = %158
  %177 = load i32, i32* %5, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  store i32 256, i32* @p_size, align 4
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %204, %176
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %207

183:                                              ; preds = %179
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @strlen(i8* noundef %187) #9
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %193
  store i8 %191, i8* %194, align 1
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %183
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @p_size, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* @p_size, align 4
  br label %203

203:                                              ; preds = %201, %197, %183
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %179, !llvm.loop !26

207:                                              ; preds = %179
  %208 = load i32, i32* @p_size, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

213:                                              ; preds = %207
  %214 = load i32, i32* %3, align 4
  %215 = icmp sgt i32 %214, 400
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* @p_size, align 4
  %218 = icmp sgt i32 %217, 2
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 1, i32* @LONG, align 4
  br label %220

220:                                              ; preds = %219, %216, %213
  %221 = load i32, i32* @p_size, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 1, i32* @SHORT, align 4
  br label %224

224:                                              ; preds = %223, %220
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %235, %224
  %226 = load i32, i32* %4, align 4
  %227 = icmp slt i32 %226, 4096
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* @p_size, align 4
  %230 = sub nsw i32 %229, 2
  %231 = trunc i32 %230 to i8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %233
  store i8 %231, i8* %234, align 1
  br label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %225, !llvm.loop !27

238:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %246, %238
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %240, 8192
  br i1 %241, label %242, label %249

242:                                              ; preds = %239
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %244
  store %struct.pat_list* null, %struct.pat_list** %245, align 8
  br label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %239, !llvm.loop !28

249:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %250

250:                                              ; preds = %260, %249
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %257
  %259 = load i8*, i8** %258, align 8
  call void @f_prep(i32 noundef %255, i8* noundef %259)
  br label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  br label %250, !llvm.loop !29

263:                                              ; preds = %250
  ret void
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @monkey1(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.pat_list*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* @LONG, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @p_size, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %19, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %281, %3
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ule i8* %42, %43
  br i1 %44, label %45, label %287

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add i32 %53, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add i32 %66, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %64, %45
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %10, align 1
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %281

83:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 4
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add i32 %90, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %84, !llvm.loop !30

105:                                              ; preds = %84
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, 8191
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i64 0, i64 %109
  %111 = load %struct.pat_list*, %struct.pat_list** %110, align 8
  store %struct.pat_list* %111, %struct.pat_list** %18, align 8
  br label %112

112:                                              ; preds = %272, %105
  %113 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %114 = icmp ne %struct.pat_list* %113, null
  br i1 %114, label %115, label %273

115:                                              ; preds = %112
  %116 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %117 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %14, align 4
  %119 = load %struct.pat_list*, %struct.pat_list** %18, align 8
  %120 = getelementptr inbounds %struct.pat_list, %struct.pat_list* %119, i32 0, i32 1
  %121 = load %struct.pat_list*, %struct.pat_list** %120, align 8
  store %struct.pat_list* %121, %struct.pat_list** %18, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8* %126, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %148, %115
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i64 0, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8*, i8** %17, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %17, align 8
  %142 = load i8, i8* %140, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %139, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %127
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %127, !llvm.loop !31

151:                                              ; preds = %127
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %268

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i32, i32* %12, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %267

163:                                              ; preds = %155
  %164 = load i8*, i8** %4, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ugt i8* %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %305

168:                                              ; preds = %163
  %169 = load i32, i32* @num_of_matched, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @num_of_matched, align 4
  %171 = load i32, i32* @FILENAMEONLY, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @SILENT, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173, %168
  br label %305

177:                                              ; preds = %173
  store i32 1, i32* %16, align 4
  %178 = load i32, i32* @COUNT, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %186, %180
  %182 = load i8*, i8** %4, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp ne i32 %184, 10
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %4, align 8
  br label %181, !llvm.loop !32

189:                                              ; preds = %181
  br label %266

190:                                              ; preds = %177
  %191 = load i32, i32* @INVERSE, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %220, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @FNAME, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %205, %198
  %200 = load i8*, i8** %4, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %4, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %203, 10
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %199, !llvm.loop !33

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %213, %206
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %4, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 10
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i8*, i8** %4, align 8
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 @putchar(i32 noundef %216)
  br label %207, !llvm.loop !34

218:                                              ; preds = %207
  %219 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %265

220:                                              ; preds = %190
  %221 = load i32, i32* @FNAME, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %220
  br label %226

226:                                              ; preds = %232, %225
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 -1
  store i8* %228, i8** %4, align 8
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 10
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %226, !llvm.loop !35

233:                                              ; preds = %226
  %234 = load i8*, i8** %19, align 8
  %235 = load i8*, i8** %4, align 8
  %236 = icmp ult i8* %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 1, i32* %20, align 4
  br label %238

238:                                              ; preds = %237, %233
  br label %239

239:                                              ; preds = %243, %238
  %240 = load i8*, i8** %19, align 8
  %241 = load i8*, i8** %4, align 8
  %242 = icmp ult i8* %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load i8*, i8** %19, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %19, align 8
  %246 = load i8, i8* %244, align 1
  %247 = zext i8 %246 to i32
  %248 = call i32 @putchar(i32 noundef %247)
  br label %239, !llvm.loop !36

249:                                              ; preds = %239
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = call i32 @putchar(i32 noundef 10)
  store i32 0, i32* %20, align 4
  br label %254

254:                                              ; preds = %252, %249
  br label %255

255:                                              ; preds = %261, %254
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %4, align 8
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 %259, 10
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %255, !llvm.loop !37

262:                                              ; preds = %255
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  store i8* %264, i8** %19, align 8
  br label %265

265:                                              ; preds = %262, %218
  br label %266

266:                                              ; preds = %265, %189
  br label %267

267:                                              ; preds = %266, %155
  br label %268

268:                                              ; preds = %267, %151
  %269 = load i32, i32* %16, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  br label %273

272:                                              ; preds = %268
  br label %112, !llvm.loop !38

273:                                              ; preds = %271, %112
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  store i8 1, i8* %10, align 1
  br label %280

277:                                              ; preds = %273
  store i32 0, i32* %16, align 4
  %278 = load i32, i32* %11, align 4
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %10, align 1
  br label %280

280:                                              ; preds = %277, %276
  br label %281

281:                                              ; preds = %280, %75
  %282 = load i8*, i8** %4, align 8
  %283 = load i8, i8* %10, align 1
  %284 = zext i8 %283 to i32
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  store i8* %286, i8** %4, align 8
  br label %41, !llvm.loop !39

287:                                              ; preds = %41
  %288 = load i32, i32* @INVERSE, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %287
  %291 = load i32, i32* @COUNT, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %298, %293
  %295 = load i8*, i8** %19, align 8
  %296 = load i8*, i8** %7, align 8
  %297 = icmp ule i8* %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load i8*, i8** %19, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %19, align 8
  %301 = load i8, i8* %299, align 1
  %302 = zext i8 %301 to i32
  %303 = call i32 @putchar(i32 noundef %302)
  br label %294, !llvm.loop !40

304:                                              ; preds = %294
  br label %305

305:                                              ; preds = %167, %176, %304, %290, %287
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mgrep(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca [17408 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 10, i8* %3, align 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 1023
  store i8 10, i8* %10, align 1
  store i32 1023, i32* %7, align 4
  br label %11

11:                                               ; preds = %83, %1
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 1024
  %15 = call i64 @read(i32 noundef %12, i8* noundef %14, i64 noundef 8192)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %11
  %19 = load i32, i32* @INVERSE, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @COUNT, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 1024
  %27 = load i32, i32* %6, align 4
  call void @countline(i8* noundef %26, i32 noundef %27)
  br label %28

28:                                               ; preds = %24, %21, %18
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 1024, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %46, %28
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 1024
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ false, %32 ], [ %43, %41 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %32, !llvm.loop !41

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i8, i8* %3, align 1
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %57
  store i8 %54, i8* %58, align 1
  %59 = load i32, i32* @SHORT, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  call void @m_short(i8* noundef %62, i32 noundef %63, i32 noundef %64)
  br label %69

65:                                               ; preds = %49
  %66 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  call void @monkey1(i8* noundef %66, i32 noundef %67, i32 noundef %68)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @FILENAMEONLY, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @num_of_matched, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %116

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 1024, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = call i8* @strncpy(i8* noundef %87, i8* noundef %91, i64 noundef %93) #6
  br label %11, !llvm.loop !42

95:                                               ; preds = %11
  %96 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 1024
  store i8 10, i8* %96, align 16
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 %99
  store i8 10, i8* %100, align 1
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load i32, i32* @SHORT, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  call void @m_short(i8* noundef %107, i32 noundef %108, i32 noundef %109)
  br label %114

110:                                              ; preds = %103
  %111 = getelementptr inbounds [17408 x i8], [17408 x i8]* %4, i64 0, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  call void @monkey1(i8* noundef %111, i32 noundef %112, i32 noundef %113)
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %75
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

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
