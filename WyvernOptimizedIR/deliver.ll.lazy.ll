; ModuleID = './deliver.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@spoolfp = external dso_local global %struct._IO_FILE*, align 8
@stderrfile = dso_local global [20 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"/tmp/stderrXXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@debug = external dso_local global i32, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@uuxargs = external dso_local global i8*, align 8
@maxnoqueue = external dso_local global i32, align 4
@queuecost = external dso_local global i32, align 4
@routing = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/bin/lmail\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s -a%s %s - %s!rmail\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/usr/bin/uux\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s %s %s -f %s \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/bin/smail\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@spoolfile = external dso_local global i8*, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" '%s!%s'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" '(%s)'\00", align 1
@deliver.errbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [40 x i8] c"address resolution ('%s' @ '%s') failed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"COMMAND: %s\0A\00", align 1
@exitstat = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"couldn't execute %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"From %s %.24s\0A\00", align 1
@nows = external dso_local global [0 x i8], align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"From %s  %.24s remote from %s\0A\00", align 1
@hostname = external dso_local global [0 x i8], align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Received: by %s (%s)\0A\09id AA%05d; %s\0A\00", align 1
@hostdomain = external dso_local global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"smail2.5\00", align 1
@arpanows = external dso_local global [0 x i8], align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s failed (%d)\0Atrying %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s failed (%d)\0A\00", align 1
@spoolmaster = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"From: MAILER-DAEMON@%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Subject: failed mail\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"=======     command failed      =======\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" COMMAND: %s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"======= standard error follows  =======\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"======= text of message follows =======\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"From %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deliver(i32 noundef %0, i8** nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i32* nocapture noundef %3, i32* nocapture noundef readonly %4) #0 {
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca [512 x i8], align 16
  %11 = alloca %struct.stat, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %13 = call i32 @fseek(%struct._IO_FILE* noundef %12, i64 noundef 0, i32 noundef 0) #6
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %16 = call i8* @fgets(i8* noundef nonnull %14, i32 noundef 512, %struct._IO_FILE* noundef %15) #6
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %18 = call i8* @strchr(i8* noundef nonnull %17, i32 noundef 10) #7
  %.not = icmp eq i8* %18, null
  br i1 %.not, label %20, label %19

19:                                               ; preds = %5
  store i8 0, i8* %18, align 1
  br label %20

20:                                               ; preds = %19, %5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %22 = call i64 @ftell(%struct._IO_FILE* noundef %21) #6
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), align 16
  br label %23

23:                                               ; preds = %295, %20
  %.025 = phi i32 [ 0, %20 ], [ %296, %295 ]
  %.09 = phi %struct._IO_FILE* [ undef, %20 ], [ %.413, %295 ]
  %.05 = phi i32 [ 0, %20 ], [ %.6, %295 ]
  %24 = icmp slt i32 %.025, %0
  br i1 %24, label %25, label %297

25:                                               ; preds = %23
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %29 = call i32 @unlink(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(18) getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 18, i1 false) #6
  %30 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #6
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call %struct._IO_FILE* @freopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %31) #6
  %33 = load i32, i32* @debug, align 4
  %.not45 = icmp eq i32 %33, 2
  br i1 %.not45, label %37, label %34

34:                                               ; preds = %25
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call %struct._IO_FILE* @freopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %35) #6
  br label %37

37:                                               ; preds = %34, %25
  store i8 0, i8* %28, align 16
  store i8 0, i8* %27, align 16
  store i8 0, i8* %26, align 16
  %38 = zext i32 %.025 to i64
  %39 = getelementptr inbounds i32, i32* %3, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %295

43:                                               ; preds = %37
  %44 = load i8*, i8** @uuxargs, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* @maxnoqueue, align 4
  %48 = icmp slt i32 %.05, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = zext i32 %.025 to i64
  %51 = getelementptr inbounds i32, i32* %4, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @queuecost, align 4
  %.not60 = icmp sgt i32 %52, %53
  br i1 %.not60, label %55, label %54

54:                                               ; preds = %49
  br label %56

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %54
  %.021 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %54 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %55 ]
  br label %59

57:                                               ; preds = %43
  %58 = load i8*, i8** @uuxargs, align 8
  br label %59

