; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/deliver.c'
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
define dso_local void @deliver(i32 noundef %0, i8** noundef %1, i8** noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  %14 = alloca [512 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca [512 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.stat, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %40 = call i32 @fseek(%struct._IO_FILE* noundef %39, i64 noundef 0, i32 noundef 0)
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %43 = call i8* @fgets(i8* noundef %41, i32 noundef 512, %struct._IO_FILE* noundef %42)
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %45 = call i8* @strchr(i8* noundef %44, i32 noundef 10) #4
  store i8* %45, i8** %26, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i8*, i8** %26, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %5
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %51 = call i64 @ftell(%struct._IO_FILE* noundef %50)
  store i64 %51, i64* %31, align 8
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), align 16
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %465, %49
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %468

56:                                               ; preds = %52
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  store i8* %57, i8** %33, align 8
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8* %58, i8** %34, align 8
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8* %59, i8** %35, align 8
  %60 = call i32 @unlink(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #5
  %61 = call i8* @strcpy(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)) #5
  %62 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call %struct._IO_FILE* @freopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %63)
  %65 = load i32, i32* @debug, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = call %struct._IO_FILE* @freopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i8*, i8** %35, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %34, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %33, align 8
  store i8 0, i8* %73, align 1
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %465

82:                                               ; preds = %70
  %83 = load i8*, i8** @uuxargs, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i32, i32* %28, align 4
  %87 = load i32, i32* @maxnoqueue, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @queuecost, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i8*, i8** %29, align 8
  store i8* %98, i8** %20, align 8
  br label %101

99:                                               ; preds = %89, %85
  %100 = load i8*, i8** %30, align 8
  store i8* %100, i8** %20, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %104

102:                                              ; preds = %82
  %103 = load i8*, i8** @uuxargs, align 8
  store i8* %103, i8** %20, align 8
  br label %104

104:                                              ; preds = %102, %101
  store i32 0, i32* %25, align 4
  %105 = load i32, i32* @routing, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %114

108:                                              ; preds = %104
  %109 = load i32, i32* @routing, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %113

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %113

113:                                              ; preds = %112, %111
  br label %114

114:                                              ; preds = %113, %107
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %115, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #5
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %119 = load i8*, i8** %20, align 8
  %120 = load i8**, i8*** %7, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %117, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* noundef %118, i8* noundef %119, i8* noundef %124) #5
  %126 = load i32, i32* %22, align 4
  store i32 %126, i32* %23, align 4
  br label %127

127:                                              ; preds = %257, %114
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %260

131:                                              ; preds = %127
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %168, label %139

139:                                              ; preds = %131
  %140 = load i8**, i8*** %7, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %7, align 8
  %146 = load i32, i32* %23, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %144, i8* noundef %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %139
  %153 = load i8*, i8** %33, align 8
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %36, align 4
  %159 = icmp sgt i32 %158, 128
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load i8*, i8** %34, align 8
  %162 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %37, align 4
  %167 = icmp sgt i32 %166, 128
  br i1 %167, label %168, label %169

168:                                              ; preds = %160, %152, %139, %131
  br label %257

169:                                              ; preds = %160
  %170 = load i8*, i8** %35, align 8
  %171 = call i64 @strlen(i8* noundef %170) #4
  %172 = load i8*, i8** %35, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %35, align 8
  %174 = load i8*, i8** %35, align 8
  %175 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %176 = icmp ne i8* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i8*, i8** %35, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %35, align 8
  store i8 59, i8* %178, align 1
  br label %180

180:                                              ; preds = %177, %169
  %181 = load i8*, i8** %35, align 8
  %182 = load i32, i32* @debug, align 4
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %186 = load i8*, i8** %21, align 8
  %187 = load i8*, i8** @spoolfile, align 8
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %181, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %185, i8* noundef %186, i8* noundef %187) #5
  %189 = load i8*, i8** %35, align 8
  %190 = call i64 @strlen(i8* noundef %189) #4
  %191 = load i8*, i8** %35, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %35, align 8
  %193 = load i8*, i8** %33, align 8
  %194 = call i64 @strlen(i8* noundef %193) #4
  %195 = load i8*, i8** %33, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 %194
  store i8* %196, i8** %33, align 8
  %197 = load i8*, i8** %34, align 8
  %198 = call i64 @strlen(i8* noundef %197) #4
  %199 = load i8*, i8** %34, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 %198
  store i8* %200, i8** %34, align 8
  %201 = load i32, i32* %18, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %220

