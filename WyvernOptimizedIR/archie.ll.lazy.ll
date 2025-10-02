; ModuleID = './archie.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/archie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@rdgram_priority = dso_local global i32 0, align 4
@listflag = dso_local global i32 0, align 4
@sortflag = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"archie.rutgers.edu\00", align 1
@main.archies = internal global [7 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"archie.ans.net (USA [NY])\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"archie.rutgers.edu (USA [NJ])\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"archie.sura.net (USA [MD])\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"archie.mcgill.ca (Canada)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"archie.funet.fi (Finland/Mainland Europe)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"archie.au (Australia)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"archie.doc.ic.ac.uk (Great Britain/Ireland)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"archie\00", align 1
@progname = dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"ARCHIE_HOST\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Known archie servers:\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c" * %s is the default Archie server.\0A\00", align 1
@.str.13 = private unnamed_addr constant [98 x i8] c" * For the most up-to-date list, write to an Archie server and give it\0A   the command `servers'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [52 x i8] c"%s: -m option requires a value for max hits (>= 1)\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Client version %s based upon Prospero version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Beta.4.2D\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Usage: %s [-[cers][l][t][m#][h host][%s][%s#]%s string\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"       -c : case sensitive substring search\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"       -e : exact string match (default)\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"       -r : regular expression search\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"       -s : case insensitive substring search\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"       -l : list one match per line\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"       -t : sort inverted by date\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"      -m# : specifies maximum number of hits to return (default %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"  -h host : specifies server host\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"       -%s : list known servers and current default\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"      -%s# : specifies query niceness level (0-35765)\0A\00", align 1
@str = private unnamed_addr constant [22 x i8] c"Known archie servers:\00", align 1
@str.1 = private unnamed_addr constant [97 x i8] c" * For the most up-to-date list, write to an Archie server and give it\0A   the command `servers'.\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 95, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** @progname, align 8
  %5 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #7
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %.0 = phi i8* [ %5, %6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %2 ]
  br label %8

8:                                                ; preds = %147, %7
  %.032 = phi i32 [ 0, %7 ], [ %.133, %147 ]
  %.029 = phi i32 [ 0, %7 ], [ %.130, %147 ]
  %.026 = phi i8 [ 61, %7 ], [ %.127, %147 ]
  %.022 = phi i8 [ 61, %7 ], [ %.123, %147 ]
  %.pn = phi i8** [ %1, %7 ], [ %.16, %147 ]
  %.01.in = phi i32 [ %0, %7 ], [ %.12, %147 ]
  %.1 = phi i8* [ %.0, %7 ], [ %.2, %147 ]
  %.05 = getelementptr inbounds i8*, i8** %.pn, i64 1
  %.01 = add nsw i32 %.01.in, -1
  %9 = icmp sgt i32 %.01.in, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load i8*, i8** %.05, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 45
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ]
  br i1 %15, label %16, label %148

16:                                               ; preds = %14
  %17 = load i8*, i8** %.05, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %.not80 = icmp eq i8 %19, 0
  br i1 %.not80, label %26, label %20

20:                                               ; preds = %16
  %21 = load i8, i8* %18, align 1
  %22 = icmp eq i8 %21, 45
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, i8* %17, i64 2
  %25 = load i8, i8* %24, align 1
  %.not92 = icmp eq i8 %25, 0
  br i1 %.not92, label %26, label %29

26:                                               ; preds = %23, %16
  %27 = add nsw i32 %.01.in, -2
  %28 = getelementptr inbounds i8*, i8** %.pn, i64 2
  br label %149

29:                                               ; preds = %23, %20
  br label %30

30:                                               ; preds = %146, %29
  %.133 = phi i32 [ %.032, %29 ], [ %.234, %146 ]
  %.130 = phi i32 [ %.029, %29 ], [ %.231, %146 ]
  %.127 = phi i8 [ %.026, %29 ], [ %.228, %146 ]
  %.123 = phi i8 [ %.022, %29 ], [ %.224, %146 ]
  %.017 = phi i8* [ %18, %29 ], [ %.421, %146 ]
  %.16 = phi i8** [ %.05, %29 ], [ %.1015, %146 ]
  %.12 = phi i32 [ %.01, %29 ], [ %.10, %146 ]
  %.2 = phi i8* [ %.1, %29 ], [ %.3, %146 ]
  %31 = load i8, i8* %.017, align 1
  %.not81 = icmp eq i8 %31, 0
  br i1 %.not81, label %147, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.017, i64 1
  %34 = load i8, i8* %.017, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %142 [
    i32 76, label %36
    i32 78, label %48
    i32 99, label %80
    i32 101, label %81
    i32 104, label %83
    i32 108, label %88
    i32 48, label %91
    i32 49, label %91
    i32 50, label %91
    i32 51, label %91
    i32 52, label %91
    i32 53, label %91
    i32 54, label %91
    i32 55, label %91
    i32 56, label %91
    i32 57, label %91
    i32 109, label %92
    i32 111, label %123
    i32 114, label %135
    i32 115, label %136
    i32 116, label %137
    i32 118, label %138
  ]

36:                                               ; preds = %32
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %44, %36
  %.035 = phi i32 [ 0, %36 ], [ %45, %44 ]
  %38 = icmp ult i32 %.035, 7
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = zext i32 %.035 to i64
  %41 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.archies, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %42) #7
  br label %44

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %.035, 1
  br label %37, !llvm.loop !4

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #7
  %puts91 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([97 x i8], [97 x i8]* @str.1, i64 0, i64 0))
  br label %146

