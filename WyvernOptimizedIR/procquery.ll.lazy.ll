; ModuleID = './procquery.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/procquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@lasthost = internal global [1024 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AHost %s\0A\0A\00", align 1
@lastpath = internal global [1024 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"    Location: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"UNIX-MODES\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"LAST-MODIFIED\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%4d%2d%2d%2d%2d\00", align 1
@presenttime = internal global %struct.tm* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"%s %2d %4d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%s %2d %02d:%02d\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%s %6d %s %s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"      %9s %s %10d  %s  %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@perrno = external dso_local global i32, align 4
@p_err_text = external dso_local global [0 x i8*], align 8
@p_err_string = external dso_local global [0 x i8], align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"%s: failed: %s - %s\0A\00", align 1
@progname = external dso_local global i8*, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"%s failed: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"%s failed: Undefined error %d (prospero)\00", align 1
@pwarn = external dso_local global i32, align 4
@p_warn_string = external dso_local global [0 x i8], align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%s: Warning! %s - %s\0A\00", align 1
@p_warn_text = external dso_local global [0 x i8*], align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"%s: Warning! %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"No matches.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_link(%struct.vlink* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i8*, ...)*)(i8* noundef %13, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #4
  %.not = icmp eq i8* %14, null
  br i1 %.not, label %16, label %15

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strcpy(i8* noundef nonnull %18, i8* noundef nonnull dereferenceable(1) %20) #4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = call i64 @strlen(i8* noundef nonnull %22) #4
  %24 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %25) #4
  %27 = xor i64 %26, -1
  %28 = add i64 %23, %27
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %31, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0)) #4
  %.not6 = icmp eq i32 %32, 0
  br i1 %.not6, label %42, label %33

33:                                               ; preds = %17
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %34, label %38

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %36) #4
  br label %38

38:                                               ; preds = %34, %33
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %40) #4
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), align 16
  br label %42

42:                                               ; preds = %38, %17
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %44 = call i32 @strcmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0)) #4
  %.not7 = icmp eq i32 %44, 0
  br i1 %.not7, label %58, label %45

45:                                               ; preds = %42
  %.not12 = icmp eq i32 %1, 0
  br i1 %.not12, label %46, label %55

46:                                               ; preds = %45
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %.not13 = icmp eq i8 %48, 0
  br i1 %.not13, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %51 ]
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %53) #4
  br label %55

55:                                               ; preds = %52, %45
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %57 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), i8* noundef nonnull %56) #4
  br label %58

58:                                               ; preds = %55, %42
  %59 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  br label %60

60:                                               ; preds = %120, %58
  %.04.in = phi %struct.pattrib** [ %59, %58 ], [ %121, %120 ]
  %.01 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %58 ], [ %.23, %120 ]
  %.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %58 ], [ %.3, %120 ]
  %.04 = load %struct.pattrib*, %struct.pattrib** %.04.in, align 8
  %.not8 = icmp eq %struct.pattrib* %.04, null
  br i1 %.not8, label %122, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %63, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 3, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %68, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %4) #4
  br label %119

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %72, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 3, i32 0
  %77 = load i8*, i8** %76, align 8
  br label %118

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %80, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 3, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %85, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %6, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32* noundef nonnull %10) #4
  %87 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i64 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1900
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  %93 = mul nsw i32 %92, 12
  %94 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i64 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp sgt i32 %99, 6
  br i1 %100, label %101, label %108

101:                                              ; preds = %83
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %103 = load i32, i32* %7, align 4
  %104 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 noundef %103) #4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %102, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %104, i32 noundef %105, i32 noundef %106) #4
  br label %116

108:                                              ; preds = %83
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %110 = load i32, i32* %7, align 4
  %111 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 noundef %110) #4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %109, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef %111, i32 noundef %112, i32 noundef %113, i32 noundef %114) #4
  br label %116

116:                                              ; preds = %108, %101
  br label %117

117:                                              ; preds = %116, %78
  %.1 = phi i8* [ %85, %116 ], [ %.0, %78 ]
  br label %118

118:                                              ; preds = %117, %75
  %.12 = phi i8* [ %77, %75 ], [ %.01, %117 ]
  %.2 = phi i8* [ %.0, %75 ], [ %.1, %117 ]
  br label %119

119:                                              ; preds = %118, %66
  %.23 = phi i8* [ %.01, %66 ], [ %.12, %118 ]
  %.3 = phi i8* [ %.0, %66 ], [ %.2, %118 ]
  br label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 5
  br label %60, !llvm.loop !4

