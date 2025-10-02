; ModuleID = './wrjpgcom.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrjpgcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"wrjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Missing ending quote mark\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal global %struct._IO_FILE* null, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@outfile = internal global %struct._IO_FILE* null, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"Comment text may not exceed %u bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"wrjpgcom inserts a textual comment in a JPEG file.\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"You can add to or replace any existing comment(s).\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Usage: %s [switches] \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"  -replace         Delete any existing comments\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"  -comment \22text\22  Insert comment with given text\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"  -cfile name      Read comment from named file\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Notice that you must put quotes around the comment text\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"when you use -comment.\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"If you do not give either -comment or -cfile on the command line,\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"then the comment text is read from standard input.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"It can be multiple lines, up to %u characters total.\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"You must specify an input JPEG file name when supplying\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"comment text from standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"SOS without prior SOFn\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = load i8*, i8** %1, align 8
  store i8* %3, i8** @progname, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i8*, i8** @progname, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %10

10:                                               ; preds = %9, %5
  br label %11

11:                                               ; preds = %97, %10
  %.017 = phi i32 [ 1, %10 ], [ %.118, %97 ]
  %.011 = phi i32 [ 1, %10 ], [ %98, %97 ]
  %.04 = phi i8* [ null, %10 ], [ %.48, %97 ]
  %.01 = phi %struct._IO_FILE* [ null, %10 ], [ %.23, %97 ]
  %.0 = phi i32 [ 0, %10 ], [ %.3, %97 ]
  %12 = icmp slt i32 %.011, %0
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = sext i32 %.011 to i64
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %.not55 = icmp eq i8 %17, 45
  br i1 %.not55, label %19, label %18

18:                                               ; preds = %13
  br label %99

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = call i32 @keymatch(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1)
  %.not56 = icmp eq i32 %21, 0
  br i1 %.not56, label %23, label %22

22:                                               ; preds = %19
  br label %96

23:                                               ; preds = %19
  %24 = call i32 @keymatch(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2)
  %.not57 = icmp eq i32 %24, 0
  br i1 %.not57, label %42, label %25

25:                                               ; preds = %23
  %26 = add nsw i32 %.011, 1
  %.not62 = icmp slt i32 %26, %0
  br i1 %.not62, label %28, label %27

27:                                               ; preds = %25
  call void @usage()
  br label %28

28:                                               ; preds = %27, %25
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call noalias %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progname, align 8
  %37 = sext i32 %26 to i64
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %36, i8* noundef %39) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %28
  br label %95

42:                                               ; preds = %23
  %43 = call i32 @keymatch(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1)
  %.not58 = icmp eq i32 %43, 0
  br i1 %.not58, label %93, label %44

44:                                               ; preds = %42
  %45 = add nsw i32 %.011, 1
  %.not59 = icmp slt i32 %45, %0
  br i1 %.not59, label %47, label %46

46:                                               ; preds = %44
  call void @usage()
  br label %47

47:                                               ; preds = %46, %44
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 34
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = call noalias dereferenceable_or_null(65000) i8* @malloc(i64 noundef 65000) #11
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %53
  %60 = sext i32 %45 to i64
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i8* @strcpy(i8* noundef nonnull %54, i8* noundef nonnull %63) #11
  br label %65

65:                                               ; preds = %83, %59
  %.112 = phi i32 [ %45, %59 ], [ %79, %83 ]
  %66 = call i64 @strlen(i8* noundef nonnull %54) #14
  %67 = trunc i64 %66 to i32
  %.not60 = icmp eq i32 %67, 0
  br i1 %.not60, label %78, label %68

68:                                               ; preds = %65
  %69 = add i64 %66, 4294967295
  %70 = and i64 %69, 4294967295
  %71 = getelementptr inbounds i8, i8* %54, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = icmp eq i8 %72, 34
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = add i64 %66, 4294967295
  %76 = and i64 %75, 4294967295
  %77 = getelementptr inbounds i8, i8* %54, i64 %76
  store i8 0, i8* %77, align 1
  br label %89

78:                                               ; preds = %68, %65
  %79 = add nsw i32 %.112, 1
  %.not61 = icmp slt i32 %79, %0
  br i1 %.not61, label %83, label %80

