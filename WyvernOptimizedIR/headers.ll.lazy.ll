; ModuleID = './headers.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reqheaders = type { i8*, i8*, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%_wyvern_thunk_type.0 = type { i8* (%_wyvern_thunk_type.0*)*, i8*, i1 }

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
  %4 = alloca [32 x i8*], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = load i8, i8* %0, align 1
  %9 = icmp eq i8 %8, 64
  br i1 %9, label %10, label %57

10:                                               ; preds = %3
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %0, i64 1
  %13 = call i8* @strcpy(i8* noundef nonnull %11, i8* noundef nonnull %12) #13
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  br label %15

15:                                               ; preds = %32, %10
  %.01 = phi i8* [ %14, %10 ], [ %33, %32 ]
  %16 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %16, 0
  br i1 %.not, label %.loopexit, label %17

17:                                               ; preds = %15
  %18 = load i8, i8* %.01, align 1
  %19 = icmp eq i8 %18, 58
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %34

21:                                               ; preds = %17
  %22 = load i8, i8* %.01, align 1
  %23 = icmp eq i8 %22, 44
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, i8* %.01, i64 1
  %26 = call i8* @strcpy(i8* noundef nonnull %.01, i8* noundef nonnull %25) #13
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8, i8* %.01, align 1
  %29 = icmp eq i8 %28, 64
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8 33, i8* %.01, align 1
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %15, !llvm.loop !4

.loopexit:                                        ; preds = %15
  br label %34

34:                                               ; preds = %.loopexit, %20
  %35 = load i8, i8* %.01, align 1
  %.not7 = icmp eq i8 %35, 58
  br i1 %.not7, label %37, label %36

36:                                               ; preds = %34
  br label %120

37:                                               ; preds = %34
  store i8 0, i8* %.01, align 1
  %38 = getelementptr inbounds i8, i8* %.01, i64 1
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %41 = call i32 @parse(i8* noundef nonnull %38, i8* noundef nonnull %39, i8* noundef nonnull %40)
  %.not8 = icmp eq i32 %41, 1
  br i1 %.not8, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %strlen9 = call i64 @strlen(i8* nonnull %43)
  %endptr10 = getelementptr [512 x i8], [512 x i8]* %5, i64 0, i64 %strlen9
  %44 = bitcast i8* %endptr10 to i16*
  store i16 33, i16* %44, align 1
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %47 = call i8* @strcat(i8* noundef nonnull %45, i8* noundef nonnull %46) #13
  br label %48

48:                                               ; preds = %42, %37
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %strlen = call i64 @strlen(i8* nonnull %49)
  %endptr = getelementptr [512 x i8], [512 x i8]* %5, i64 0, i64 %strlen
  %50 = bitcast i8* %endptr to i16*
  store i16 33, i16* %50, align 1
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %53 = call i8* @strcat(i8* noundef nonnull %51, i8* noundef nonnull %52) #13
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %55 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef nonnull %54) #13
  %56 = call i32 @parse(i8* noundef nonnull %0, i8* noundef %1, i8* noundef %2)
  br label %122

57:                                               ; preds = %3
  %58 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %59 = call i32 @ssplit(i8* noundef nonnull %0, i8 noundef signext 64, i8** noundef nonnull %58)
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = add nsw i32 %59, -1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %65) #13
  %67 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %68 = load i8*, i8** %67, align 16
  %69 = add nsw i32 %59, -1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = ptrtoint i8* %68 to i64
  %75 = sub i64 %73, %74
  %76 = shl i64 %75, 32
  %sext5 = add i64 %76, -4294967296
  %77 = ashr exact i64 %sext5, 32
  %78 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %2, i8* noundef %68, i64 noundef %77) #13
  %79 = shl i64 %75, 32
  %sext6 = add i64 %79, -4294967296
  %80 = ashr exact i64 %sext6, 32
  %81 = getelementptr inbounds i8, i8* %2, i64 %80
  store i8 0, i8* %81, align 1
  br label %122