59:                                               ; preds = %57, %56
  %.122 = phi i8* [ %.021, %56 ], [ %58, %57 ]
  %60 = load i32, i32* @routing, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @routing, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %66
  %.023 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %66 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %67 ]
  br label %69

69:                                               ; preds = %68, %62
  %.124 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %62 ], [ %.023, %68 ]
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) %70, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 11, i1 false)
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %73 = zext i32 %.025 to i64
  %74 = getelementptr inbounds i8*, i8** %1, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %71, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %72, i8* noundef %.122, i8* noundef %75) #6
  br label %77

77:                                               ; preds = %156, %69
  %.026 = phi i32 [ %.025, %69 ], [ %157, %156 ]
  %.03 = phi i8* [ %26, %69 ], [ %.14, %156 ]
  %.01 = phi i8* [ %27, %69 ], [ %.12, %156 ]
  %.0 = phi i8* [ %28, %69 ], [ %.2, %156 ]
  %78 = icmp slt i32 %.026, %0
  br i1 %78, label %79, label %158

79:                                               ; preds = %77
  %80 = zext i32 %.026 to i64
  %81 = getelementptr inbounds i32, i32* %3, i64 %80
  %82 = load i32, i32* %81, align 4
  %.not57 = icmp eq i32 %82, %40
  br i1 %.not57, label %83, label %103

83:                                               ; preds = %79
  %84 = zext i32 %.025 to i64
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = zext i32 %.026 to i64
  %88 = getelementptr inbounds i8*, i8** %1, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %86, i8* noundef %89) #6
  %.not58 = icmp eq i32 %90, 0
  br i1 %.not58, label %91, label %103

91:                                               ; preds = %83
  %92 = ptrtoint i8* %.03 to i64
  %93 = ptrtoint [512 x i8]* %7 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %95, 128
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = ptrtoint i8* %.01 to i64
  %99 = ptrtoint [512 x i8]* %8 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = icmp sgt i32 %101, 128
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %91, %83, %79
  br label %156

104:                                              ; preds = %97
  %105 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #7
  %106 = getelementptr inbounds i8, i8* %.0, i64 %105
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %.not59 = icmp eq i8* %106, %107
  br i1 %.not59, label %110, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 59, i8* %106, align 1
  br label %110

110:                                              ; preds = %108, %104
  %.1 = phi i8* [ %109, %108 ], [ %106, %104 ]
  %111 = load i32, i32* @debug, align 4
  %112 = icmp eq i32 %111, 1
  %113 = select i1 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %114 = load i8*, i8** @spoolfile, align 8
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %.1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %113, i8* noundef %.124, i8* noundef %114) #6
  %116 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.1) #7
  %117 = getelementptr inbounds i8, i8* %.1, i64 %116
  %118 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.03) #7
  %119 = getelementptr inbounds i8, i8* %.03, i64 %118
  %120 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.01) #7
  %121 = getelementptr inbounds i8, i8* %.01, i64 %120
  %122 = icmp eq i32 %40, 1
  br i1 %122, label %123, label %134

123:                                              ; preds = %110
  %124 = zext i32 %.026 to i64
  %125 = getelementptr inbounds i8*, i8** %2, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @postmaster(i8* noundef %126) #6
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %119, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %127) #6
  %129 = zext i32 %.026 to i64
  %130 = getelementptr inbounds i8*, i8** %2, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @postmaster(i8* noundef %131) #6
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %117, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %132) #6
  br label %149

134:                                              ; preds = %110
  %135 = zext i32 %.025 to i64
  %136 = getelementptr inbounds i8*, i8** %1, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = zext i32 %.026 to i64
  %139 = getelementptr inbounds i8*, i8** %2, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %119, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %137, i8* noundef %140) #6
  %142 = zext i32 %.025 to i64
  %143 = getelementptr inbounds i8*, i8** %1, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = zext i32 %.026 to i64
  %146 = getelementptr inbounds i8*, i8** %2, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %117, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %144, i8* noundef %147) #6
  br label %149

149:                                              ; preds = %134, %123
  %150 = zext i32 %.026 to i64
  %151 = getelementptr inbounds i8*, i8** %2, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %121, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %152) #6
  %154 = zext i32 %.026 to i64
  %155 = getelementptr inbounds i32, i32* %3, i64 %154
  store i32 5, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %103
  %.14 = phi i8* [ %.03, %103 ], [ %119, %149 ]
  %.12 = phi i8* [ %.01, %103 ], [ %121, %149 ]
  %.2 = phi i8* [ %.0, %103 ], [ %117, %149 ]
  %157 = add nuw nsw i32 %.026, 1
  br label %77, !llvm.loop !4