80:                                               ; preds = %78
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %78
  %strlen = call i64 @strlen(i8* nonnull %54)
  %endptr = getelementptr i8, i8* %54, i64 %strlen
  %84 = bitcast i8* %endptr to i16*
  store i16 32, i16* %84, align 1
  %85 = sext i32 %79 to i64
  %86 = getelementptr inbounds i8*, i8** %1, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strcat(i8* noundef nonnull %54, i8* noundef nonnull dereferenceable(1) %87) #11
  br label %65

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %47
  %.213 = phi i32 [ %.112, %89 ], [ %45, %47 ]
  %.15 = phi i8* [ %54, %89 ], [ %50, %47 ]
  %91 = call i64 @strlen(i8* noundef nonnull %.15) #14
  %92 = trunc i64 %91 to i32
  br label %94

93:                                               ; preds = %42
  call void @usage()
  br label %94

94:                                               ; preds = %93, %90
  %.314 = phi i32 [ %.213, %90 ], [ %.011, %93 ]
  %.26 = phi i8* [ %.15, %90 ], [ %.04, %93 ]
  %.1 = phi i32 [ %92, %90 ], [ %.0, %93 ]
  br label %95

95:                                               ; preds = %94, %41
  %.415 = phi i32 [ %26, %41 ], [ %.314, %94 ]
  %.37 = phi i8* [ %.04, %41 ], [ %.26, %94 ]
  %.12 = phi %struct._IO_FILE* [ %32, %41 ], [ %.01, %94 ]
  %.2 = phi i32 [ %.0, %41 ], [ %.1, %94 ]
  br label %96

96:                                               ; preds = %95, %22
  %.118 = phi i32 [ 0, %22 ], [ %.017, %95 ]
  %.516 = phi i32 [ %.011, %22 ], [ %.415, %95 ]
  %.48 = phi i8* [ %.04, %22 ], [ %.37, %95 ]
  %.23 = phi %struct._IO_FILE* [ %.01, %22 ], [ %.12, %95 ]
  %.3 = phi i32 [ %.0, %22 ], [ %.2, %95 ]
  br label %97

97:                                               ; preds = %96
  %98 = add nsw i32 %.516, 1
  br label %11, !llvm.loop !4

.loopexit:                                        ; preds = %11
  br label %99

99:                                               ; preds = %.loopexit, %18
  %.not = icmp eq i8* %.04, null
  br i1 %.not, label %102, label %100

100:                                              ; preds = %99
  %.not54 = icmp eq %struct._IO_FILE* %.01, null
  br i1 %.not54, label %102, label %101

101:                                              ; preds = %100
  call void @usage()
  br label %102

102:                                              ; preds = %101, %100, %99
  %103 = icmp eq i8* %.04, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = icmp eq %struct._IO_FILE* %.01, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  %.not53 = icmp slt i32 %.011, %0
  br i1 %.not53, label %108, label %107

107:                                              ; preds = %106
  call void @usage()
  br label %108

108:                                              ; preds = %107, %106, %104, %102
  %109 = icmp slt i32 %.011, %0
  br i1 %109, label %110, label %124

110:                                              ; preds = %108
  %111 = sext i32 %.011 to i64
  %112 = getelementptr inbounds i8*, i8** %1, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call noalias %struct._IO_FILE* @fopen(i8* noundef %113, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #11
  store %struct._IO_FILE* %114, %struct._IO_FILE** @infile, align 8
  %115 = icmp eq %struct._IO_FILE* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %118 = load i8*, i8** @progname, align 8
  %119 = sext i32 %.011 to i64
  %120 = getelementptr inbounds i8*, i8** %1, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %118, i8* noundef %121) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %110
  br label %126

124:                                              ; preds = %108
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %125, %struct._IO_FILE** @infile, align 8
  br label %126

126:                                              ; preds = %124, %123
  %127 = add nsw i32 %0, -1
  %128 = icmp slt i32 %.011, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %131 = load i8*, i8** @progname, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %130, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* noundef %131) #12
  call void @usage()
  br label %133

133:                                              ; preds = %129, %126
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %134, %struct._IO_FILE** @outfile, align 8
  %135 = icmp eq i8* %.04, null
  br i1 %135, label %136, label %164

136:                                              ; preds = %133
  %137 = call noalias dereferenceable_or_null(65000) i8* @malloc(i64 noundef 65000) #11
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

142:                                              ; preds = %136
  %.not50 = icmp eq %struct._IO_FILE* %.01, null
  br i1 %.not50, label %144, label %143

143:                                              ; preds = %142
  br label %146