82:                                               ; preds = %57
  %83 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %84 = call i32 @ssplit(i8* noundef nonnull %0, i8 noundef signext 33, i8** noundef nonnull %83)
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(1) %88) #13
  %90 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %91 = load i8*, i8** %90, align 16
  %92 = ptrtoint i8* %88 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = shl i64 %94, 32
  %sext = add i64 %95, -4294967296
  %96 = ashr exact i64 %sext, 32
  %97 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef %91, i64 noundef %96) #13
  %98 = shl i64 %94, 32
  %sext4 = add i64 %98, -4294967296
  %99 = ashr exact i64 %sext4, 32
  %100 = getelementptr inbounds i8, i8* %1, i64 %99
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 0
  %102 = call i32 @ssplit(i8* noundef %1, i8 noundef signext 46, i8** noundef nonnull %101)
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %122

105:                                              ; preds = %86
  %106 = add nsw i32 %102, -1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = add nsw i32 %102, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [32 x i8*], [32 x i8*]* %4, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 -1
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %112, %105
  br label %122

119:                                              ; preds = %82
  br label %120

120:                                              ; preds = %119, %36
  %121 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull %0) #13
  store i8 0, i8* %1, align 1
  br label %122

122:                                              ; preds = %120, %118, %104, %61, %48
  %.0 = phi i32 [ 1, %120 ], [ %56, %48 ], [ 2, %61 ], [ 3, %104 ], [ 2, %118 ]
  ret i32 %.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias noundef returned writeonly, i8* noalias nocapture noundef readonly) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @ssplit(i8* noundef %0, i8 noundef signext %1, i8** nocapture noundef writeonly %2) #3 {
  br label %4

4:                                                ; preds = %11, %3
  %.03 = phi i32 [ 0, %3 ], [ %.14, %11 ]
  %.02 = phi i8** [ %2, %3 ], [ %.1, %11 ]
  %.01 = phi i32 [ 0, %3 ], [ %14, %11 ]
  %.0 = phi i8* [ %0, %3 ], [ %15, %11 ]
  %5 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %16, label %6

6:                                                ; preds = %4
  %.not7 = icmp eq i32 %.01, 0
  br i1 %.not7, label %7, label %10

7:                                                ; preds = %6
  %8 = add nsw i32 %.03, 1
  %9 = getelementptr inbounds i8*, i8** %.02, i64 1
  store i8* %.0, i8** %.02, align 8
  br label %10

10:                                               ; preds = %7, %6
  %.14 = phi i32 [ %.03, %6 ], [ %8, %7 ]
  %.1 = phi i8** [ %.02, %6 ], [ %9, %7 ]
  br label %11

11:                                               ; preds = %10
  %12 = load i8, i8* %.0, align 1
  %13 = icmp ne i8 %12, %1
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %4, !llvm.loop !6

16:                                               ; preds = %4
  %.not6 = icmp eq i32 %.01, 0
  br i1 %.not6, label %17, label %20

17:                                               ; preds = %16
  %18 = add nsw i32 %.03, 1
  %19 = getelementptr inbounds i8*, i8** %.02, i64 1
  store i8* %.0, i8** %.02, align 8
  br label %20

20:                                               ; preds = %17, %16
  %.25 = phi i32 [ %.03, %16 ], [ %18, %17 ]
  %.2 = phi i8** [ %.02, %16 ], [ %19, %17 ]
  store i8* null, i8** %.2, align 8
  ret i32 %.25
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @build(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  switch i32 %2, label %10 [
    i32 1, label %5
    i32 3, label %6
    i32 2, label %8
  ]

5:                                                ; preds = %4
  %strcpy = call i8* @strcpy(i8* nonnull dereferenceable(1) %3, i8* nonnull dereferenceable(1) %1)
  br label %10

6:                                                ; preds = %4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #13
  br label %10

8:                                                ; preds = %4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1, i8* noundef %0) #13
  br label %10

10:                                               ; preds = %8, %6, %5, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @islocal(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = call i32 @parse(i8* noundef %0, i8* noundef %1, i8* noundef %2)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %1, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %1, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %1, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostuucp, i64 0, i64 0)) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %6, %3
  br label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %15
  %.0 = phi i32 [ 1, %15 ], [ 0, %16 ]
  ret i32 %.0
}