158:                                              ; preds = %77
  br label %159

159:                                              ; preds = %277, %158
  %.not46 = phi i1 [ false, %277 ], [ true, %158 ]
  %.017 = phi i32 [ 5, %277 ], [ %40, %158 ]
  %.110 = phi %struct._IO_FILE* [ %.312, %277 ], [ %.09, %158 ]
  %.16 = phi i32 [ %.5, %277 ], [ %.05, %158 ]
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %161 = call i32 @fseek(%struct._IO_FILE* noundef %160, i64 noundef %22, i32 noundef 0) #6
  %162 = icmp eq i32 %.017, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = zext i32 %.025 to i64
  %165 = getelementptr inbounds i8*, i8** %2, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = zext i32 %.025 to i64
  %168 = getelementptr inbounds i8*, i8** %1, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef %166, i8* noundef %169) #6
  br label %255

171:                                              ; preds = %159
  br i1 %.not46, label %174, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  br label %185

174:                                              ; preds = %171
  %175 = icmp eq i32 %.017, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %174
  %177 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  br label %184

178:                                              ; preds = %174
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %180 = icmp eq i8* %.122, getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = add nsw i32 %.16, 1
  br label %183

183:                                              ; preds = %181, %178
  %.27 = phi i32 [ %182, %181 ], [ %.16, %178 ]
  br label %184

184:                                              ; preds = %183, %176
  %.014 = phi i8* [ %177, %176 ], [ %179, %183 ]
  %.3 = phi i32 [ %.16, %176 ], [ %.27, %183 ]
  br label %185

185:                                              ; preds = %184, %172
  %.115 = phi i8* [ %173, %172 ], [ %.014, %184 ]
  %.4 = phi i32 [ %.16, %172 ], [ %.3, %184 ]
  %186 = load i32, i32* @debug, align 4
  %.not47 = icmp eq i32 %186, 0
  br i1 %.not47, label %189, label %187

187:                                              ; preds = %185
  %188 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* noundef %.115) #6
  br label %189

189:                                              ; preds = %187, %185
  %190 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #6
  %191 = load i32, i32* @debug, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %205

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %201, %195
  %.08 = phi i32 [ 0, %195 ], [ %202, %201 ]
  %197 = call noalias %struct._IO_FILE* @popen(i8* noundef %.115, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %.not48 = icmp eq %struct._IO_FILE* %197, null
  br i1 %.not48, label %199, label %198

198:                                              ; preds = %196
  br label %204

199:                                              ; preds = %196
  %200 = call i32 @sleep(i32 noundef 60) #6
  br label %201

201:                                              ; preds = %199
  %202 = add nuw nsw i32 %.08, 1
  %203 = icmp ult i32 %.08, 9
  br i1 %203, label %196, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %201
  br label %204

204:                                              ; preds = %.loopexit, %198
  br label %205

205:                                              ; preds = %204, %193
  %.211 = phi %struct._IO_FILE* [ %194, %193 ], [ %197, %204 ]
  %206 = icmp eq %struct._IO_FILE* %.211, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  store i32 69, i32* @exitstat, align 4
  %208 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* noundef %.115) #6
  br label %295

209:                                              ; preds = %205
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %211 = call i32 @fileno(%struct._IO_FILE* noundef %210) #6
  %212 = call i32 @fstat(i32 noundef %211, %struct.stat* noundef nonnull %11) #6
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214, %209
  %216 = icmp eq i32 %.017, 1
  br i1 %216, label %217, label %235

217:                                              ; preds = %215
  %218 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %219 = call i8* @strchr(i8* noundef nonnull %218, i32 noundef 33) #7
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %223 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %224 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %222, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %223, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0)) #6
  %225 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %226 = call i32 @fputs(i8* noundef nonnull %225, %struct._IO_FILE* noundef nonnull %.211) #6
  br label %234