203:                                              ; preds = %180
  %204 = load i8*, i8** %33, align 8
  %205 = load i8**, i8*** %8, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @postmaster(i8* noundef %209)
  %211 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %204, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %210) #5
  %212 = load i8*, i8** %35, align 8
  %213 = load i8**, i8*** %8, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @postmaster(i8* noundef %217)
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %212, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %218) #5
  br label %245

220:                                              ; preds = %180
  %221 = load i8*, i8** %33, align 8
  %222 = load i8**, i8*** %7, align 8
  %223 = load i32, i32* %22, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %8, align 8
  %228 = load i32, i32* %23, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %221, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %226, i8* noundef %231) #5
  %233 = load i8*, i8** %35, align 8
  %234 = load i8**, i8*** %7, align 8
  %235 = load i32, i32* %22, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = load i8**, i8*** %8, align 8
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %233, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %238, i8* noundef %243) #5
  br label %245

245:                                              ; preds = %220, %203
  %246 = load i8*, i8** %34, align 8
  %247 = load i8**, i8*** %8, align 8
  %248 = load i32, i32* %23, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %246, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %251) #5
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 5, i32* %256, align 4
  br label %257

257:                                              ; preds = %245, %168
  %258 = load i32, i32* %23, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %23, align 4
  br label %127, !llvm.loop !4

260:                                              ; preds = %127
  br label %261

261:                                              ; preds = %442, %260
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %263 = load i64, i64* %31, align 8
  %264 = call i32 @fseek(%struct._IO_FILE* noundef %262, i64 noundef %263, i32 noundef 0)
  %265 = load i32, i32* %18, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %261
  %268 = load i8**, i8*** %8, align 8
  %269 = load i32, i32* %22, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = load i8**, i8*** %7, align 8
  %274 = load i32, i32* %22, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef %272, i8* noundef %277) #5
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), i8** %16, align 8
  store i64 0, i64* %19, align 8
  br label %407

279:                                              ; preds = %261
  %280 = load i32, i32* %25, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8* %283, i8** %16, align 8
  br label %299

284:                                              ; preds = %279
  %285 = load i32, i32* %18, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  store i8* %288, i8** %16, align 8
  br label %298

289:                                              ; preds = %284
  %290 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8* %290, i8** %16, align 8
  %291 = load i8*, i8** %20, align 8
  %292 = load i8*, i8** %29, align 8
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load i32, i32* %28, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %28, align 4
  br label %297

297:                                              ; preds = %294, %289
  br label %298

298:                                              ; preds = %297, %287
  br label %299

299:                                              ; preds = %298, %282
  %300 = load i32, i32* @debug, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i8*, i8** %16, align 8
  %304 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* noundef %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #5
  %307 = load i32, i32* @debug, align 4
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %310, %struct._IO_FILE** %11, align 8
  br label %325

311:                                              ; preds = %305
  store i32 0, i32* %27, align 4
  br label %312

312:                                              ; preds = %320, %311
  %313 = load i8*, i8** %16, align 8
  %314 = call noalias %struct._IO_FILE* @popen(i8* noundef %313, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %314, %struct._IO_FILE** %11, align 8
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %316 = icmp ne %struct._IO_FILE* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %324

318:                                              ; preds = %312
  %319 = call i32 @sleep(i32 noundef 60)
  br label %320

320:                                              ; preds = %318
  %321 = load i32, i32* %27, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %27, align 4
  %323 = icmp slt i32 %322, 10
  br i1 %323, label %312, label %324, !llvm.loop !6

324:                                              ; preds = %320, %317
  br label %325

325:                                              ; preds = %324, %309
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %327 = icmp eq %struct._IO_FILE* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  store i32 69, i32* @exitstat, align 4
  %329 = load i8*, i8** %16, align 8
  %330 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* noundef %329)
  br label %465