declare dso_local i32 @strcmpic(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @spool(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = load i8*, i8** @spoolfile, align 8
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %18, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** @spoolfile, align 8
  %10 = load i8*, i8** @spool.tmpf, align 8
  %11 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #9
  %12 = add i64 %11, -6
  %13 = call i32 @strncmp(i8* noundef %9, i8* noundef %10, i64 noundef %12) #9
  %.not5 = icmp eq i32 %13, 0
  br i1 %.not5, label %18, label %14

14:                                               ; preds = %8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @spoolfile, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* noundef %16) #14
  call void @exit(i32 noundef 75) #15
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %8, %2
  %19 = call i32 (...) @setdates() #13
  %20 = load i8*, i8** @spoolfile, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i8*, i8** @spool.tmpf, align 8
  %24 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %23) #13
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i64 0, i64 0), i8** @spoolfile, align 8
  %25 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i64 0, i64 0)) #13
  %26 = load i8*, i8** @spoolfile, align 8
  %27 = call noalias %struct._IO_FILE* @fopen(i8* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #13
  store %struct._IO_FILE* %27, %struct._IO_FILE** @spoolfp, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** @spoolfile, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %31) #14
  call void @exit(i32 noundef 73) #15
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %22
  store i32 1, i32* @spoolmaster, align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_spool_417849211, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @_wyvern_calleeclone_rline_0319347630(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i8* noundef nonnull %34)
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %38 = call i32 @islocal(i8* noundef nonnull %35, i8* noundef nonnull %36, i8* noundef nonnull %37)
  %.not1 = icmp eq i32 %38, 0
  br i1 %.not1, label %39, label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** @from_addr, align 8
  %.not2 = icmp eq i8* %40, null
  br i1 %.not2, label %49, label %41

41:                                               ; preds = %39, %33
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  call void @def_headers(i32 noundef %0, i8** noundef %1, i8* noundef nonnull %42)
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  call void @scanheaders(i8* noundef nonnull %43)
  call void @compheaders()
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %45 = load i8, i8* %44, align 16
  %.not4 = icmp eq i8 %45, 10
  br i1 %.not4, label %48, label %46

46:                                               ; preds = %41
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %47)
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i8*, i8** @ieof, align 8
  %.not3 = icmp eq i8* %51, null
  br i1 %.not3, label %70, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %55 = call i32 @fputs(i8* noundef nonnull %53, %struct._IO_FILE* noundef %54) #13
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %58 = call i8* @fgets(i8* noundef nonnull %56, i32 noundef 512, %struct._IO_FILE* noundef %57) #13
  %59 = icmp eq i8* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = icmp eq i8 %62, 46
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 10
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %52
  store i8* null, i8** @ieof, align 8
  br label %69

69:                                               ; preds = %68, %64, %60
  br label %50, !llvm.loop !7

70:                                               ; preds = %50
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %72 = call i32 @fclose(%struct._IO_FILE* noundef %71) #13
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %74 = call i32 @fclose(%struct._IO_FILE* noundef %73) #13
  br label %75

75:                                               ; preds = %70, %18
  %76 = load i8*, i8** @spoolfile, align 8
  %77 = call noalias %struct._IO_FILE* @fopen(i8* noundef %76, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #13
  store %struct._IO_FILE* %77, %struct._IO_FILE** @spoolfp, align 8
  %78 = icmp eq %struct._IO_FILE* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = load i8*, i8** @spoolfile, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* noundef %81) #14
  call void @exit(i32 noundef 75) #15
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %75
  ret void

UnifiedUnreachableBlock:                          ; preds = %79, %29, %14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #6

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #7

declare dso_local i32 @setdates(...) #4

declare dso_local i8* @mktemp(...) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_headers(i32 noundef %0, i8** nocapture noundef readonly %1, i8* noundef %2) #0 {
  call void @def_to(i32 noundef %0, i8** noundef %1)
  call void @def_date()
  call void @def_from(i8* noundef %2)
  call void @def_mid()
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #4

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @rline(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca [16 x i8*], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [128 x i8*], align 16
  %10 = load i32, i32* @spoolmaster, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %196

13:                                               ; preds = %2
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %14, align 16
  store i8 0, i8* %0, align 1
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %15, align 16
  br label %16

16:                                               ; preds = %85, %13
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %18 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull %17) #13
  %19 = load i8*, i8** @ieof, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %89