227:                                              ; preds = %217
  store i8 0, i8* %219, align 1
  %228 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %229 = getelementptr inbounds i8, i8* %219, i64 1
  %230 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %228, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %229, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0), i8* noundef nonnull %230) #6
  %232 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %233 = call i32 @fputs(i8* noundef nonnull %232, %struct._IO_FILE* noundef nonnull %.211) #6
  store i8 33, i8* %219, align 1
  br label %234

234:                                              ; preds = %227, %221
  br label %241

235:                                              ; preds = %215
  %236 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %237 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %236, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %237, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #6
  %239 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %240 = call i32 @fputs(i8* noundef nonnull %239, %struct._IO_FILE* noundef nonnull %.211) #6
  br label %241

241:                                              ; preds = %235, %234
  %242 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %243 = call i32 @getpid() #6
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %242, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 noundef %243, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0)) #6
  %245 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %246 = call i32 @fputs(i8* noundef nonnull %245, %struct._IO_FILE* noundef nonnull %.211) #6
  br label %247

247:                                              ; preds = %251, %241
  %248 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %250 = call i8* @fgets(i8* noundef nonnull %248, i32 noundef 512, %struct._IO_FILE* noundef %249) #6
  %.not49 = icmp eq i8* %250, null
  br i1 %.not49, label %254, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %253 = call i32 @fputs(i8* noundef nonnull %252, %struct._IO_FILE* noundef nonnull %.211) #6
  br label %247, !llvm.loop !7

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %254, %163
  %.216 = phi i8* [ getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), %163 ], [ %.115, %254 ]
  %.312 = phi %struct._IO_FILE* [ %.110, %163 ], [ %.211, %254 ]
  %.5 = phi i32 [ %.16, %163 ], [ %.4, %254 ]
  %256 = load i32, i32* @debug, align 4
  %.not50 = icmp eq i32 %256, 2
  br i1 %.not50, label %.loopexit28, label %257

257:                                              ; preds = %255
  %258 = icmp eq i32 %.017, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %257
  store i32 68, i32* @exitstat, align 4
  br label %265

260:                                              ; preds = %257
  %261 = call i32 @pclose(%struct._IO_FILE* noundef %.312) #6
  %.not51 = icmp eq i32 %261, 0
  br i1 %.not51, label %264, label %262

262:                                              ; preds = %260
  %263 = ashr i32 %261, 8
  store i32 %263, i32* @exitstat, align 4
  br label %264

264:                                              ; preds = %262, %260
  br label %265

265:                                              ; preds = %264, %259
  %266 = load i32, i32* @exitstat, align 4
  %.not52 = icmp eq i32 %266, 0
  br i1 %.not52, label %.loopexit29, label %267

267:                                              ; preds = %265
  br i1 %.not46, label %268, label %278

268:                                              ; preds = %267
  %269 = load i32, i32* @routing, align 4
  %.not54 = icmp eq i32 %269, 2
  br i1 %.not54, label %278, label %270

270:                                              ; preds = %268
  %.not55 = icmp eq i32 %.017, 1
  br i1 %.not55, label %278, label %271

271:                                              ; preds = %270
  %272 = load i32, i32* @debug, align 4
  %.not56 = icmp eq i32 %272, 0
  br i1 %.not56, label %277, label %273

273:                                              ; preds = %271
  %274 = load i32, i32* @exitstat, align 4
  %275 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %276 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* noundef %.216, i32 noundef %274, i8* noundef nonnull %275) #6
  br label %277

277:                                              ; preds = %273, %271
  store i32 0, i32* @exitstat, align 4
  br label %159

278:                                              ; preds = %270, %268, %267
  %279 = load i32, i32* @routing, align 4
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = icmp eq i32 %.017, 1
  br i1 %282, label %283, label %292

283:                                              ; preds = %281, %278
  %284 = load i32, i32* @debug, align 4
  %.not53 = icmp eq i32 %284, 0
  br i1 %.not53, label %288, label %285

285:                                              ; preds = %283
  %286 = load i32, i32* @exitstat, align 4
  %287 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %.216, i32 noundef %286) #6
  br label %288

288:                                              ; preds = %285, %283
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %290 = call i32 @fseek(%struct._IO_FILE* noundef %289, i64 noundef %22, i32 noundef 0) #6
  %291 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @return_mail(i8* noundef nonnull %291, i8* noundef %.216)
  store i32 0, i32* @exitstat, align 4
  br label %292