144:                                              ; preds = %142
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi %struct._IO_FILE* [ %.01, %143 ], [ %145, %144 ]
  br label %148

148:                                              ; preds = %155, %146
  %.4 = phi i32 [ 0, %146 ], [ %157, %155 ]
  %149 = call i32 @getc(%struct._IO_FILE* noundef %147) #11
  %.not51 = icmp eq i32 %149, -1
  br i1 %.not51, label %160, label %150

150:                                              ; preds = %148
  %151 = icmp ugt i32 %.4, 64999
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 noundef 65000) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %150
  %156 = trunc i32 %149 to i8
  %157 = add i32 %.4, 1
  %158 = zext i32 %.4 to i64
  %159 = getelementptr inbounds i8, i8* %137, i64 %158
  store i8 %156, i8* %159, align 1
  br label %148, !llvm.loop !6

160:                                              ; preds = %148
  %.not52 = icmp eq %struct._IO_FILE* %.01, null
  br i1 %.not52, label %163, label %161

161:                                              ; preds = %160
  %162 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.01) #11
  br label %163

163:                                              ; preds = %161, %160
  br label %164

164:                                              ; preds = %163, %133
  %.59 = phi i8* [ %137, %163 ], [ %.04, %133 ]
  %.5 = phi i32 [ %.4, %163 ], [ %.0, %133 ]
  %165 = call i32 @scan_JPEG_header(i32 noundef %.017)
  %.not48 = icmp eq i32 %.5, 0
  br i1 %.not48, label %175, label %166

166:                                              ; preds = %164
  call void @write_marker(i32 noundef 254)
  %167 = add i32 %.5, 2
  call void @write_2_bytes(i32 noundef %167)
  br label %168

168:                                              ; preds = %169, %166
  %.610 = phi i8* [ %.59, %166 ], [ %170, %169 ]
  %.6 = phi i32 [ %.5, %166 ], [ %173, %169 ]
  %.not49 = icmp eq i32 %.6, 0
  br i1 %.not49, label %174, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds i8, i8* %.610, i64 1
  %171 = load i8, i8* %.610, align 1
  %172 = sext i8 %171 to i32
  call void @write_1_byte(i32 noundef %172)
  %173 = add i32 %.6, -1
  br label %168, !llvm.loop !7

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %164
  call void @write_marker(i32 noundef %165)
  call void @copy_rest_of_file()
  call void @exit(i32 noundef 0) #13
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %175, %152, %139, %116, %80, %56, %34
  unreachable
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal i32 @keymatch(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %25, %3
  %.03 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %.02 = phi i8* [ %1, %3 ], [ %9, %25 ]
  %.01 = phi i8* [ %0, %3 ], [ %5, %25 ]
  %5 = getelementptr inbounds i8, i8* %.01, i64 1
  %6 = load i8, i8* %.01, align 1
  %7 = sext i8 %6 to i32
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, i8* %.02, i64 1
  %10 = load i8, i8* %.02, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %31

14:                                               ; preds = %8
  %15 = call i16** @__ctype_b_loc() #15
  %16 = load i16*, i16** %15, align 8
  %17 = sext i8 %6 to i64
  %18 = getelementptr inbounds i16, i16* %16, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 256
  %.not7 = icmp eq i16 %20, 0
  br i1 %.not7, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @tolower(i32 noundef %7) #14
  br label %23

23:                                               ; preds = %21, %14
  %.04 = phi i32 [ %22, %21 ], [ %7, %14 ]
  %.not8 = icmp eq i32 %.04, %11
  br i1 %.not8, label %25, label %24

24:                                               ; preds = %23
  br label %31

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %.03, 1
  br label %4, !llvm.loop !8

27:                                               ; preds = %4
  %28 = icmp slt i32 %.03, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29, %24, %13
  %.0 = phi i32 [ 0, %13 ], [ 0, %24 ], [ 0, %29 ], [ 1, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %1) #16
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %3) #16
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* noundef %6) #12
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %8) #16
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %10) #16
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %12) #16
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %14) #16
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %16) #16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %18) #16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %20) #16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %22) #16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %24) #16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), i32 noundef 65000) #12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %28) #16
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %30) #16
  call void @exit(i32 noundef 1) #13
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #4

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @scan_JPEG_header(i32 noundef %0) #6 {
  %2 = call i32 @first_marker()
  %.not = icmp eq i32 %2, 216
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  call void @write_marker(i32 noundef 216)
  br label %7