48:                                               ; preds = %32
  store i32 32765, i32* @rdgram_priority, align 4
  %49 = load i8, i8* %33, align 1
  %.not86 = icmp eq i8 %49, 0
  br i1 %.not86, label %59, label %50

50:                                               ; preds = %48
  %51 = load i8, i8* %33, align 1
  %52 = zext i8 %51 to i64
  %memchr.bounds87 = icmp ugt i8 %51, 63
  %53 = shl i64 1, %52
  %54 = and i64 %53, 287984085547089921
  %memchr.bits88 = icmp eq i64 %54, 0
  %memchr89 = select i1 %memchr.bounds87, i1 true, i1 %memchr.bits88
  br i1 %memchr89, label %59, label %55

55:                                               ; preds = %50
  %56 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %33, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull @rdgram_priority) #7
  %57 = call i64 @strspn(i8* noundef nonnull %33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #8
  %58 = getelementptr inbounds i8, i8* %33, i64 %57
  br label %71

59:                                               ; preds = %50, %48
  %60 = icmp sgt i32 %.12, 2
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8*, i8** %.16, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %63, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull @rdgram_priority) #7
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = add nsw i32 %.12, -1
  %68 = getelementptr inbounds i8*, i8** %.16, i64 1
  br label %69

69:                                               ; preds = %66, %61
  %.27 = phi i8** [ %68, %66 ], [ %.16, %61 ]
  %.23 = phi i32 [ %67, %66 ], [ %.12, %61 ]
  br label %70

70:                                               ; preds = %69, %59
  %.38 = phi i8** [ %.27, %69 ], [ %.16, %59 ]
  %.34 = phi i32 [ %.23, %69 ], [ %.12, %59 ]
  br label %71

71:                                               ; preds = %70, %55
  %.118 = phi i8* [ %58, %55 ], [ %33, %70 ]
  %.49 = phi i8** [ %.16, %55 ], [ %.38, %70 ]
  %.4 = phi i32 [ %.12, %55 ], [ %.34, %70 ]
  %72 = load i32, i32* @rdgram_priority, align 4
  %73 = icmp sgt i32 %72, 32767
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 32765, i32* @rdgram_priority, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, i32* @rdgram_priority, align 4
  %77 = icmp slt i32 %76, -32765
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -32765, i32* @rdgram_priority, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %146

80:                                               ; preds = %32
  br label %146

81:                                               ; preds = %32
  %82 = add nsw i32 %.130, 1
  br label %146

83:                                               ; preds = %32
  %84 = getelementptr inbounds i8*, i8** %.16, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = add nsw i32 %.12, -1
  %87 = getelementptr inbounds i8*, i8** %.16, i64 1
  br label %146