331:                                              ; preds = %325
  store i64 0, i64* %19, align 8
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %333 = call i32 @fileno(%struct._IO_FILE* noundef %332) #5
  %334 = call i32 @fstat(i32 noundef %333, %struct.stat* noundef %32) #5
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 8
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* %31, align 8
  %340 = sub nsw i64 %338, %339
  store i64 %340, i64* %19, align 8
  br label %341

341:                                              ; preds = %336, %331
  %342 = load i32, i32* %18, align 4
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %375

344:                                              ; preds = %341
  %345 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %346 = call i8* @strchr(i8* noundef %345, i32 noundef 33) #4
  store i8* %346, i8** %38, align 8
  %347 = icmp eq i8* %346, null
  br i1 %347, label %348, label %359

348:                                              ; preds = %344
  %349 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %350 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %351 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %349, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef %350, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0)) #5
  %352 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %353 = call i64 @strlen(i8* noundef %352) #4
  %354 = load i64, i64* %19, align 8
  %355 = add i64 %354, %353
  store i64 %355, i64* %19, align 8
  %356 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %358 = call i32 @fputs(i8* noundef %356, %struct._IO_FILE* noundef %357)
  br label %374

359:                                              ; preds = %344
  %360 = load i8*, i8** %38, align 8
  store i8 0, i8* %360, align 1
  %361 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %362 = load i8*, i8** %38, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  %364 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %365 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %361, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* noundef %363, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0), i8* noundef %364) #5
  %366 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %367 = call i64 @strlen(i8* noundef %366) #4
  %368 = load i64, i64* %19, align 8
  %369 = add i64 %368, %367
  store i64 %369, i64* %19, align 8
  %370 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %372 = call i32 @fputs(i8* noundef %370, %struct._IO_FILE* noundef %371)
  %373 = load i8*, i8** %38, align 8
  store i8 33, i8* %373, align 1
  br label %374

374:                                              ; preds = %359, %348
  br label %386

375:                                              ; preds = %341
  %376 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %377 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %376, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* noundef %377, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @nows, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #5
  %379 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %380 = call i64 @strlen(i8* noundef %379) #4
  %381 = load i64, i64* %19, align 8
  %382 = add i64 %381, %380
  store i64 %382, i64* %19, align 8
  %383 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %385 = call i32 @fputs(i8* noundef %383, %struct._IO_FILE* noundef %384)
  br label %386

386:                                              ; preds = %375, %374
  %387 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %388 = call i32 @getpid() #5
  %389 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %387, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 noundef %388, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0)) #5
  %390 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %391 = call i64 @strlen(i8* noundef %390) #4
  %392 = load i64, i64* %19, align 8
  %393 = add i64 %392, %391
  store i64 %393, i64* %19, align 8
  %394 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %396 = call i32 @fputs(i8* noundef %394, %struct._IO_FILE* noundef %395)
  br label %397

397:                                              ; preds = %402, %386
  %398 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %400 = call i8* @fgets(i8* noundef %398, i32 noundef 512, %struct._IO_FILE* noundef %399)
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %405 = call i32 @fputs(i8* noundef %403, %struct._IO_FILE* noundef %404)
  br label %397, !llvm.loop !7

406:                                              ; preds = %397
  br label %407

407:                                              ; preds = %406, %267
  %408 = load i32, i32* @debug, align 4
  %409 = icmp ne i32 %408, 2
  br i1 %409, label %410, label %464

410:                                              ; preds = %407
  %411 = load i32, i32* %18, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 68, i32* @exitstat, align 4
  br label %422

414:                                              ; preds = %410
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %416 = call i32 @pclose(%struct._IO_FILE* noundef %415)
  store i32 %416, i32* %24, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %414
  %419 = load i32, i32* %24, align 4
  %420 = ashr i32 %419, 8
  store i32 %420, i32* @exitstat, align 4
  br label %421

421:                                              ; preds = %418, %414
  br label %422

422:                                              ; preds = %421, %413
  %423 = load i32, i32* @exitstat, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %463

425:                                              ; preds = %422
  %426 = load i32, i32* %25, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %443

428:                                              ; preds = %425
  %429 = load i32, i32* @routing, align 4
  %430 = icmp ne i32 %429, 2
  br i1 %430, label %431, label %443