22:                                               ; preds = %16
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %25 = call i8* @fgets(i8* noundef nonnull %23, i32 noundef 512, %struct._IO_FILE* noundef %24) #13
  %26 = icmp eq i8* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = icmp eq i8 %29, 46
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = icmp eq i8 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %22
  store i8* null, i8** @ieof, align 8
  br label %89

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) %37, i64 5)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %41, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %39, i64 6)
  %.not7 = icmp eq i32 %bcmp6, 0
  br i1 %.not7, label %41, label %40

40:                                               ; preds = %38
  br label %89

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %43 = call i8* @strchr(i8* noundef nonnull %42, i32 noundef 10) #9
  %.not2 = icmp eq i8* %43, null
  br i1 %.not2, label %45, label %44

44:                                               ; preds = %41
  store i8 0, i8* %43, align 1
  br label %45

45:                                               ; preds = %44, %41
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 0
  %48 = call i32 @ssplit(i8* noundef nonnull %46, i8 noundef signext 32, i8** noundef nonnull %47)
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = add nsw i32 %48, -3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strncmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %54, i64 noundef 12) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = add nsw i32 %48, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @strcat(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %61) #13
  %strlen4 = call i64 @strlen(i8* nonnull %0)
  %endptr5 = getelementptr i8, i8* %0, i64 %strlen4
  %63 = bitcast i8* %endptr5 to i16*
  store i16 33, i16* %63, align 1
  br label %64

64:                                               ; preds = %57, %50, %45
  %65 = icmp slt i32 %48, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %89

67:                                               ; preds = %64
  %68 = getelementptr inbounds [16 x i8*], [16 x i8*]* %3, i64 0, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %69, i32 noundef 32) #9
  %.not3 = icmp eq i8* %70, null
  br i1 %.not3, label %72, label %71

71:                                               ; preds = %67
  store i8 0, i8* %70, align 1
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %74 = call i8* @strcpy(i8* noundef nonnull %73, i8* noundef nonnull dereferenceable(1) %69) #13
  br label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %79 = call i32 @parse(i8* noundef nonnull %76, i8* noundef nonnull %77, i8* noundef nonnull %78)
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %85

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %83
  %.01 = phi i32 [ 1, %83 ], [ 3, %84 ]
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @build(i8* noundef nonnull %86, i8* noundef nonnull %87, i32 noundef %.01, i8* noundef nonnull %88)
  br label %16

89:                                               ; preds = %66, %40, %35, %21
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %91 = call i8* @strcat(i8* noundef nonnull %0, i8* noundef nonnull %90) #13
  %92 = load i8, i8* %0, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = call i32 @getuid() #13
  %96 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 noundef %95) #13
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %0, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 7, i1 false) #13
  br label %101

99:                                               ; preds = %94
  %100 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef nonnull %96) #13
  br label %101

101:                                              ; preds = %99, %98
  br label %102

102:                                              ; preds = %101, %89
  %103 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 0
  %104 = call i32 @ssplit(i8* noundef nonnull %0, i8 noundef signext 33, i8** noundef nonnull %103)
  br label %105

105:                                              ; preds = %132, %102
  %.0 = phi i32 [ 0, %102 ], [ %133, %132 ]
  %106 = add nsw i32 %104, -1
  %107 = icmp slt i32 %.0, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = zext i32 %.0 to i64
  %110 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %132

115:                                              ; preds = %108
  %116 = add nuw nsw i32 %.0, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  store i8 0, i8* %120, align 1
  %121 = zext i32 %.0 to i64
  %122 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %123, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = zext i32 %.0 to i64
  %128 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %129, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #13
  br label %131

131:                                              ; preds = %126, %115
  br label %132

132:                                              ; preds = %131, %114
  %133 = add nuw nsw i32 %.0, 1
  br label %105, !llvm.loop !8

134:                                              ; preds = %105
  br label %135

135:                                              ; preds = %150, %134
  %.1 = phi i32 [ 0, %134 ], [ %151, %150 ]
  %136 = add nsw i32 %104, -2
  %137 = icmp slt i32 %.1, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = zext i32 %.1 to i64
  %140 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = add nuw nsw i32 %.1, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %141, i8* noundef %145) #13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i8 0, i8* %141, align 1
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149
  %151 = add nuw nsw i32 %.1, 1
  br label %135, !llvm.loop !9