7:                                                ; preds = %19, %6
  %8 = call i32 @next_marker()
  switch i32 %8, label %18 [
    i32 192, label %9
    i32 193, label %9
    i32 194, label %9
    i32 195, label %9
    i32 197, label %9
    i32 198, label %9
    i32 199, label %9
    i32 201, label %9
    i32 202, label %9
    i32 203, label %9
    i32 205, label %9
    i32 206, label %9
    i32 207, label %9
    i32 218, label %10
    i32 217, label %13
    i32 254, label %14
  ]

9:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  br label %20

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %7
  br label %20

14:                                               ; preds = %7
  %.not3 = icmp eq i32 %0, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %14
  call void @write_marker(i32 noundef %8)
  call void @copy_variable()
  br label %17

16:                                               ; preds = %14
  call void @skip_variable()
  br label %17

17:                                               ; preds = %16, %15
  br label %19

18:                                               ; preds = %7
  call void @write_marker(i32 noundef %8)
  call void @copy_variable()
  br label %19

19:                                               ; preds = %18, %17
  br label %7

20:                                               ; preds = %13, %9
  ret i32 %8

UnifiedUnreachableBlock:                          ; preds = %10, %3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_marker(i32 noundef %0) #6 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = call i32 @putc(i32 noundef 255, %struct._IO_FILE* noundef %2) #11
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = call i32 @putc(i32 noundef %0, %struct._IO_FILE* noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_2_bytes(i32 noundef %0) #6 {
  %2 = lshr i32 %0, 8
  %3 = and i32 %2, 255
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %4) #11
  %6 = and i32 %0, 255
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %7) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_1_byte(i32 noundef %0) #6 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = call i32 @putc(i32 noundef %0, %struct._IO_FILE* noundef %2) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @copy_rest_of_file() #6 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2) #11
  %.not = icmp eq i32 %3, -1
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %5) #11
  br label %1, !llvm.loop !9

7:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #8

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_marker() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #11
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3) #11
  %.not = icmp eq i32 %2, 255
  br i1 %.not, label %5, label %6

5:                                                ; preds = %0
  %.not1 = icmp eq i32 %4, 216
  br i1 %.not1, label %9, label %6

6:                                                ; preds = %5, %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  unreachable

9:                                                ; preds = %5
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_marker() #6 {
  %1 = call i32 @read_1_byte()
  br label %2

2:                                                ; preds = %3, %0
  %.01 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %.0 = phi i32 [ %1, %0 ], [ %5, %3 ]
  %.not = icmp eq i32 %.0, 255
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.01, 1
  %5 = call i32 @read_1_byte()
  br label %2, !llvm.loop !10

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %9, %6
  %8 = call i32 @read_1_byte()
  br label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %8, 255
  br i1 %10, label %7, label %11, !llvm.loop !11

11:                                               ; preds = %9
  %.not2 = icmp eq i32 %.01, 0
  br i1 %.not2, label %15, label %12

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %13) #16
  br label %15

15:                                               ; preds = %12, %11
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @copy_variable() #6 {
  %1 = call i32 @read_2_bytes()
  call void @write_2_bytes(i32 noundef %1)
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  br label %8

8:                                                ; preds = %9, %6
  %.0 = phi i32 [ %7, %6 ], [ %11, %9 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %12, label %9

9:                                                ; preds = %8
  %10 = call i32 @read_1_byte()
  call void @write_1_byte(i32 noundef %10)
  %11 = add i32 %.0, -1
  br label %8, !llvm.loop !12

12:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_variable() #6 {
  %1 = call i32 @read_2_bytes()
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  br label %8

8:                                                ; preds = %9, %6
  %.0 = phi i32 [ %7, %6 ], [ %11, %9 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %12, label %9

9:                                                ; preds = %8
  %10 = call i32 @read_1_byte()
  %11 = add i32 %.0, -1
  br label %8, !llvm.loop !13

12:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_1_byte() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #11
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  unreachable

7:                                                ; preds = %0
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_2_bytes() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #11
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %9 = call i32 @getc(%struct._IO_FILE* noundef %8) #11
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %7
  %15 = shl i32 %2, 8
  %16 = add i32 %15, %9
  ret i32 %16

UnifiedUnreachableBlock:                          ; preds = %11, %4
  unreachable
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { cold }

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