88:                                               ; preds = %32
  %89 = load i32, i32* @listflag, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @listflag, align 4
  br label %146

91:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  br label %92

92:                                               ; preds = %91, %32
  %.219 = phi i8* [ %33, %32 ], [ %.017, %91 ]
  store i32 -1, i32* %3, align 4
  %93 = load i8, i8* %.219, align 1
  %.not83 = icmp eq i8 %93, 0
  br i1 %.not83, label %103, label %94

94:                                               ; preds = %92
  %95 = load i8, i8* %.219, align 1
  %96 = zext i8 %95 to i64
  %memchr.bounds = icmp ugt i8 %95, 63
  %97 = shl i64 1, %96
  %98 = and i64 %97, 287948901175001089
  %memchr.bits = icmp eq i64 %98, 0
  %memchr84 = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr84, label %103, label %99

99:                                               ; preds = %94
  %100 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.219, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %3) #7
  %101 = call i64 @strspn(i8* noundef nonnull %.219, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #8
  %102 = getelementptr inbounds i8, i8* %.219, i64 %101
  br label %115

103:                                              ; preds = %94, %92
  %104 = icmp sgt i32 %.12, 1
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %.16, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %3) #7
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = add nsw i32 %.12, -1
  %112 = getelementptr inbounds i8*, i8** %.16, i64 1
  br label %113

113:                                              ; preds = %110, %105
  %.510 = phi i8** [ %112, %110 ], [ %.16, %105 ]
  %.5 = phi i32 [ %111, %110 ], [ %.12, %105 ]
  br label %114

114:                                              ; preds = %113, %103
  %.611 = phi i8** [ %.510, %113 ], [ %.16, %103 ]
  %.6 = phi i32 [ %.5, %113 ], [ %.12, %103 ]
  br label %115

115:                                              ; preds = %114, %99
  %.320 = phi i8* [ %102, %99 ], [ %.219, %114 ]
  %.712 = phi i8** [ %.16, %99 ], [ %.611, %114 ]
  %.7 = phi i32 [ %.12, %99 ], [ %.6, %114 ]
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = load i8*, i8** @progname, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i8* noundef %120) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %115
  br label %146

123:                                              ; preds = %32
  %124 = icmp sgt i32 %.12, 1
  br i1 %124, label %125, label %134

125:                                              ; preds = %123
  %126 = getelementptr inbounds i8*, i8** %.16, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %127, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* noundef nonnull %4) #7
  %.not82 = icmp eq i32 %128, 1
  br i1 %.not82, label %130, label %129

129:                                              ; preds = %125
  br label %133

130:                                              ; preds = %125
  %131 = add nsw i32 %.12, -1
  %132 = getelementptr inbounds i8*, i8** %.16, i64 1
  br label %133

133:                                              ; preds = %130, %129
  %.813 = phi i8** [ %.16, %129 ], [ %132, %130 ]
  %.8 = phi i32 [ -1, %129 ], [ %131, %130 ]
  br label %134

134:                                              ; preds = %133, %123
  %.914 = phi i8** [ %.813, %133 ], [ %.16, %123 ]
  %.9 = phi i32 [ %.8, %133 ], [ %.12, %123 ]
  br label %146

135:                                              ; preds = %32
  br label %146

136:                                              ; preds = %32
  br label %146

137:                                              ; preds = %32
  store i32 1, i32* @sortflag, align 4
  br label %146

138:                                              ; preds = %32
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %139, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #9
  %141 = add nsw i32 %.133, 1
  br label %146