152:                                              ; preds = %135
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %153, align 16
  br label %154

154:                                              ; preds = %182, %152
  %.2 = phi i32 [ 0, %152 ], [ %183, %182 ]
  %155 = add nsw i32 %104, -1
  %156 = icmp slt i32 %.2, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %154
  %158 = zext i32 %.2 to i64
  %159 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %165 = load i8, i8* %164, align 16
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = zext i32 %.2 to i64
  %169 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %170, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #13
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167, %157
  br label %182

174:                                              ; preds = %167, %163
  %175 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %176 = zext i32 %.2 to i64
  %177 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @strcat(i8* noundef nonnull %175, i8* noundef nonnull dereferenceable(1) %178) #13
  %180 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %strlen = call i64 @strlen(i8* nonnull %180)
  %endptr = getelementptr [512 x i8], [512 x i8]* %8, i64 0, i64 %strlen
  %181 = bitcast i8* %endptr to i16*
  store i16 33, i16* %181, align 1
  br label %182

182:                                              ; preds = %174, %173
  %183 = add nuw nsw i32 %.2, 1
  br label %154, !llvm.loop !10

184:                                              ; preds = %154
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %186 = zext i32 %.2 to i64
  %187 = getelementptr inbounds [128 x i8*], [128 x i8*]* %9, i64 0, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @strcat(i8* noundef nonnull %185, i8* noundef nonnull dereferenceable(1) %188) #13
  %190 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %191 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef nonnull %190) #13
  %192 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %193 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull %192) #13
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %194, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %0) #13
  br label %196

196:                                              ; preds = %184, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #5

declare dso_local i8* @pwuid(...) #4

; Function Attrs: nounwind
declare dso_local i32 @getuid() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @scanheaders(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %33, %1
  %.0 = phi i32 [ 0, %1 ], [ %.1, %33 ]
  %3 = load i8*, i8** @ieof, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %34

8:                                                ; preds = %4
  %9 = icmp eq i32 %.0, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i8, i8* %0, align 1
  %.not2 = icmp eq i8 %11, 32
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %10
  %13 = load i8, i8* %0, align 1
  %.not3 = icmp eq i8 %13, 9
  br i1 %.not3, label %19, label %14

14:                                               ; preds = %12, %8
  %15 = call i32 @isheader(i8* noundef nonnull %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %34

18:                                               ; preds = %14
  call void @haveheaders(i8* noundef nonnull %0)
  br label %19

19:                                               ; preds = %18, %12, %10
  %.1 = phi i32 [ 1, %18 ], [ %.0, %12 ], [ %.0, %10 ]
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %21 = call i32 @fputs(i8* noundef nonnull %0, %struct._IO_FILE* noundef %20) #13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %23 = call i8* @fgets(i8* noundef nonnull %0, i32 noundef 512, %struct._IO_FILE* noundef %22) #13
  %24 = icmp eq i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load i8, i8* %0, align 1
  %27 = icmp eq i8 %26, 46
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, i8* %0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  store i8* null, i8** @ieof, align 8
  br label %33

33:                                               ; preds = %32, %28, %25
  br label %2, !llvm.loop !11

.loopexit:                                        ; preds = %2
  br label %34

34:                                               ; preds = %.loopexit, %17, %7
  %35 = call i32 @isheader(i8* noundef %0)
  %.not1 = icmp eq i32 %35, 0
  br i1 %.not1, label %37, label %36

36:                                               ; preds = %34
  store i8 0, i8* %0, align 1
  br label %37

37:                                               ; preds = %36, %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @haveheaders(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %.0 = phi %struct.reqheaders* [ getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %1 ], [ %23, %22 ]
  %3 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %7) #9
  %9 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i64, ...)*)(i8* noundef %7, i8* noundef %0, i64 noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %0, i32 noundef 5) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i8*, i8** @from_addr, align 8
  %.not2 = icmp eq i8* %15, null
  br i1 %.not2, label %19, label %16

16:                                               ; preds = %14
  %17 = load i8*, i8** @from_addr, align 8
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef %17) #13
  br label %19

19:                                               ; preds = %16, %14, %11
  %20 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 2
  store i8 89, i8* %20, align 8
  br label %24

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 1
  br label %2, !llvm.loop !12

