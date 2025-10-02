; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/procquery.c'
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
define dso_local void @display_link(%struct.vlink* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.vlink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pattrib*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vlink* %0, %struct.vlink** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %17, align 16
  %18 = load %struct.vlink*, %struct.vlink** %3, align 8
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i8*, ...)*)(i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %27 = load %struct.vlink*, %struct.vlink** %3, align 8
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 10
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strcpy(i8* noundef %26, i8* noundef %29)
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %33 = call i64 @strlen(i8* noundef %32)
  %34 = load %struct.vlink*, %struct.vlink** %3, align 8
  %35 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* noundef %36)
  %38 = sub i64 %33, %37
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %31, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load %struct.vlink*, %struct.vlink** %3, align 8
  %42 = getelementptr inbounds %struct.vlink, %struct.vlink* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %25
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.vlink*, %struct.vlink** %3, align 8
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %50, i32 0, i32 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.vlink*, %struct.vlink** %3, align 8
  %56 = getelementptr inbounds %struct.vlink, %struct.vlink* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0), i8* noundef %57)
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), align 16
  br label %59

59:                                               ; preds = %54, %25
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %61 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %68 = load i8, i8* %67, align 16
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i8* [ %72, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %73 ]
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %75)
  br label %77

77:                                               ; preds = %74, %63
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %79 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), i8* noundef %78)
  br label %80

80:                                               ; preds = %77, %59
  %81 = load %struct.vlink*, %struct.vlink** %3, align 8
  %82 = getelementptr inbounds %struct.vlink, %struct.vlink* %81, i32 0, i32 17
  %83 = load %struct.pattrib*, %struct.pattrib** %82, align 8
  store %struct.pattrib* %83, %struct.pattrib** %5, align 8
  br label %84

84:                                               ; preds = %156, %80
  %85 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %86 = icmp ne %struct.pattrib* %85, null
  br i1 %86, label %87, label %160

87:                                               ; preds = %84
  %88 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %89 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* noundef %90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %95 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %94, i32 0, i32 3
  %96 = bitcast %union.avalue* %95 to i8**
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %97, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %8) #4
  br label %155

99:                                               ; preds = %87
  %100 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %101 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcmp(i8* noundef %102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %107 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %106, i32 0, i32 3
  %108 = bitcast %union.avalue* %107 to i8**
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %9, align 8
  br label %154

110:                                              ; preds = %99
  %111 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %112 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i8* noundef %113, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %153

116:                                              ; preds = %110
  %117 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %118 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %117, i32 0, i32 3
  %119 = bitcast %union.avalue* %118 to i8**
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %121, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* noundef %12, i32* noundef %13, i32* noundef %14, i32* noundef %15, i32* noundef %16) #4
  %123 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1900
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %126, %127
  %129 = mul nsw i32 12, %128
  %130 = load %struct.tm*, %struct.tm** @presenttime, align 8
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 6
  br i1 %136, label %137, label %144

137:                                              ; preds = %116
  %138 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %139 = load i32, i32* %13, align 4
  %140 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 noundef %139)
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %138, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef %140, i32 noundef %141, i32 noundef %142) #4
  br label %152

144:                                              ; preds = %116
  %145 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %146 = load i32, i32* %13, align 4
  %147 = call i8* (i32, ...) bitcast (i8* (...)* @month_sname to i8* (i32, ...)*)(i32 noundef %146)
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %145, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150) #4
  br label %152

152:                                              ; preds = %144, %137
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %105
  br label %155

155:                                              ; preds = %154, %93
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.pattrib*, %struct.pattrib** %5, align 8
  %158 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %157, i32 0, i32 5
  %159 = load %struct.pattrib*, %struct.pattrib** %158, align 8
  store %struct.pattrib* %159, %struct.pattrib** %5, align 8
  br label %84, !llvm.loop !4

160:                                              ; preds = %84
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i8*, i8** %11, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.vlink*, %struct.vlink** %3, align 8
  %167 = getelementptr inbounds %struct.vlink, %struct.vlink* %166, i32 0, i32 8
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.vlink*, %struct.vlink** %3, align 8
  %170 = getelementptr inbounds %struct.vlink, %struct.vlink* %169, i32 0, i32 10
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef %164, i32 noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %175)
  br label %189

