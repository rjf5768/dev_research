; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/headers.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reqheaders = type { i8*, i8*, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@hostdomain = external dso_local global [0 x i8], align 1
@hostname = external dso_local global [0 x i8], align 1
@hostuucp = external dso_local global [0 x i8], align 1
@spool.tmpf = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"/tmp/rmXXXXXX\00", align 1
@spool.splbuf = internal global [512 x i8] zeroinitializer, align 16
@spoolfile = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"spool: bad file name '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@spoolfp = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"can't create %s.\0A\00", align 1
@spoolmaster = external dso_local global i32, align 4
@from_addr = external dso_local global i8*, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ieof = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"can't open %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"remote from \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@reqtab = internal global [5 x %struct.reqheaders] [%struct.reqheaders { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* null, i8* null, i8 78 }], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@dateline = internal global [512 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@arpanows = external dso_local global [0 x i8], align 1
@midline = internal global [512 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [45 x i8] c"Message-Id: <%02d%02d%02d%02d%02d.AA%05d@%s>\00", align 1
@gmt = external dso_local global %struct.tm*, align 8
@fromline = internal global [512 x i8] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"From: %s\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"From: %s@%s (%s)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"From: %s@%s\00", align 1
@toline = internal global [512 x i8] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c",\0A\09\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"NOTNULL\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Message-Id:\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"To:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8*], align 16
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %91

20:                                               ; preds = %3
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i8* @strcpy(i8* noundef %21, i8* noundef %23) #5
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %55, %20
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i8* @strcpy(i8* noundef %43, i8* noundef %45) #5
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  store i8 33, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %26, !llvm.loop !4

58:                                               ; preds = %36, %26
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %179

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %70 = call i32 @parse(i8* noundef %67, i8* noundef %68, i8* noundef %69)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %74 = call i8* @strcat(i8* noundef %73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %77 = call i8* @strcat(i8* noundef %75, i8* noundef %76) #5
  br label %78

78:                                               ; preds = %72, %64
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %80 = call i8* @strcat(i8* noundef %79, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %83 = call i8* @strcat(i8* noundef %81, i8* noundef %82) #5
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %86 = call i8* @strcpy(i8* noundef %84, i8* noundef %85) #5
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @parse(i8* noundef %87, i8* noundef %88, i8* noundef %89)
  store i32 %90, i32* %4, align 4
  br label %185

91:                                               ; preds = %3
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %94 = call i32 @ssplit(i8* noundef %92, i8 noundef signext 64, i8** noundef %93)
  store i32 %94, i32* %8, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %126

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strcpy(i8* noundef %97, i8* noundef %102) #5
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %106 = load i8*, i8** %105, align 16
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %113 = load i8*, i8** %112, align 16
  %114 = ptrtoint i8* %111 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = call i8* @strncpy(i8* noundef %104, i8* noundef %106, i64 noundef %119) #5
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8 0, i8* %125, align 1
  store i32 2, i32* %4, align 4
  br label %185

126:                                              ; preds = %91
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %129 = call i32 @ssplit(i8* noundef %127, i8 noundef signext 33, i8** noundef %128)
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %178

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strcpy(i8* noundef %132, i8* noundef %134) #5
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %142 = load i8*, i8** %141, align 16
  %143 = ptrtoint i8* %140 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %15, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = call i8* @strncpy(i8* noundef %136, i8* noundef %138, i64 noundef %148) #5
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %157 = call i32 @ssplit(i8* noundef %155, i8 noundef signext 46, i8** noundef %156)
  store i32 %157, i32* %8, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %131
  store i32 3, i32* %4, align 4
  br label %185

160:                                              ; preds = %131
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %160
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 -1
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %170, %160
  store i32 2, i32* %4, align 4
  br label %185

178:                                              ; preds = %126
  br label %179

179:                                              ; preds = %178, %63
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i8* @strcpy(i8* noundef %180, i8* noundef %181) #5
  %183 = load i8*, i8** %6, align 8
  %184 = call i8* @strcpy(i8* noundef %183, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %177, %159, %96, %78
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ssplit(i8* noundef %0, i8 noundef signext %1, i8** noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %6, align 8
  store i8* %19, i8** %20, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %24, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %9, !llvm.loop !6

33:                                               ; preds = %9
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i8**, i8*** %6, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @build(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %24 [
    i32 1, label %10
    i32 3, label %14
    i32 2, label %19
  ]

10:                                               ; preds = %4
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %12) #5
  br label %24

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %16, i8* noundef %17) #5
  br label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef %21, i8* noundef %22) #5
  br label %24

24:                                               ; preds = %4, %19, %14, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @islocal(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @parse(i8* noundef %9, i8* noundef %10, i8* noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %16, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %20, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %24, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostuucp, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %3
  store i32 1, i32* %4, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @strcmpic(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @spool(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** @spoolfile, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i8*, i8** @spoolfile, align 8
  %13 = load i8*, i8** @spool.tmpf, align 8
  %14 = load i8*, i8** @spool.tmpf, align 8
  %15 = call i64 @strlen(i8* noundef %14) #6
  %16 = sub i64 %15, 6
  %17 = call i32 @strncmp(i8* noundef %12, i8* noundef %13, i64 noundef %16) #6
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @spoolfile, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef 75) #7
  unreachable

23:                                               ; preds = %11, %2
  %24 = call i32 (...) @setdates()
  %25 = load i8*, i8** @spoolfile, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %92

27:                                               ; preds = %23
  %28 = load i8*, i8** @spool.tmpf, align 8
  %29 = call i8* @strcpy(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i64 0, i64 0), i8* noundef %28) #5
  store i8* %29, i8** @spoolfile, align 8
  %30 = load i8*, i8** @spoolfile, align 8
  %31 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* noundef %30)
  %32 = load i8*, i8** @spoolfile, align 8
  %33 = call noalias %struct._IO_FILE* @fopen(i8* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %33, %struct._IO_FILE** @spoolfp, align 8
  %34 = icmp eq %struct._IO_FILE* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** @spoolfile, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %37)
  call void @exit(i32 noundef 73) #7
  unreachable

39:                                               ; preds = %27
  store i32 1, i32* @spoolmaster, align 4
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  call void @rline(i8* noundef %40, i8* noundef %41)
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %45 = call i32 @islocal(i8* noundef %42, i8* noundef %43, i8* noundef %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** @from_addr, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %3, align 4
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @def_headers(i32 noundef %51, i8** noundef %52, i8* noundef %53)
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  call void @scanheaders(i8* noundef %54)
  call void @compheaders()
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %61 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %60)
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i8*, i8** @ieof, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %70 = call i32 @fputs(i8* noundef %68, %struct._IO_FILE* noundef %69)
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %73 = call i8* @fgets(i8* noundef %71, i32 noundef 512, %struct._IO_FILE* noundef %72)
  %74 = icmp eq i8* %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %77 = load i8, i8* %76, align 16
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %67
  store i8* null, i8** @ieof, align 8
  br label %86

86:                                               ; preds = %85, %80, %75
  br label %64, !llvm.loop !7

87:                                               ; preds = %64
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %89 = call i32 @fclose(%struct._IO_FILE* noundef %88)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* noundef %90)
  br label %92

92:                                               ; preds = %87, %23
  %93 = load i8*, i8** @spoolfile, align 8
  %94 = call noalias %struct._IO_FILE* @fopen(i8* noundef %93, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store %struct._IO_FILE* %94, %struct._IO_FILE** @spoolfp, align 8
  %95 = icmp eq %struct._IO_FILE* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load i8*, i8** @spoolfile, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* noundef %98)
  call void @exit(i32 noundef 75) #7
  unreachable

100:                                              ; preds = %92
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @setdates(...) #2

declare dso_local i8* @mktemp(...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_headers(i32 noundef %0, i8** noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @def_to(i32 noundef %7, i8** noundef %8)
  call void @def_date()
  %9 = load i8*, i8** %6, align 8
  call void @def_from(i8* noundef %9)
  call void @def_mid()
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @rline(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8*], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [512 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca [128 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = load i32, i32* @spoolmaster, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %275

25:                                               ; preds = %2
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %29, align 16
  br label %30

30:                                               ; preds = %120, %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %33 = call i8* @strcpy(i8* noundef %31, i8* noundef %32) #5
  %34 = load i8*, i8** @ieof, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %125

37:                                               ; preds = %30
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %40 = call i8* @fgets(i8* noundef %38, i32 noundef 512, %struct._IO_FILE* noundef %39)
  %41 = icmp eq i8* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %37
  store i8* null, i8** @ieof, align 8
  br label %125

53:                                               ; preds = %47, %42
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %55 = call i32 @strncmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %54, i64 noundef 5) #6
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %59 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef %58, i64 noundef 6) #6
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %125

62:                                               ; preds = %57, %53
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %64 = call i8* @strchr(i8* noundef %63, i32 noundef 10) #6
  store i8* %64, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %70 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 0
  %71 = call i32 @ssplit(i8* noundef %69, i8 noundef signext 32, i8** noundef %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 3
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strncmp(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %79, i64 noundef 12) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strcat(i8* noundef %83, i8* noundef %88) #5
  %90 = load i8*, i8** %3, align 8
  %91 = call i8* @strcat(i8* noundef %90, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  br label %92

92:                                               ; preds = %82, %74, %68
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %125

96:                                               ; preds = %92
  %97 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i8* @strchr(i8* noundef %99, i32 noundef 32) #6
  store i8* %100, i8** %20, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i8*, i8** %20, align 8
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %103, %96
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %107 = load i8*, i8** %19, align 8
  %108 = call i8* @strcpy(i8* noundef %106, i8* noundef %107) #5
  br label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %113 = call i32 @parse(i8* noundef %110, i8* noundef %111, i8* noundef %112)
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %115 = load i8, i8* %114, align 16
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %10, align 4
  br label %120

119:                                              ; preds = %109
  store i32 3, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  call void @build(i8* noundef %121, i8* noundef %122, i32 noundef %123, i8* noundef %124)
  br label %30

125:                                              ; preds = %95, %61, %52, %36
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %128 = call i8* @strcat(i8* noundef %126, i8* noundef %127) #5
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %125
  %135 = call i32 @getuid() #5
  %136 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 noundef %135)
  store i8* %136, i8** %21, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i8*, i8** %3, align 8
  %140 = call i8* @strcpy(i8* noundef %139, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %145

141:                                              ; preds = %134
  %142 = load i8*, i8** %3, align 8
  %143 = load i8*, i8** %21, align 8
  %144 = call i8* @strcpy(i8* noundef %142, i8* noundef %143) #5
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 0
  %149 = call i32 @ssplit(i8* noundef %147, i8 noundef signext 33, i8** noundef %148)
  store i32 %149, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %189, %146
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %192

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %18, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %189

165:                                              ; preds = %155
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %17, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 -1
  store i8* %172, i8** %17, align 8
  %173 = load i8*, i8** %17, align 8
  store i8 0, i8* %173, align 1
  %174 = load i8*, i8** %17, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %17, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %179, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %165
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @strcpy(i8* noundef %186, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #5
  br label %188

188:                                              ; preds = %182, %165
  br label %189

189:                                              ; preds = %188, %164
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %150, !llvm.loop !8

192:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %215, %192
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %195, 2
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %200
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %18, align 8
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %17, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %208, i8* noundef %209)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %198
  %213 = load i8*, i8** %18, align 8
  store i8 0, i8* %213, align 1
  br label %214

214:                                              ; preds = %212, %198
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %193, !llvm.loop !9

218:                                              ; preds = %193
  %219 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %219, align 16
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %256, %218
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %259

225:                                              ; preds = %220
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %236 = load i8, i8* %235, align 16
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %243, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0))
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %239, %225
  br label %256

247:                                              ; preds = %239, %234
  %248 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @strcat(i8* noundef %248, i8* noundef %252) #5
  %254 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %255 = call i8* @strcat(i8* noundef %254, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  br label %256

256:                                              ; preds = %247, %246
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %220, !llvm.loop !10

259:                                              ; preds = %220
  %260 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @strcat(i8* noundef %260, i8* noundef %264) #5
  %266 = load i8*, i8** %3, align 8
  %267 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %268 = call i8* @strcpy(i8* noundef %266, i8* noundef %267) #5
  %269 = load i8*, i8** %4, align 8
  %270 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %271 = call i8* @strcpy(i8* noundef %269, i8* noundef %270) #5
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %273 = load i8*, i8** %3, align 8
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %272, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %273)
  br label %275

275:                                              ; preds = %259, %24
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

declare dso_local i8* @pwuid(...) #2

; Function Attrs: nounwind
declare dso_local i32 @getuid() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @scanheaders(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i8*, i8** @ieof, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %58

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 9
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %14
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @isheader(i8* noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %58

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  %35 = load i8*, i8** %2, align 8
  call void @haveheaders(i8* noundef %35)
  br label %36

36:                                               ; preds = %34, %23, %17
  %37 = load i8*, i8** %2, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %39 = call i32 @fputs(i8* noundef %37, %struct._IO_FILE* noundef %38)
  %40 = load i8*, i8** %2, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %42 = call i8* @fgets(i8* noundef %40, i32 noundef 512, %struct._IO_FILE* noundef %41)
  %43 = icmp eq i8* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %36
  store i8* null, i8** @ieof, align 8
  br label %57

57:                                               ; preds = %56, %50, %44
  br label %4, !llvm.loop !11

58:                                               ; preds = %33, %13, %4
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @isheader(i8* noundef %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @haveheaders(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.reqheaders*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %struct.reqheaders** %3, align 8
  br label %4

4:                                                ; preds = %35, %1
  %5 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %6 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %11 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %15 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* noundef %16) #6
  %18 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i64, ...)*)(i8* noundef %12, i8* noundef %13, i64 noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %9
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %21, i32 noundef 5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** @from_addr, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** @from_addr, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef %29) #5
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %33 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %32, i32 0, i32 2
  store i8 89, i8* %33, align 8
  br label %38

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %37 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %36, i32 1
  store %struct.reqheaders* %37, %struct.reqheaders** %3, align 8
  br label %4, !llvm.loop !12

38:                                               ; preds = %31, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compheaders() #0 {
  %1 = alloca %struct.reqheaders*, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %struct.reqheaders** %1, align 8
  br label %2

2:                                                ; preds = %20, %0
  %3 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %4 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %9 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %8, i32 0, i32 2
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 89
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %15 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %16 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %17)
  br label %19

19:                                               ; preds = %13, %7
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %22 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %21, i32 1
  store %struct.reqheaders* %22, %struct.reqheaders** %1, align 8
  br label %2, !llvm.loop !13

23:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isheader(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @strchr(i8* noundef %5, i32 noundef 58) #6
  store i8* %6, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp slt i32 %21, 33
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sgt i32 %26, 126
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %14, !llvm.loop !14

32:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %28, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @strncmpic(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_to(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strcpy(i8* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #5
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = load i8*, i8** %7, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strcat(i8* noundef %15, i8* noundef %20) #5
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strchr(i8* noundef %26, i32 noundef 33) #6
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %14
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strchr(i8* noundef %34, i32 noundef 64) #6
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strcat(i8* noundef %38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #5
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strcat(i8* noundef %40, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #5
  br label %42

42:                                               ; preds = %37, %29, %14
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strlen(i8* noundef %48) #6
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 50
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strcat(i8* noundef %54, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #5
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* noundef %57) #6
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  store i8 0, i8* %60, align 1
  store i32 8, i32* %6, align 4
  br label %64

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @strcat(i8* noundef %62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %10, !llvm.loop !15

69:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_date() #0 {
  %1 = call i8* @strcpy(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #5
  %2 = call i8* @strcat(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_from(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** @from_addr, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** @from_addr, align 8
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* noundef %9) #5
  br label %45

11:                                               ; preds = %1
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strcpy(i8* noundef %16, i8* noundef %17) #5
  br label %33

19:                                               ; preds = %11
  %20 = call i32 @getuid() #5
  %21 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 noundef %20)
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* (i8*, ...) bitcast (i8* (...)* @pwfnam to i8* (i8*, ...)*)(i8* noundef %24)
  store i8* %25, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @strcpy(i8* noundef %28, i8* noundef %29) #5
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %15
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef %39, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0), i8* noundef %40) #5
  br label %45

42:                                               ; preds = %33
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %43, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #5
  br label %45

45:                                               ; preds = %8, %42, %38
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_mid() #0 {
  %1 = load %struct.tm*, %struct.tm** @gmt, align 8
  %2 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.tm*, %struct.tm** @gmt, align 8
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  %8 = load %struct.tm*, %struct.tm** @gmt, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tm*, %struct.tm** @gmt, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tm*, %struct.tm** @gmt, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @getpid() #5
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i64 0, i64 0), i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 noundef %3, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %17, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

declare dso_local i8* @getenv(...) #2

declare dso_local i8* @pwfnam(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn }

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