.loopexit:                                        ; preds = %2
  br label %24

24:                                               ; preds = %.loopexit, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compheaders() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %.0 = phi %struct.reqheaders* [ getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %0 ], [ %14, %13 ]
  %2 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 2
  %6 = load i8, i8* %5, align 8
  %.not1 = icmp eq i8 %6, 89
  br i1 %.not1, label %12, label %7

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %9 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %10) #13
  br label %12

12:                                               ; preds = %7, %4
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %.0, i64 1
  br label %1, !llvm.loop !13

15:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @isheader(i8* noundef readonly %0) #8 {
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 58) #9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp eq i8* %2, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %1
  br label %19

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %16, %7
  %.01 = phi i8* [ %0, %7 ], [ %17, %16 ]
  %.not = icmp eq i8* %.01, %2
  br i1 %.not, label %18, label %9

9:                                                ; preds = %8
  %10 = load i8, i8* %.01, align 1
  %11 = icmp slt i8 %10, 33
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i8, i8* %.01, align 1
  %14 = icmp eq i8 %13, 127
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9
  br label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %8, !llvm.loop !14

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %15, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %15 ], [ 1, %18 ]
  ret i32 %.0
}

declare dso_local i32 @strncmpic(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_to(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i64 5, i1 false) #13
  br label %3

3:                                                ; preds = %38, %2
  %.01 = phi i32 [ 0, %2 ], [ %39, %38 ]
  %.0 = phi i8* [ getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i64 0, i64 0), %2 ], [ %.2, %38 ]
  %4 = icmp slt i32 %.01, %0
  br i1 %4, label %5, label %40

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i8*, i8** %1, i64 %6
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %.0, i8* noundef nonnull dereferenceable(1) %8) #13
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds i8*, i8** %1, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %12, i32 noundef 33) #9
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %18, i32 noundef 64) #9
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %strlen4 = call i64 @strlen(i8* nonnull dereferenceable(1) %.0)
  %endptr5 = getelementptr i8, i8* %.0, i64 %strlen4
  %22 = bitcast i8* %endptr5 to i16*
  store i16 64, i16* %22, align 1
  %23 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %.0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  br label %24

24:                                               ; preds = %21, %15, %5
  %25 = add nuw nsw i32 %.01, 1
  %26 = icmp slt i32 %25, %0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #9
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 50
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %strlen2 = call i64 @strlen(i8* nonnull dereferenceable(1) %.0)
  %endptr3 = getelementptr i8, i8* %.0, i64 %strlen2
  %32 = bitcast i8* %endptr3 to i32*
  store i32 592428, i32* %32, align 1
  %33 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #9
  %34 = getelementptr inbounds i8, i8* %.0, i64 %33
  store i8 0, i8* %34, align 1
  br label %36

35:                                               ; preds = %27
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %.0)
  %endptr = getelementptr i8, i8* %.0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i64 3, i1 false)
  br label %36

36:                                               ; preds = %35, %31
  %.1 = phi i8* [ %34, %31 ], [ %.0, %35 ]
  br label %37

37:                                               ; preds = %36, %24
  %.2 = phi i8* [ %.1, %36 ], [ %.0, %24 ]
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !15

40:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_date() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(7) getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i64 7, i1 false) #13
  %1 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_from(i8* noundef %0) #0 {
  %2 = alloca [512 x i8], align 16
  %3 = load i8*, i8** @from_addr, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @from_addr, align 8
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* noundef %5) #13
  br label %31

7:                                                ; preds = %1
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #13
  %.not1 = icmp eq i8* %9, null
  br i1 %.not1, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %12 = call i8* @strcpy(i8* noundef nonnull %11, i8* noundef nonnull %9) #13
  br label %23

13:                                               ; preds = %7
  %14 = call i32 @getuid() #13
  %15 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 noundef %14) #13
  %.not2 = icmp eq i8* %15, null
  br i1 %.not2, label %22, label %16

16:                                               ; preds = %13
  %17 = call i8* (i8*, ...) bitcast (i8* (...)* @pwfnam to i8* (i8*, ...)*)(i8* noundef nonnull %15) #13
  %.not4 = icmp eq i8* %17, null
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %20 = call i8* @strcpy(i8* noundef nonnull %19, i8* noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %18, %16
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22, %10
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %.not3 = icmp eq i8 %25, 0
  br i1 %.not3, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* noundef %0, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0), i8* noundef nonnull %27) #13
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef %0, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  br label %31