292:                                              ; preds = %288, %281
  br label %293

.loopexit29:                                      ; preds = %265
  br label %293

293:                                              ; preds = %.loopexit29, %292
  br label %294

.loopexit28:                                      ; preds = %255
  br label %294

294:                                              ; preds = %.loopexit28, %293
  br label %295

295:                                              ; preds = %294, %207, %42
  %.413 = phi %struct._IO_FILE* [ %.09, %42 ], [ %.312, %294 ], [ %.211, %207 ]
  %.6 = phi i32 [ %.05, %42 ], [ %.5, %294 ], [ %.4, %207 ]
  %296 = add nuw nsw i32 %.025, 1
  br label %23, !llvm.loop !8

297:                                              ; preds = %23
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %299 = call i32 @fclose(%struct._IO_FILE* noundef %298) #6
  %300 = load i32, i32* @spoolmaster, align 4
  %.not44 = icmp eq i32 %300, 0
  br i1 %.not44, label %304, label %301

301:                                              ; preds = %297
  %302 = load i8*, i8** @spoolfile, align 8
  %303 = call i32 @unlink(i8* noundef %302) #6
  br label %304

304:                                              ; preds = %301, %297
  %305 = call i32 @unlink(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #6
  ret void
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local i8* @mktemp(...) #1

declare dso_local %struct._IO_FILE* @freopen(i8* noundef, i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local i32 @strcmpic(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i8* @postmaster(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

declare dso_local noalias %struct._IO_FILE* @popen(i8* noundef, i8* noundef) #1

declare dso_local i32 @sleep(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @getpid() #3

declare dso_local i32 @pclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @return_mail(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* @debug, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %6, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %9) #6
  %11 = call i64 @strlen(i8* noundef nonnull %6) #7
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %11
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %15 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %0, i8* noundef nonnull %13, i8* noundef nonnull %14) #6
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %18 = call i8* @postmaster(i8* noundef nonnull %17) #6
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %18) #6
  br label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %21, i8* noundef nonnull %22) #6
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %31, %24
  %.0 = phi i32 [ 0, %24 ], [ %32, %31 ]
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %27 = call noalias %struct._IO_FILE* @popen(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %.not2 = icmp eq %struct._IO_FILE* %27, null
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %25
  br label %34

29:                                               ; preds = %25
  %30 = call i32 @sleep(i32 noundef 60) #6
  br label %31

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %.0, 1
  %33 = icmp ult i32 %.0, 9
  br i1 %33, label %25, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %31
  br label %34

34:                                               ; preds = %.loopexit, %28
  %35 = icmp eq %struct._IO_FILE* %27, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %37) #6
  br label %71

39:                                               ; preds = %34
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0)) #6
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #6
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* nonnull %27)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef %0) #6
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %27)
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* nonnull %27)
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef %1) #6
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* nonnull %27)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 @fflush(%struct._IO_FILE* noundef %47) #6
  %49 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #6
  %.not3 = icmp eq %struct._IO_FILE* %49, null
  br i1 %.not3, label %58, label %50

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %54, %50
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %53 = call i8* @fgets(i8* noundef nonnull %52, i32 noundef 512, %struct._IO_FILE* noundef nonnull %49) #6
  %.not5 = icmp eq i8* %53, null
  br i1 %.not5, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %56 = call i32 @fputs(i8* noundef nonnull %55, %struct._IO_FILE* noundef nonnull %27) #6
  br label %51, !llvm.loop !10

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %39
  %59 = call i32 @fclose(%struct._IO_FILE* noundef %49) #6
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* nonnull %27)
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef %0) #6
  br label %62

62:                                               ; preds = %66, %58
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %65 = call i8* @fgets(i8* noundef nonnull %63, i32 noundef 512, %struct._IO_FILE* noundef %64) #6
  %.not4 = icmp eq i8* %65, null
  br i1 %.not4, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %68 = call i32 @fputs(i8* noundef nonnull %67, %struct._IO_FILE* noundef nonnull %27) #6
  br label %62, !llvm.loop !11

69:                                               ; preds = %62
  %70 = call i32 @pclose(%struct._IO_FILE* noundef nonnull %27) #6
  br label %71

71:                                               ; preds = %69, %36
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @islocal(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
