; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/support.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }

@pfs_enable = dso_local global i32 4, align 4
@month_sname.name = internal global [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Unk\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@p_err_string = external dso_local global [0 x i8], align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"NOT-A-DIRECTORY\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"UNIMPLEMENTED\00", align 1
@perrno = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"%*[^\0A \09\0D]%*[ \09]%[^\0A]\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"WARNING \00", align 1
@p_warn_string = external dso_local global [0 x i8], align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"OUT-OF-DATE\00", align 1
@pwarn = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%[^\0A]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"FAILURE \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"NOT-FOUND\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"NOT-AUTHORIZED\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ALREADY-EXISTS\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"NAME-CONFLICT\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SERVER-FAILED\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"OBJECT-INFO %s %s %[^\0A]\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"LINK-INFO %s %s %s %[^\0A]\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"CACHED\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"REPLACEMENT\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ADDITIONAL\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"%c %s %s %s %s %s %s %d %d\00", align 1
@unquote.unquoted = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @wcmatch(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [200 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %127

12:                                               ; preds = %2
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %7, align 8
  store i8 94, i8* %13, align 1
  br label %15

15:                                               ; preds = %114, %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 46, i8* %25, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  store i8 %29, i8* %30, align 1
  br label %114

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 46, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %113

42:                                               ; preds = %32
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 92, i8* %48, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 46, i8* %50, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  br label %112

54:                                               ; preds = %42
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 91
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  store i8 92, i8* %60, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 91, i8* %62, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %111

66:                                               ; preds = %54
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 36
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  store i8 92, i8* %72, align 1
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  store i8 36, i8* %74, align 1
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  br label %110

78:                                               ; preds = %66
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 94
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  store i8 94, i8* %86, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %109

90:                                               ; preds = %78
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 92
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  store i8 92, i8* %96, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  store i8 92, i8* %98, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  br label %108

102:                                              ; preds = %90
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %102, %95
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %59
  br label %112

112:                                              ; preds = %111, %47
  br label %113

113:                                              ; preds = %112, %37
  br label %114

114:                                              ; preds = %113, %24
  br label %15, !llvm.loop !4

115:                                              ; preds = %15
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 8
  store i8 36, i8* %116, align 1
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  store i8 0, i8* %118, align 1
  %120 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %121 = call i8* (i8*, ...) bitcast (i8* (...)* @re_comp to i8* (i8*, ...)*)(i8* noundef %120)
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %127

124:                                              ; preds = %115
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %123, %11
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i8* @re_comp(...) #1

declare dso_local i32 @re_exec(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ul_insert(%struct.vlink* noundef %0, %struct.vdir* noundef %1, %struct.vlink* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlink*, align 8
  %6 = alloca %struct.vdir*, align 8
  %7 = alloca %struct.vlink*, align 8
  %8 = alloca %struct.vlink*, align 8
  store %struct.vlink* %0, %struct.vlink** %5, align 8
  store %struct.vdir* %1, %struct.vdir** %6, align 8
  store %struct.vlink* %2, %struct.vlink** %7, align 8
  %9 = load %struct.vdir*, %struct.vdir** %6, align 8
  %10 = getelementptr inbounds %struct.vdir, %struct.vdir* %9, i32 0, i32 7
  %11 = load %struct.vlink*, %struct.vlink** %10, align 8
  %12 = icmp eq %struct.vlink* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.vlink*, %struct.vlink** %5, align 8
  %15 = load %struct.vdir*, %struct.vdir** %6, align 8
  %16 = getelementptr inbounds %struct.vdir, %struct.vdir* %15, i32 0, i32 7
  store %struct.vlink* %14, %struct.vlink** %16, align 8
  %17 = load %struct.vlink*, %struct.vlink** %5, align 8
  %18 = getelementptr inbounds %struct.vlink, %struct.vlink* %17, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %18, align 8
  %19 = load %struct.vlink*, %struct.vlink** %5, align 8
  %20 = getelementptr inbounds %struct.vlink, %struct.vlink* %19, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %20, align 8
  store i32 0, i32* %4, align 4
  br label %141

21:                                               ; preds = %3
  %22 = load %struct.vlink*, %struct.vlink** %7, align 8
  %23 = load %struct.vdir*, %struct.vdir** %6, align 8
  %24 = bitcast %struct.vdir* %23 to %struct.vlink*
  %25 = icmp eq %struct.vlink* %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.vdir*, %struct.vdir** %6, align 8
  %28 = getelementptr inbounds %struct.vdir, %struct.vdir* %27, i32 0, i32 7
  %29 = load %struct.vlink*, %struct.vlink** %28, align 8
  %30 = load %struct.vlink*, %struct.vlink** %5, align 8
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 20
  store %struct.vlink* %29, %struct.vlink** %31, align 8
  %32 = load %struct.vlink*, %struct.vlink** %5, align 8
  %33 = load %struct.vlink*, %struct.vlink** %5, align 8
  %34 = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 20
  %35 = load %struct.vlink*, %struct.vlink** %34, align 8
  %36 = getelementptr inbounds %struct.vlink, %struct.vlink* %35, i32 0, i32 19
  store %struct.vlink* %32, %struct.vlink** %36, align 8
  %37 = load %struct.vlink*, %struct.vlink** %5, align 8
  %38 = load %struct.vdir*, %struct.vdir** %6, align 8
  %39 = getelementptr inbounds %struct.vdir, %struct.vdir* %38, i32 0, i32 7
  store %struct.vlink* %37, %struct.vlink** %39, align 8
  %40 = load %struct.vlink*, %struct.vlink** %5, align 8
  %41 = getelementptr inbounds %struct.vlink, %struct.vlink* %40, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %41, align 8
  br label %102

42:                                               ; preds = %21
  %43 = load %struct.vdir*, %struct.vdir** %6, align 8
  %44 = getelementptr inbounds %struct.vdir, %struct.vdir* %43, i32 0, i32 7
  %45 = load %struct.vlink*, %struct.vlink** %44, align 8
  store %struct.vlink* %45, %struct.vlink** %8, align 8
  br label %46

46:                                               ; preds = %71, %42
  %47 = load %struct.vlink*, %struct.vlink** %8, align 8
  %48 = icmp ne %struct.vlink* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.vlink*, %struct.vlink** %7, align 8
  %51 = icmp ne %struct.vlink* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load %struct.vlink*, %struct.vlink** %8, align 8
  %54 = getelementptr inbounds %struct.vlink, %struct.vlink* %53, i32 0, i32 20
  %55 = load %struct.vlink*, %struct.vlink** %54, align 8
  %56 = icmp eq %struct.vlink* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load %struct.vlink*, %struct.vlink** %8, align 8
  store %struct.vlink* %58, %struct.vlink** %7, align 8
  br label %59

59:                                               ; preds = %57, %52, %49
  %60 = load %struct.vlink*, %struct.vlink** %8, align 8
  %61 = load %struct.vlink*, %struct.vlink** %5, align 8
  %62 = call i32 @vl_comp(%struct.vlink* noundef %60, %struct.vlink* noundef %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load %struct.vlink*, %struct.vlink** %5, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %65)
  store i32 25, i32* %4, align 4
  br label %141

66:                                               ; preds = %59
  %67 = load %struct.vlink*, %struct.vlink** %8, align 8
  %68 = load %struct.vlink*, %struct.vlink** %7, align 8
  %69 = icmp eq %struct.vlink* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66
  %72 = load %struct.vlink*, %struct.vlink** %8, align 8
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i32 0, i32 20
  %74 = load %struct.vlink*, %struct.vlink** %73, align 8
  store %struct.vlink* %74, %struct.vlink** %8, align 8
  br label %46, !llvm.loop !6

75:                                               ; preds = %70, %46
  %76 = load %struct.vlink*, %struct.vlink** %8, align 8
  %77 = icmp eq %struct.vlink* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 27, i32* %4, align 4
  br label %141

79:                                               ; preds = %75
  %80 = load %struct.vlink*, %struct.vlink** %7, align 8
  %81 = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i32 0, i32 20
  %82 = load %struct.vlink*, %struct.vlink** %81, align 8
  %83 = load %struct.vlink*, %struct.vlink** %5, align 8
  %84 = getelementptr inbounds %struct.vlink, %struct.vlink* %83, i32 0, i32 20
  store %struct.vlink* %82, %struct.vlink** %84, align 8
  %85 = load %struct.vlink*, %struct.vlink** %5, align 8
  %86 = load %struct.vlink*, %struct.vlink** %7, align 8
  %87 = getelementptr inbounds %struct.vlink, %struct.vlink* %86, i32 0, i32 20
  store %struct.vlink* %85, %struct.vlink** %87, align 8
  %88 = load %struct.vlink*, %struct.vlink** %7, align 8
  %89 = load %struct.vlink*, %struct.vlink** %5, align 8
  %90 = getelementptr inbounds %struct.vlink, %struct.vlink* %89, i32 0, i32 19
  store %struct.vlink* %88, %struct.vlink** %90, align 8
  %91 = load %struct.vlink*, %struct.vlink** %5, align 8
  %92 = getelementptr inbounds %struct.vlink, %struct.vlink* %91, i32 0, i32 20
  %93 = load %struct.vlink*, %struct.vlink** %92, align 8
  %94 = icmp ne %struct.vlink* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %79
  %96 = load %struct.vlink*, %struct.vlink** %5, align 8
  %97 = load %struct.vlink*, %struct.vlink** %5, align 8
  %98 = getelementptr inbounds %struct.vlink, %struct.vlink* %97, i32 0, i32 20
  %99 = load %struct.vlink*, %struct.vlink** %98, align 8
  %100 = getelementptr inbounds %struct.vlink, %struct.vlink* %99, i32 0, i32 19
  store %struct.vlink* %96, %struct.vlink** %100, align 8
  br label %101

101:                                              ; preds = %95, %79
  br label %102

102:                                              ; preds = %101, %26
  %103 = load %struct.vlink*, %struct.vlink** %5, align 8
  %104 = getelementptr inbounds %struct.vlink, %struct.vlink* %103, i32 0, i32 20
  %105 = load %struct.vlink*, %struct.vlink** %104, align 8
  store %struct.vlink* %105, %struct.vlink** %8, align 8
  br label %106

106:                                              ; preds = %136, %102
  %107 = load %struct.vlink*, %struct.vlink** %8, align 8
  %108 = icmp ne %struct.vlink* %107, null
  br i1 %108, label %109, label %140

109:                                              ; preds = %106
  %110 = load %struct.vlink*, %struct.vlink** %8, align 8
  %111 = load %struct.vlink*, %struct.vlink** %5, align 8
  %112 = call i32 @vl_comp(%struct.vlink* noundef %110, %struct.vlink* noundef %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load %struct.vlink*, %struct.vlink** %8, align 8
  %116 = getelementptr inbounds %struct.vlink, %struct.vlink* %115, i32 0, i32 20
  %117 = load %struct.vlink*, %struct.vlink** %116, align 8
  %118 = load %struct.vlink*, %struct.vlink** %8, align 8
  %119 = getelementptr inbounds %struct.vlink, %struct.vlink* %118, i32 0, i32 19
  %120 = load %struct.vlink*, %struct.vlink** %119, align 8
  %121 = getelementptr inbounds %struct.vlink, %struct.vlink* %120, i32 0, i32 20
  store %struct.vlink* %117, %struct.vlink** %121, align 8
  %122 = load %struct.vlink*, %struct.vlink** %8, align 8
  %123 = getelementptr inbounds %struct.vlink, %struct.vlink* %122, i32 0, i32 20
  %124 = load %struct.vlink*, %struct.vlink** %123, align 8
  %125 = icmp ne %struct.vlink* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load %struct.vlink*, %struct.vlink** %8, align 8
  %128 = getelementptr inbounds %struct.vlink, %struct.vlink* %127, i32 0, i32 19
  %129 = load %struct.vlink*, %struct.vlink** %128, align 8
  %130 = load %struct.vlink*, %struct.vlink** %8, align 8
  %131 = getelementptr inbounds %struct.vlink, %struct.vlink* %130, i32 0, i32 20
  %132 = load %struct.vlink*, %struct.vlink** %131, align 8
  %133 = getelementptr inbounds %struct.vlink, %struct.vlink* %132, i32 0, i32 19
  store %struct.vlink* %129, %struct.vlink** %133, align 8
  br label %134

134:                                              ; preds = %126, %114
  %135 = load %struct.vlink*, %struct.vlink** %8, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %135)
  store i32 26, i32* %4, align 4
  br label %141

136:                                              ; preds = %109
  %137 = load %struct.vlink*, %struct.vlink** %8, align 8
  %138 = getelementptr inbounds %struct.vlink, %struct.vlink* %137, i32 0, i32 20
  %139 = load %struct.vlink*, %struct.vlink** %138, align 8
  store %struct.vlink* %139, %struct.vlink** %8, align 8
  br label %106, !llvm.loop !7

140:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %134, %78, %64, %13
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @vl_comp(%struct.vlink* noundef, %struct.vlink* noundef) #1

declare dso_local void @vlfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_insert(%struct.vlink* noundef %0, %struct.vdir* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlink*, align 8
  %6 = alloca %struct.vdir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlink*, align 8
  %9 = alloca %struct.vlink*, align 8
  %10 = alloca i32, align 4
  store %struct.vlink* %0, %struct.vlink** %5, align 8
  store %struct.vdir* %1, %struct.vdir** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vlink*, %struct.vlink** %5, align 8
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %11, i32 0, i32 2
  %13 = load i8, i8* %12, align 8
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 85
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.vlink*, %struct.vlink** %5, align 8
  %18 = load %struct.vdir*, %struct.vdir** %6, align 8
  %19 = call i32 @ul_insert(%struct.vlink* noundef %17, %struct.vdir* noundef %18, %struct.vlink* noundef null)
  store i32 %19, i32* %4, align 4
  br label %224

20:                                               ; preds = %3
  %21 = load %struct.vdir*, %struct.vdir** %6, align 8
  %22 = getelementptr inbounds %struct.vdir, %struct.vdir* %21, i32 0, i32 5
  %23 = load %struct.vlink*, %struct.vlink** %22, align 8
  %24 = icmp eq %struct.vlink* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.vlink*, %struct.vlink** %5, align 8
  %27 = load %struct.vdir*, %struct.vdir** %6, align 8
  %28 = getelementptr inbounds %struct.vdir, %struct.vdir* %27, i32 0, i32 5
  store %struct.vlink* %26, %struct.vlink** %28, align 8
  %29 = load %struct.vlink*, %struct.vlink** %5, align 8
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %29, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %30, align 8
  %31 = load %struct.vlink*, %struct.vlink** %5, align 8
  %32 = getelementptr inbounds %struct.vlink, %struct.vlink* %31, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %32, align 8
  %33 = load %struct.vlink*, %struct.vlink** %5, align 8
  %34 = load %struct.vdir*, %struct.vdir** %6, align 8
  %35 = getelementptr inbounds %struct.vdir, %struct.vdir* %34, i32 0, i32 6
  store %struct.vlink* %33, %struct.vlink** %35, align 8
  store i32 0, i32* %4, align 4
  br label %224

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.vlink*, %struct.vlink** %5, align 8
  %41 = load %struct.vdir*, %struct.vdir** %6, align 8
  %42 = getelementptr inbounds %struct.vdir, %struct.vdir* %41, i32 0, i32 6
  %43 = load %struct.vlink*, %struct.vlink** %42, align 8
  %44 = getelementptr inbounds %struct.vlink, %struct.vlink* %43, i32 0, i32 20
  store %struct.vlink* %40, %struct.vlink** %44, align 8
  %45 = load %struct.vdir*, %struct.vdir** %6, align 8
  %46 = getelementptr inbounds %struct.vdir, %struct.vdir* %45, i32 0, i32 6
  %47 = load %struct.vlink*, %struct.vlink** %46, align 8
  %48 = load %struct.vlink*, %struct.vlink** %5, align 8
  %49 = getelementptr inbounds %struct.vlink, %struct.vlink* %48, i32 0, i32 19
  store %struct.vlink* %47, %struct.vlink** %49, align 8
  %50 = load %struct.vlink*, %struct.vlink** %5, align 8
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %50, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %51, align 8
  %52 = load %struct.vlink*, %struct.vlink** %5, align 8
  %53 = load %struct.vdir*, %struct.vdir** %6, align 8
  %54 = getelementptr inbounds %struct.vdir, %struct.vdir* %53, i32 0, i32 6
  store %struct.vlink* %52, %struct.vlink** %54, align 8
  store i32 0, i32* %4, align 4
  br label %224

55:                                               ; preds = %36
  %56 = load %struct.vlink*, %struct.vlink** %5, align 8
  %57 = load %struct.vdir*, %struct.vdir** %6, align 8
  %58 = getelementptr inbounds %struct.vdir, %struct.vdir* %57, i32 0, i32 5
  %59 = load %struct.vlink*, %struct.vlink** %58, align 8
  %60 = call i32 @vl_comp(%struct.vlink* noundef %56, %struct.vlink* noundef %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load %struct.vdir*, %struct.vdir** %6, align 8
  %64 = getelementptr inbounds %struct.vdir, %struct.vdir* %63, i32 0, i32 5
  %65 = load %struct.vlink*, %struct.vlink** %64, align 8
  %66 = load %struct.vlink*, %struct.vlink** %5, align 8
  %67 = getelementptr inbounds %struct.vlink, %struct.vlink* %66, i32 0, i32 20
  store %struct.vlink* %65, %struct.vlink** %67, align 8
  %68 = load %struct.vlink*, %struct.vlink** %5, align 8
  %69 = getelementptr inbounds %struct.vlink, %struct.vlink* %68, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %69, align 8
  %70 = load %struct.vlink*, %struct.vlink** %5, align 8
  %71 = load %struct.vlink*, %struct.vlink** %5, align 8
  %72 = getelementptr inbounds %struct.vlink, %struct.vlink* %71, i32 0, i32 20
  %73 = load %struct.vlink*, %struct.vlink** %72, align 8
  %74 = getelementptr inbounds %struct.vlink, %struct.vlink* %73, i32 0, i32 19
  store %struct.vlink* %70, %struct.vlink** %74, align 8
  %75 = load %struct.vlink*, %struct.vlink** %5, align 8
  %76 = load %struct.vdir*, %struct.vdir** %6, align 8
  %77 = getelementptr inbounds %struct.vdir, %struct.vdir* %76, i32 0, i32 5
  store %struct.vlink* %75, %struct.vlink** %77, align 8
  store i32 0, i32* %4, align 4
  br label %224

78:                                               ; preds = %55
  %79 = load %struct.vdir*, %struct.vdir** %6, align 8
  %80 = getelementptr inbounds %struct.vdir, %struct.vdir* %79, i32 0, i32 5
  %81 = load %struct.vlink*, %struct.vlink** %80, align 8
  store %struct.vlink* %81, %struct.vlink** %8, align 8
  br label %82

82:                                               ; preds = %104, %78
  %83 = load %struct.vlink*, %struct.vlink** %5, align 8
  %84 = load %struct.vlink*, %struct.vlink** %8, align 8
  %85 = call i32 @vl_comp(%struct.vlink* noundef %83, %struct.vlink* noundef %84)
  store i32 %85, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load %struct.vlink*, %struct.vlink** %8, align 8
  %89 = getelementptr inbounds %struct.vlink, %struct.vlink* %88, i32 0, i32 20
  %90 = load %struct.vlink*, %struct.vlink** %89, align 8
  %91 = icmp ne %struct.vlink* %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %87
  %93 = load %struct.vlink*, %struct.vlink** %8, align 8
  %94 = load %struct.vlink*, %struct.vlink** %5, align 8
  %95 = getelementptr inbounds %struct.vlink, %struct.vlink* %94, i32 0, i32 19
  store %struct.vlink* %93, %struct.vlink** %95, align 8
  %96 = load %struct.vlink*, %struct.vlink** %5, align 8
  %97 = getelementptr inbounds %struct.vlink, %struct.vlink* %96, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %97, align 8
  %98 = load %struct.vlink*, %struct.vlink** %5, align 8
  %99 = load %struct.vlink*, %struct.vlink** %8, align 8
  %100 = getelementptr inbounds %struct.vlink, %struct.vlink* %99, i32 0, i32 20
  store %struct.vlink* %98, %struct.vlink** %100, align 8
  %101 = load %struct.vlink*, %struct.vlink** %5, align 8
  %102 = load %struct.vdir*, %struct.vdir** %6, align 8
  %103 = getelementptr inbounds %struct.vdir, %struct.vdir* %102, i32 0, i32 6
  store %struct.vlink* %101, %struct.vlink** %103, align 8
  store i32 0, i32* %4, align 4
  br label %224

104:                                              ; preds = %87
  %105 = load %struct.vlink*, %struct.vlink** %8, align 8
  %106 = getelementptr inbounds %struct.vlink, %struct.vlink* %105, i32 0, i32 20
  %107 = load %struct.vlink*, %struct.vlink** %106, align 8
  store %struct.vlink* %107, %struct.vlink** %8, align 8
  br label %82, !llvm.loop !8

108:                                              ; preds = %82
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %207, label %111

111:                                              ; preds = %108
  %112 = load %struct.vlink*, %struct.vlink** %5, align 8
  %113 = load %struct.vlink*, %struct.vlink** %8, align 8
  %114 = call i32 @vl_equal(%struct.vlink* noundef %112, %struct.vlink* noundef %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load %struct.vlink*, %struct.vlink** %5, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %117)
  store i32 21, i32* %4, align 4
  br label %224

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load %struct.vlink*, %struct.vlink** %5, align 8
  %123 = getelementptr inbounds %struct.vlink, %struct.vlink* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vlink*, %struct.vlink** %8, align 8
  %126 = getelementptr inbounds %struct.vlink, %struct.vlink* %125, i32 0, i32 12
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %121
  %130 = load %struct.vlink*, %struct.vlink** %5, align 8
  %131 = getelementptr inbounds %struct.vlink, %struct.vlink* %130, i32 0, i32 12
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %121
  store i32 22, i32* %4, align 4
  br label %224

135:                                              ; preds = %129, %118
  %136 = load %struct.vlink*, %struct.vlink** %5, align 8
  %137 = getelementptr inbounds %struct.vlink, %struct.vlink* %136, i32 0, i32 12
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.vlink*, %struct.vlink** %5, align 8
  %142 = getelementptr inbounds %struct.vlink, %struct.vlink* %141, i32 0, i32 12
  store i64 -1, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.vlink*, %struct.vlink** %8, align 8
  %145 = getelementptr inbounds %struct.vlink, %struct.vlink* %144, i32 0, i32 6
  %146 = load %struct.vlink*, %struct.vlink** %145, align 8
  store %struct.vlink* %146, %struct.vlink** %9, align 8
  %147 = load %struct.vlink*, %struct.vlink** %9, align 8
  %148 = icmp ne %struct.vlink* %147, null
  br i1 %148, label %157, label %149

149:                                              ; preds = %143
  %150 = load %struct.vlink*, %struct.vlink** %5, align 8
  %151 = load %struct.vlink*, %struct.vlink** %8, align 8
  %152 = getelementptr inbounds %struct.vlink, %struct.vlink* %151, i32 0, i32 6
  store %struct.vlink* %150, %struct.vlink** %152, align 8
  %153 = load %struct.vlink*, %struct.vlink** %5, align 8
  %154 = getelementptr inbounds %struct.vlink, %struct.vlink* %153, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %154, align 8
  %155 = load %struct.vlink*, %struct.vlink** %5, align 8
  %156 = getelementptr inbounds %struct.vlink, %struct.vlink* %155, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %156, align 8
  br label %206

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %178, %157
  %159 = load %struct.vlink*, %struct.vlink** %9, align 8
  %160 = getelementptr inbounds %struct.vlink, %struct.vlink* %159, i32 0, i32 20
  %161 = load %struct.vlink*, %struct.vlink** %160, align 8
  %162 = icmp ne %struct.vlink* %161, null
  br i1 %162, label %163, label %182

163:                                              ; preds = %158
  %164 = load %struct.vlink*, %struct.vlink** %9, align 8
  %165 = getelementptr inbounds %struct.vlink, %struct.vlink* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.vlink*, %struct.vlink** %5, align 8
  %170 = getelementptr inbounds %struct.vlink, %struct.vlink* %169, i32 0, i32 12
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %171, 1
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.vlink*, %struct.vlink** %5, align 8
  %175 = getelementptr inbounds %struct.vlink, %struct.vlink* %174, i32 0, i32 12
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %173, %168, %163
  %179 = load %struct.vlink*, %struct.vlink** %9, align 8
  %180 = getelementptr inbounds %struct.vlink, %struct.vlink* %179, i32 0, i32 20
  %181 = load %struct.vlink*, %struct.vlink** %180, align 8
  store %struct.vlink* %181, %struct.vlink** %9, align 8
  br label %158, !llvm.loop !9

182:                                              ; preds = %158
  %183 = load %struct.vlink*, %struct.vlink** %9, align 8
  %184 = getelementptr inbounds %struct.vlink, %struct.vlink* %183, i32 0, i32 12
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load %struct.vlink*, %struct.vlink** %5, align 8
  %189 = getelementptr inbounds %struct.vlink, %struct.vlink* %188, i32 0, i32 12
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %190, 1
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.vlink*, %struct.vlink** %5, align 8
  %194 = getelementptr inbounds %struct.vlink, %struct.vlink* %193, i32 0, i32 12
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %192, %187, %182
  %198 = load %struct.vlink*, %struct.vlink** %5, align 8
  %199 = load %struct.vlink*, %struct.vlink** %9, align 8
  %200 = getelementptr inbounds %struct.vlink, %struct.vlink* %199, i32 0, i32 20
  store %struct.vlink* %198, %struct.vlink** %200, align 8
  %201 = load %struct.vlink*, %struct.vlink** %9, align 8
  %202 = load %struct.vlink*, %struct.vlink** %5, align 8
  %203 = getelementptr inbounds %struct.vlink, %struct.vlink* %202, i32 0, i32 19
  store %struct.vlink* %201, %struct.vlink** %203, align 8
  %204 = load %struct.vlink*, %struct.vlink** %5, align 8
  %205 = getelementptr inbounds %struct.vlink, %struct.vlink* %204, i32 0, i32 20
  store %struct.vlink* null, %struct.vlink** %205, align 8
  br label %206

206:                                              ; preds = %197, %149
  store i32 0, i32* %4, align 4
  br label %224

207:                                              ; preds = %108
  %208 = load %struct.vlink*, %struct.vlink** %8, align 8
  %209 = load %struct.vlink*, %struct.vlink** %5, align 8
  %210 = getelementptr inbounds %struct.vlink, %struct.vlink* %209, i32 0, i32 20
  store %struct.vlink* %208, %struct.vlink** %210, align 8
  %211 = load %struct.vlink*, %struct.vlink** %8, align 8
  %212 = getelementptr inbounds %struct.vlink, %struct.vlink* %211, i32 0, i32 19
  %213 = load %struct.vlink*, %struct.vlink** %212, align 8
  %214 = load %struct.vlink*, %struct.vlink** %5, align 8
  %215 = getelementptr inbounds %struct.vlink, %struct.vlink* %214, i32 0, i32 19
  store %struct.vlink* %213, %struct.vlink** %215, align 8
  %216 = load %struct.vlink*, %struct.vlink** %5, align 8
  %217 = load %struct.vlink*, %struct.vlink** %8, align 8
  %218 = getelementptr inbounds %struct.vlink, %struct.vlink* %217, i32 0, i32 19
  store %struct.vlink* %216, %struct.vlink** %218, align 8
  %219 = load %struct.vlink*, %struct.vlink** %5, align 8
  %220 = load %struct.vlink*, %struct.vlink** %5, align 8
  %221 = getelementptr inbounds %struct.vlink, %struct.vlink* %220, i32 0, i32 19
  %222 = load %struct.vlink*, %struct.vlink** %221, align 8
  %223 = getelementptr inbounds %struct.vlink, %struct.vlink* %222, i32 0, i32 20
  store %struct.vlink* %219, %struct.vlink** %223, align 8
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %207, %206, %134, %116, %92, %62, %39, %25, %16
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @vl_equal(%struct.vlink* noundef, %struct.vlink* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @nlsindex(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* noundef %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @strncmp(i8* noundef %12, i8* noundef %13, i64 noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %3, align 8
  br label %38

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchr(i8* noundef %22, i32 noundef 10)
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @strncmp(i8* noundef %28, i8* noundef %29, i64 noundef %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %3, align 8
  br label %38

36:                                               ; preds = %25
  br label %21, !llvm.loop !10

37:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %38

38:                                               ; preds = %37, %34, %18
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @month_sname(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 12
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = load i8*, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @month_sname.name, i64 0, i64 0), align 16
  br label %15

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x i8*], [13 x i8*]* @month_sname.name, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i8* [ %9, %8 ], [ %14, %10 ]
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sindex(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* noundef %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i8* @strchr(i8* noundef %13, i32 noundef %16)
  store i8* %17, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @strncmp(i8* noundef %20, i8* noundef %21, i64 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %3, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %12, !llvm.loop !11

31:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scan_error(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strncmp(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 noundef 15)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 246, i32* %2, align 4
  br label %114

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strncmp(i8* noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64 noundef 13)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  store i32 251, i32* @perrno, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 13
  %15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %14, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #3
  %16 = load i32, i32* @perrno, align 4
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strncmp(i8* noundef %18, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64 noundef 8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %23, i8** %3, align 8
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #3
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strncmp(i8* noundef %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 noundef 11)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* @pwarn, align 4
  store i32 0, i32* %2, align 4
  br label %114

30:                                               ; preds = %21
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strncmp(i8* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 noundef 7)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 2, i32* @pwarn, align 4
  store i32 0, i32* %2, align 4
  br label %114

35:                                               ; preds = %30
  store i32 255, i32* @pwarn, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %36, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #3
  store i32 0, i32* %2, align 4
  br label %114

38:                                               ; preds = %17
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 noundef 5)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %49, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #3
  br label %51

51:                                               ; preds = %47, %42
  store i32 253, i32* @perrno, align 4
  %52 = load i32, i32* @perrno, align 4
  store i32 %52, i32* %2, align 4
  br label %114

53:                                               ; preds = %38
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strncmp(i8* noundef %54, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef 7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @pwarn, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  store i32 3, i32* @pwarn, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %61, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #3
  br label %63

63:                                               ; preds = %60, %57
  store i32 0, i32* %2, align 4
  br label %114

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @strncmp(i8* noundef %67, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i64 noundef 8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  store i32 255, i32* @perrno, align 4
  %71 = load i32, i32* @perrno, align 4
  store i32 %71, i32* %2, align 4
  br label %114

72:                                               ; preds = %66
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  store i8* %74, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %75, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #3
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @strncmp(i8* noundef %77, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i64 noundef 9)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 244, i32* @perrno, align 4
  br label %112

81:                                               ; preds = %72
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strncmp(i8* noundef %82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 noundef 13)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 243, i32* @perrno, align 4
  br label %111

86:                                               ; preds = %81
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @strncmp(i8* noundef %87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 noundef 14)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 247, i32* @perrno, align 4
  br label %110

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @strncmp(i8* noundef %92, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 noundef 13)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 248, i32* @perrno, align 4
  br label %109

96:                                               ; preds = %91
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @strncmp(i8* noundef %97, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 noundef 13)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 254, i32* @perrno, align 4
  br label %108

101:                                              ; preds = %96
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @strncmp(i8* noundef %102, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 noundef 15)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 246, i32* @perrno, align 4
  br label %107

106:                                              ; preds = %101
  store i32 255, i32* @perrno, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %85
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i32, i32* @perrno, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %70, %63, %51, %35, %34, %29, %12, %7
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pattrib* @parse_attribute(i8* noundef %0) #0 {
  %2 = alloca %struct.pattrib*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [4256 x i8], align 16
  %5 = alloca [4256 x i8], align 16
  %6 = alloca [4256 x i8], align 16
  %7 = alloca [4256 x i8], align 16
  %8 = alloca %struct.pattrib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4256 x i8], align 16
  %11 = alloca [4256 x i8], align 16
  %12 = alloca [4256 x i8], align 16
  %13 = alloca [4256 x i8], align 16
  %14 = alloca [4256 x i8], align 16
  %15 = alloca [4256 x i8], align 16
  %16 = alloca %struct.vlink*, align 8
  store i8* %0, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %21 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* noundef %18, i8* noundef %19, i8* noundef %20) #3
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %29 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29) #3
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 252, i32* @perrno, align 4
  store %struct.pattrib* null, %struct.pattrib** %2, align 8
  br label %164

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %1
  %36 = call %struct.pattrib* (...) @atalloc()
  store %struct.pattrib* %36, %struct.pattrib** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %41 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %45 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %44, i32 0, i32 0
  store i8 67, i8* %45, align 8
  br label %70

46:                                               ; preds = %39
  %47 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %48 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %52 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %51, i32 0, i32 0
  store i8 76, i8* %52, align 8
  br label %69

53:                                               ; preds = %46
  %54 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %55 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %59 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %58, i32 0, i32 0
  store i8 82, i8* %59, align 8
  br label %68

60:                                               ; preds = %53
  %61 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %62 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %66 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %65, i32 0, i32 0
  store i8 65, i8* %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %35
  %72 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %73 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef %72)
  %74 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %75 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %77 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef %76)
  %78 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %79 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %81 = call i32 @strcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %85 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef %84)
  %86 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %87 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %86, i32 0, i32 3
  %88 = bitcast %union.avalue* %87 to i8**
  store i8* %85, i8** %88, align 8
  br label %162

89:                                               ; preds = %71
  %90 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %91 = call i32 @strcmp(i8* noundef %90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %161

93:                                               ; preds = %89
  %94 = call %struct.vlink* (...) @vlalloc()
  store %struct.vlink* %94, %struct.vlink** %16, align 8
  %95 = load %struct.vlink*, %struct.vlink** %16, align 8
  %96 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  %97 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %96, i32 0, i32 3
  %98 = bitcast %union.avalue* %97 to %struct.vlink**
  store %struct.vlink* %95, %struct.vlink** %98, align 8
  %99 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %100 = load %struct.vlink*, %struct.vlink** %16, align 8
  %101 = getelementptr inbounds %struct.vlink, %struct.vlink* %100, i32 0, i32 2
  %102 = getelementptr inbounds [4256 x i8], [4256 x i8]* %10, i64 0, i64 0
  %103 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %104 = getelementptr inbounds [4256 x i8], [4256 x i8]* %12, i64 0, i64 0
  %105 = getelementptr inbounds [4256 x i8], [4256 x i8]* %13, i64 0, i64 0
  %106 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %107 = getelementptr inbounds [4256 x i8], [4256 x i8]* %15, i64 0, i64 0
  %108 = load %struct.vlink*, %struct.vlink** %16, align 8
  %109 = getelementptr inbounds %struct.vlink, %struct.vlink* %108, i32 0, i32 11
  %110 = load %struct.vlink*, %struct.vlink** %16, align 8
  %111 = getelementptr inbounds %struct.vlink, %struct.vlink* %110, i32 0, i32 12
  %112 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %99, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i8* noundef %101, i8* noundef %102, i8* noundef %103, i8* noundef %104, i8* noundef %105, i8* noundef %106, i8* noundef %107, i64* noundef %109, i64* noundef %111) #3
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %115, label %159

115:                                              ; preds = %93
  %116 = getelementptr inbounds [4256 x i8], [4256 x i8]* %10, i64 0, i64 0
  %117 = load %struct.vlink*, %struct.vlink** %16, align 8
  %118 = getelementptr inbounds %struct.vlink, %struct.vlink* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %116, i8* noundef %119)
  %121 = load %struct.vlink*, %struct.vlink** %16, align 8
  %122 = getelementptr inbounds %struct.vlink, %struct.vlink* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %124 = call i8* @unquote(i8* noundef %123)
  %125 = load %struct.vlink*, %struct.vlink** %16, align 8
  %126 = getelementptr inbounds %struct.vlink, %struct.vlink* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %124, i8* noundef %127)
  %129 = load %struct.vlink*, %struct.vlink** %16, align 8
  %130 = getelementptr inbounds %struct.vlink, %struct.vlink* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = getelementptr inbounds [4256 x i8], [4256 x i8]* %12, i64 0, i64 0
  %132 = load %struct.vlink*, %struct.vlink** %16, align 8
  %133 = getelementptr inbounds %struct.vlink, %struct.vlink* %132, i32 0, i32 7
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %131, i8* noundef %134)
  %136 = load %struct.vlink*, %struct.vlink** %16, align 8
  %137 = getelementptr inbounds %struct.vlink, %struct.vlink* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = getelementptr inbounds [4256 x i8], [4256 x i8]* %13, i64 0, i64 0
  %139 = load %struct.vlink*, %struct.vlink** %16, align 8
  %140 = getelementptr inbounds %struct.vlink, %struct.vlink* %139, i32 0, i32 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %138, i8* noundef %141)
  %143 = load %struct.vlink*, %struct.vlink** %16, align 8
  %144 = getelementptr inbounds %struct.vlink, %struct.vlink* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  %145 = getelementptr inbounds [4256 x i8], [4256 x i8]* %14, i64 0, i64 0
  %146 = load %struct.vlink*, %struct.vlink** %16, align 8
  %147 = getelementptr inbounds %struct.vlink, %struct.vlink* %146, i32 0, i32 9
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %145, i8* noundef %148)
  %150 = load %struct.vlink*, %struct.vlink** %16, align 8
  %151 = getelementptr inbounds %struct.vlink, %struct.vlink* %150, i32 0, i32 9
  store i8* %149, i8** %151, align 8
  %152 = getelementptr inbounds [4256 x i8], [4256 x i8]* %15, i64 0, i64 0
  %153 = load %struct.vlink*, %struct.vlink** %16, align 8
  %154 = getelementptr inbounds %struct.vlink, %struct.vlink* %153, i32 0, i32 10
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %152, i8* noundef %155)
  %157 = load %struct.vlink*, %struct.vlink** %16, align 8
  %158 = getelementptr inbounds %struct.vlink, %struct.vlink* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  br label %160

159:                                              ; preds = %93
  store i32 252, i32* @perrno, align 4
  store %struct.pattrib* null, %struct.pattrib** %2, align 8
  br label %164

160:                                              ; preds = %115
  br label %161

161:                                              ; preds = %160, %89
  br label %162

162:                                              ; preds = %161, %83
  %163 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  store %struct.pattrib* %163, %struct.pattrib** %2, align 8
  br label %164

164:                                              ; preds = %162, %159, %33
  %165 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  ret %struct.pattrib* %165
}

declare dso_local %struct.pattrib* @atalloc(...) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i8* @stcopy(...) #1

declare dso_local %struct.vlink* @vlalloc(...) #1

declare dso_local i8* @stcopyr(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @nxtline(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* @strchr(i8* noundef %4, i32 noundef 10)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  store i8* %10, i8** %2, align 8
  br label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @unquote(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i64 0, i64 0), i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 39
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %2, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %36, %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8, i8* %31, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %30, %26
  br label %14, !llvm.loop !12

37:                                               ; preds = %14
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 0, i8* %38, align 1
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i64 0, i64 0), i8** %2, align 8
  br label %40

40:                                               ; preds = %37, %9
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