122:                                              ; preds = %60
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %131, label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %4, align 4
  %125 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %128 = load i8*, i8** %127, align 8
  %129 = select i1 %.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %130 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef %.0, i32 noundef %124, i8* noundef %126, i8* noundef %128, i8* noundef %129) #4
  br label %138

131:                                              ; preds = %122
  %132 = select i1 %.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  %133 = load i32, i32* %4, align 4
  %134 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %135 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* noundef %132, i8* noundef %.01, i32 noundef %133, i8* noundef nonnull %134, i8* noundef %136) #4
  br label %138

138:                                              ; preds = %131, %123
  %139 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  %140 = load %struct.pattrib*, %struct.pattrib** %139, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef %140) #4
  %141 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  store %struct.pattrib* null, %struct.pattrib** %141, align 8
  ret void
}

declare dso_local i8* @sindex(...) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i8* @month_sname(...) #1

declare dso_local void @atlfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @procquery(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = call i64 @time(i64* noundef nonnull %8) #4
  %10 = call %struct.tm* @localtime(i64* noundef nonnull %8) #4
  store %struct.tm* %10, %struct.tm** @presenttime, align 8
  %11 = icmp eq i32 %5, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call %struct.vlink* @archie_query(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 (...)* noundef nonnull @invdatecmplink, i32 noundef 0) #4
  br label %16

14:                                               ; preds = %7
  %15 = call %struct.vlink* @archie_query(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 (...)* noundef null, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %14, %12
  %.0 = phi %struct.vlink* [ %13, %12 ], [ %15, %14 ]
  %17 = load i32, i32* @perrno, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %49, label %18

18:                                               ; preds = %16
  %19 = load i32, i32* @perrno, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %.not5 = icmp eq i8* %22, null
  br i1 %.not5, label %42, label %23

23:                                               ; preds = %18
  %24 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  %.not6 = icmp eq i8 %24, 0
  br i1 %.not6, label %33, label %25

25:                                               ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progname, align 8
  %28 = load i32, i32* @perrno, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef %27, i8* noundef %31, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #5
  br label %41

33:                                               ; preds = %23
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** @progname, align 8
  %36 = load i32, i32* @perrno, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* noundef %35, i8* noundef %39) #5
  br label %41

41:                                               ; preds = %33, %25
  br label %48

42:                                               ; preds = %18
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i32, i32* @perrno, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* noundef %46, i32 noundef 0) #5
  br label %48

48:                                               ; preds = %42, %41
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i32, i32* @pwarn, align 4
  %.not1 = icmp eq i32 %50, 0
  br i1 %.not1, label %70, label %51

51:                                               ; preds = %49
  %52 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %.not4 = icmp eq i8 %52, 0
  br i1 %.not4, label %61, label %53

53:                                               ; preds = %51
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8*, i8** @progname, align 8
  %56 = load i32, i32* @pwarn, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef %55, i8* noundef %59, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #5
  br label %69

61:                                               ; preds = %51
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = load i8*, i8** @progname, align 8
  %64 = load i32, i32* @pwarn, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef %63, i8* noundef %67) #5
  br label %69

69:                                               ; preds = %61, %53
  br label %70

70:                                               ; preds = %69, %49
  %71 = icmp eq %struct.vlink* %.0, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %70
  %73 = load i32, i32* @pwarn, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* @perrno, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %.not3 = icmp eq i32 %6, 0
  br i1 %.not3, label %79, label %81

79:                                               ; preds = %78
  %80 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #4
  br label %81

81:                                               ; preds = %79, %78
  call void @exit(i32 noundef 1) #6
  unreachable

82:                                               ; preds = %75, %72, %70
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0), align 16
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), align 16
  br label %83

83:                                               ; preds = %84, %82
  %.1 = phi %struct.vlink* [ %.0, %82 ], [ %86, %84 ]
  %.not2 = icmp eq %struct.vlink* %.1, null
  br i1 %.not2, label %87, label %84

84:                                               ; preds = %83
  call void @display_link(%struct.vlink* noundef nonnull %.1, i32 noundef %6)
  %85 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 20
  %86 = load %struct.vlink*, %struct.vlink** %85, align 8
  br label %83, !llvm.loop !6

87:                                               ; preds = %83
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #2

declare dso_local %struct.vlink* @archie_query(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 (...)* noundef, i32 noundef) #1

declare dso_local i32 @invdatecmplink(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @puts(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