142:                                              ; preds = %32
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %144 = load i8*, i8** @progname, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %144, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %138, %137, %136, %135, %134, %122, %88, %83, %81, %80, %79, %46
  %.234 = phi i32 [ %141, %138 ], [ %.133, %137 ], [ %.133, %136 ], [ %.133, %135 ], [ %.133, %134 ], [ %.133, %122 ], [ %.133, %88 ], [ %.133, %83 ], [ %.133, %81 ], [ %.133, %80 ], [ %.133, %79 ], [ 1, %46 ]
  %.231 = phi i32 [ %.130, %138 ], [ %.130, %137 ], [ %.130, %136 ], [ %.130, %135 ], [ %.130, %134 ], [ %.130, %122 ], [ %.130, %88 ], [ %.130, %83 ], [ %82, %81 ], [ %.130, %80 ], [ %.130, %79 ], [ %.130, %46 ]
  %.228 = phi i8 [ %.127, %138 ], [ %.127, %137 ], [ 115, %136 ], [ 114, %135 ], [ %.127, %134 ], [ %.127, %122 ], [ %.127, %88 ], [ %.127, %83 ], [ %.127, %81 ], [ 99, %80 ], [ %.127, %79 ], [ %.127, %46 ]
  %.224 = phi i8 [ %.123, %138 ], [ %.123, %137 ], [ 83, %136 ], [ 82, %135 ], [ %.123, %134 ], [ %.123, %122 ], [ %.123, %88 ], [ %.123, %83 ], [ %.123, %81 ], [ 67, %80 ], [ %.123, %79 ], [ %.123, %46 ]
  %.421 = phi i8* [ %33, %138 ], [ %33, %137 ], [ %33, %136 ], [ %33, %135 ], [ %33, %134 ], [ %.320, %122 ], [ %33, %88 ], [ %33, %83 ], [ %33, %81 ], [ %33, %80 ], [ %.118, %79 ], [ %33, %46 ]
  %.1015 = phi i8** [ %.16, %138 ], [ %.16, %137 ], [ %.16, %136 ], [ %.16, %135 ], [ %.914, %134 ], [ %.712, %122 ], [ %.16, %88 ], [ %87, %83 ], [ %.16, %81 ], [ %.16, %80 ], [ %.49, %79 ], [ %.16, %46 ]
  %.10 = phi i32 [ %.12, %138 ], [ %.12, %137 ], [ %.12, %136 ], [ %.12, %135 ], [ %.9, %134 ], [ %.7, %122 ], [ %.12, %88 ], [ %86, %83 ], [ %.12, %81 ], [ %.12, %80 ], [ %.4, %79 ], [ %.12, %46 ]
  %.3 = phi i8* [ %.2, %138 ], [ %.2, %137 ], [ %.2, %136 ], [ %.2, %135 ], [ %.2, %134 ], [ %.2, %122 ], [ %.2, %88 ], [ %85, %83 ], [ %.2, %81 ], [ %.2, %80 ], [ %.2, %79 ], [ %.2, %46 ]
  br label %30, !llvm.loop !6

147:                                              ; preds = %30
  br label %8, !llvm.loop !7

148:                                              ; preds = %14
  br label %149

149:                                              ; preds = %148, %26
  %.1116 = phi i8** [ %28, %26 ], [ %.05, %148 ]
  %.11 = phi i32 [ %27, %26 ], [ %.01, %148 ]
  %.not76 = icmp eq i32 %.029, 0
  br i1 %.not76, label %151, label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %149
  %.325 = phi i8 [ %.026, %150 ], [ %.022, %149 ]
  %.not77 = icmp eq i32 %.11, 1
  br i1 %.not77, label %154, label %152

152:                                              ; preds = %151
  %.not79 = icmp eq i32 %.032, 0
  br i1 %.not79, label %154, label %153

153:                                              ; preds = %152
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

154:                                              ; preds = %152, %151
  %.not78 = icmp eq i32 %.11, 1
  br i1 %.not78, label %180, label %155

155:                                              ; preds = %154
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = load i8*, i8** @progname, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i8* noundef %157, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #9
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %160 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %159) #11
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %161) #11
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %164 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %163) #11
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %166 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %165) #11
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %167) #11
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %169) #11
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 noundef %172) #9
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %175 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %174) #11
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #9
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

180:                                              ; preds = %154
  %181 = load i8*, i8** %.1116, align 8
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @sortflag, align 4
  %185 = load i32, i32* @listflag, align 4
  call void @procquery(i8* noundef %.1, i8* noundef %181, i32 noundef %182, i32 noundef %183, i8 noundef signext %.325, i32 noundef %184, i32 noundef %185) #7
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %180, %155, %153, %142, %118
  unreachable
}

declare dso_local i8* @getenv(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strspn(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @procquery(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold }

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