431:                                              ; preds = %428
  %432 = load i32, i32* %18, align 4
  %433 = icmp ne i32 %432, 1
  br i1 %433, label %434, label %443

434:                                              ; preds = %431
  %435 = load i32, i32* @debug, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %434
  %438 = load i8*, i8** %16, align 8
  %439 = load i32, i32* @exitstat, align 4
  %440 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %441 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* noundef %438, i32 noundef %439, i8* noundef %440)
  br label %442

442:                                              ; preds = %437, %434
  store i32 0, i32* @exitstat, align 4
  store i32 1, i32* %25, align 4
  store i32 5, i32* %18, align 4
  br label %261

443:                                              ; preds = %431, %428, %425
  %444 = load i32, i32* @routing, align 4
  %445 = icmp eq i32 %444, 2
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %18, align 4
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %462

449:                                              ; preds = %446, %443
  %450 = load i32, i32* @debug, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %449
  %453 = load i8*, i8** %16, align 8
  %454 = load i32, i32* @exitstat, align 4
  %455 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %453, i32 noundef %454)
  br label %456

456:                                              ; preds = %452, %449
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %458 = load i64, i64* %31, align 8
  %459 = call i32 @fseek(%struct._IO_FILE* noundef %457, i64 noundef %458, i32 noundef 0)
  %460 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %461 = load i8*, i8** %16, align 8
  call void @return_mail(i8* noundef %460, i8* noundef %461)
  store i32 0, i32* @exitstat, align 4
  br label %462

462:                                              ; preds = %456, %446
  br label %463

463:                                              ; preds = %462, %422
  br label %464

464:                                              ; preds = %463, %407
  br label %465

465:                                              ; preds = %464, %328, %81
  %466 = load i32, i32* %22, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %22, align 4
  br label %52, !llvm.loop !8

468:                                              ; preds = %52
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %470 = call i32 @fclose(%struct._IO_FILE* noundef %469)
  %471 = load i32, i32* @spoolmaster, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %468
  %474 = load i8*, i8** @spoolfile, align 8
  %475 = call i32 @unlink(i8* noundef %474) #5
  br label %476

476:                                              ; preds = %473, %468
  %477 = call i32 @unlink(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
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

; Function Attrs: nounwind readonly willreturn
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
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef %17) #5
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* noundef %19) #4
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %26 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %23, i8* noundef %24, i8* noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %31 = call i8* @postmaster(i8* noundef %30)
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %31) #5
  br label %38

33:                                               ; preds = %2
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %34, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %35, i8* noundef %36) #5
  br label %38

38:                                               ; preds = %33, %28
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %41 = call noalias %struct._IO_FILE* @popen(i8* noundef %40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** %10, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %51

45:                                               ; preds = %39
  %46 = call i32 @sleep(i32 noundef 60)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %39, label %51, !llvm.loop !9

51:                                               ; preds = %47, %44
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %53 = icmp eq %struct._IO_FILE* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* noundef %55)
  br label %111

57:                                               ; preds = %51
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @arpanows, i64 0, i64 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i32 @fflush(%struct._IO_FILE* noundef %76)
  %78 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  store %struct._IO_FILE* %78, %struct._IO_FILE** %9, align 8
  %79 = icmp ne %struct._IO_FILE* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %86, %80
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %84 = call i8* @fgets(i8* noundef %82, i32 noundef 512, %struct._IO_FILE* noundef %83)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %89 = call i32 @fputs(i8* noundef %87, %struct._IO_FILE* noundef %88)
  br label %81, !llvm.loop !10

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %93 = call i32 @fclose(%struct._IO_FILE* noundef %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0))
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef %97)
  br label %99

99:                                               ; preds = %104, %91
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %102 = call i8* @fgets(i8* noundef %100, i32 noundef 512, %struct._IO_FILE* noundef %101)
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %107 = call i32 @fputs(i8* noundef %105, %struct._IO_FILE* noundef %106)
  br label %99, !llvm.loop !11

108:                                              ; preds = %99
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %110 = call i32 @pclose(%struct._IO_FILE* noundef %109)
  br label %111

111:                                              ; preds = %108, %54
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @islocal(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