31:                                               ; preds = %29, %26, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_mid() #0 {
  %1 = load %struct.tm*, %struct.tm** @gmt, align 8
  %2 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tm*, %struct.tm** @gmt, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i64 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %9, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @getpid() #13
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 noundef %3, i32 noundef %6, i32 noundef %8, i32 noundef %11, i32 noundef %13, i32 noundef %14, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getpid() #2

declare dso_local i8* @getenv(...) #4

declare dso_local i8* @pwfnam(...) #4

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_spool_417849211(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [512 x i8], align 16
  br label %sliceclone_1

sliceclone_1:                                     ; preds = %sliceclone_
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_rline_0319347630(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i8* noundef %0) #0 {
  %2 = alloca [16 x i8*], align 16
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [128 x i8*], align 16
  %9 = load i32, i32* @spoolmaster, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %195

12:                                               ; preds = %1
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %13, align 16
  %_wyvern_thunk_fptr_addr25 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr26 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr25, align 8
  %_wyvern_thunkcall27 = call i8* %_wyvern_thunkfptr26(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  store i8 0, i8* %_wyvern_thunkcall27, align 1
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %14, align 16
  br label %15

15:                                               ; preds = %84, %12
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %17 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %16) #13
  %18 = load i8*, i8** @ieof, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %88

21:                                               ; preds = %15
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %24 = call i8* @fgets(i8* noundef nonnull %22, i32 noundef 512, %struct._IO_FILE* noundef %23) #13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = icmp eq i8 %28, 46
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %21
  store i8* null, i8** @ieof, align 8
  br label %88

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) %36, i64 5)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %40, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %bcmp32 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %38, i64 6)
  %.not33 = icmp eq i32 %bcmp32, 0
  br i1 %.not33, label %40, label %39

39:                                               ; preds = %37
  br label %88

40:                                               ; preds = %37, %35
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strchr(i8* noundef nonnull %41, i32 noundef 10) #9
  %.not28 = icmp eq i8* %42, null
  br i1 %.not28, label %44, label %43

43:                                               ; preds = %40
  store i8 0, i8* %42, align 1
  br label %44

44:                                               ; preds = %43, %40
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [16 x i8*], [16 x i8*]* %2, i64 0, i64 0
  %47 = call i32 @ssplit(i8* noundef nonnull %45, i8 noundef signext 32, i8** noundef nonnull %46)
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = add nsw i32 %47, -3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i8*], [16 x i8*]* %2, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strncmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %53, i64 noundef 12) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = add nsw i32 %47, -1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8*], [16 x i8*]* %2, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %_wyvern_thunk_fptr_addr22 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr23 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr22, align 8
  %_wyvern_thunkcall24 = call i8* %_wyvern_thunkfptr23(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %61 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %_wyvern_thunkcall24, i8* noundef nonnull dereferenceable(1) %60) #13
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call i8* %_wyvern_thunkfptr20(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %strlen30 = call i64 @strlen(i8* nonnull dereferenceable(1) %_wyvern_thunkcall21)
  %endptr31 = getelementptr i8, i8* %_wyvern_thunkcall21, i64 %strlen30
  %62 = bitcast i8* %endptr31 to i16*
  store i16 33, i16* %62, align 1
  br label %63

63:                                               ; preds = %56, %49, %44
  %64 = icmp slt i32 %47, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %88

66:                                               ; preds = %63
  %67 = getelementptr inbounds [16 x i8*], [16 x i8*]* %2, i64 0, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %68, i32 noundef 32) #9
  %.not29 = icmp eq i8* %69, null
  br i1 %.not29, label %71, label %70

70:                                               ; preds = %66
  store i8 0, i8* %69, align 1
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %73 = call i8* @strcpy(i8* noundef nonnull %72, i8* noundef nonnull dereferenceable(1) %68) #13
  br label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %78 = call i32 @parse(i8* noundef nonnull %75, i8* noundef nonnull %76, i8* noundef nonnull %77)
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %80 = load i8, i8* %79, align 16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %82
  %.01 = phi i32 [ 1, %82 ], [ 3, %83 ]
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  call void @build(i8* noundef nonnull %85, i8* noundef nonnull %86, i32 noundef %.01, i8* noundef nonnull %87)
  br label %15