177:                                              ; preds = %160
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %8, align 4
  %184 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %185 = load %struct.vlink*, %struct.vlink** %3, align 8
  %186 = getelementptr inbounds %struct.vlink, %struct.vlink* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* noundef %181, i8* noundef %182, i32 noundef %183, i8* noundef %184, i8* noundef %187)
  br label %189

189:                                              ; preds = %177, %163
  %190 = load %struct.vlink*, %struct.vlink** %3, align 8
  %191 = getelementptr inbounds %struct.vlink, %struct.vlink* %190, i32 0, i32 17
  %192 = load %struct.pattrib*, %struct.pattrib** %191, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef %192)
  %193 = load %struct.vlink*, %struct.vlink** %3, align 8
  %194 = getelementptr inbounds %struct.vlink, %struct.vlink* %193, i32 0, i32 17
  store %struct.pattrib* null, %struct.pattrib** %194, align 8
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
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vlink*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = call i64 @time(i64* noundef %16) #4
  %18 = call %struct.tm* @localtime(i64* noundef %16) #4
  store %struct.tm* %18, %struct.tm** @presenttime, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i8, i8* %12, align 1
  %27 = call %struct.vlink* @archie_query(i8* noundef %22, i8* noundef %23, i32 noundef %24, i32 noundef %25, i8 noundef signext %26, i32 (...)* noundef @invdatecmplink, i32 noundef 0)
  store %struct.vlink* %27, %struct.vlink** %15, align 8
  br label %35

28:                                               ; preds = %7
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i8, i8* %12, align 1
  %34 = call %struct.vlink* @archie_query(i8* noundef %29, i8* noundef %30, i32 noundef %31, i32 noundef %32, i8 noundef signext %33, i32 (...)* noundef null, i32 noundef 0)
  store %struct.vlink* %34, %struct.vlink** %15, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* @perrno, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32, i32* @perrno, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** @progname, align 8
  %50 = load i32, i32* @perrno, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef %49, i8* noundef %53, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0))
  br label %63

55:                                               ; preds = %44
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i8*, i8** @progname, align 8
  %58 = load i32, i32* @perrno, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_err_text, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* noundef %57, i8* noundef %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %70

64:                                               ; preds = %38
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i32, i32* @perrno, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* noundef %68, i32 noundef 0)
  br label %70

70:                                               ; preds = %64, %63
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* @pwarn, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i8*, i8** @progname, align 8
  %80 = load i32, i32* @pwarn, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef %79, i8* noundef %83, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0))
  br label %93

85:                                               ; preds = %74
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i8*, i8** @progname, align 8
  %88 = load i32, i32* @pwarn, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i8*], [0 x i8*]* @p_warn_text, i64 0, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef %87, i8* noundef %91)
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93, %71
  %95 = load %struct.vlink*, %struct.vlink** %15, align 8
  %96 = icmp eq %struct.vlink* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* @pwarn, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* @perrno, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 @puts(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  call void @exit(i32 noundef 1) #5
  unreachable

109:                                              ; preds = %100, %97, %94
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lasthost, i64 0, i64 0), align 16
  store i8 1, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @lastpath, i64 0, i64 0), align 16
  br label %110

110:                                              ; preds = %113, %109
  %111 = load %struct.vlink*, %struct.vlink** %15, align 8
  %112 = icmp ne %struct.vlink* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.vlink*, %struct.vlink** %15, align 8
  %115 = load i32, i32* %14, align 4
  call void @display_link(%struct.vlink* noundef %114, i32 noundef %115)
  %116 = load %struct.vlink*, %struct.vlink** %15, align 8
  %117 = getelementptr inbounds %struct.vlink, %struct.vlink* %116, i32 0, i32 20
  %118 = load %struct.vlink*, %struct.vlink** %117, align 8
  store %struct.vlink* %118, %struct.vlink** %15, align 8
  br label %110, !llvm.loop !6

119:                                              ; preds = %110
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
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