88:                                               ; preds = %65, %39, %34, %20
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call i8* %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %90 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %_wyvern_thunkcall18, i8* noundef nonnull %89) #13
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call i8* %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %91 = load i8, i8* %_wyvern_thunkcall15, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = call i32 @getuid() #13
  %95 = call i8* (i32, ...) bitcast (i8* (...)* @pwuid to i8* (i32, ...)*)(i32 noundef %94) #13
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i8* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %_wyvern_thunkcall12, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 7, i1 false) #13
  br label %100

98:                                               ; preds = %93
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i8* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %99 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %_wyvern_thunkcall9, i8* noundef nonnull %95) #13
  br label %100

100:                                              ; preds = %98, %97
  br label %101

101:                                              ; preds = %100, %88
  %102 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 0
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i8* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %103 = call i32 @ssplit(i8* noundef %_wyvern_thunkcall6, i8 noundef signext 33, i8** noundef nonnull %102)
  br label %104

104:                                              ; preds = %131, %101
  %.0 = phi i32 [ 0, %101 ], [ %132, %131 ]
  %105 = add nsw i32 %103, -1
  %106 = icmp slt i32 %.0, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = zext i32 %.0 to i64
  %109 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %131

114:                                              ; preds = %107
  %115 = add nuw nsw i32 %.0, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  store i8 0, i8* %119, align 1
  %120 = zext i32 %.0 to i64
  %121 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %122, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #13
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = zext i32 %.0 to i64
  %127 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %128, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #13
  br label %130

130:                                              ; preds = %125, %114
  br label %131

131:                                              ; preds = %130, %113
  %132 = add nuw nsw i32 %.0, 1
  br label %104, !llvm.loop !8

133:                                              ; preds = %104
  br label %134

134:                                              ; preds = %149, %133
  %.1 = phi i32 [ 0, %133 ], [ %150, %149 ]
  %135 = add nsw i32 %103, -2
  %136 = icmp slt i32 %.1, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = zext i32 %.1 to i64
  %139 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = add nuw nsw i32 %.1, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %140, i8* noundef %144) #13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i8 0, i8* %140, align 1
  br label %148

148:                                              ; preds = %147, %137
  br label %149

149:                                              ; preds = %148
  %150 = add nuw nsw i32 %.1, 1
  br label %134, !llvm.loop !9

151:                                              ; preds = %134
  %152 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %152, align 16
  br label %153

153:                                              ; preds = %181, %151
  %.2 = phi i32 [ 0, %151 ], [ %182, %181 ]
  %154 = add nsw i32 %103, -1
  %155 = icmp slt i32 %.2, %154
  br i1 %155, label %156, label %183

156:                                              ; preds = %153
  %157 = zext i32 %.2 to i64
  %158 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %164 = load i8, i8* %163, align 16
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = zext i32 %.2 to i64
  %168 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %169, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166, %156
  br label %181

173:                                              ; preds = %166, %162
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %175 = zext i32 %.2 to i64
  %176 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @strcat(i8* noundef nonnull %174, i8* noundef nonnull dereferenceable(1) %177) #13
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %strlen = call i64 @strlen(i8* nonnull %179)
  %endptr = getelementptr [512 x i8], [512 x i8]* %7, i64 0, i64 %strlen
  %180 = bitcast i8* %endptr to i16*
  store i16 33, i16* %180, align 1
  br label %181

181:                                              ; preds = %173, %172
  %182 = add nuw nsw i32 %.2, 1
  br label %153, !llvm.loop !10

183:                                              ; preds = %153
  %184 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %185 = zext i32 %.2 to i64
  %186 = getelementptr inbounds [128 x i8*], [128 x i8*]* %8, i64 0, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i8* @strcat(i8* noundef nonnull %184, i8* noundef nonnull dereferenceable(1) %187) #13
  %189 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %190 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %_wyvern_thunkcall3, i8* noundef nonnull %189) #13
  %191 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %192 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %191) #13
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #13
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %193, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %_wyvern_thunkcall) #13
  br label %195

195:                                              ; preds = %183, %11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }

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
