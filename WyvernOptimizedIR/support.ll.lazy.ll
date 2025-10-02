; ModuleID = './support.ll'
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
define dso_local i32 @wcmatch(i8* noundef %0, i8* noundef readonly %1) #0 {
  %3 = alloca [200 x i8], align 16
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %69

5:                                                ; preds = %2
  %6 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 1
  store i8 94, i8* %6, align 16
  br label %8

8:                                                ; preds = %61, %5
  %.02 = phi i8* [ %1, %5 ], [ %.79, %61 ]
  %.01 = phi i8* [ %7, %5 ], [ %.7, %61 ]
  %9 = load i8, i8* %.02, align 1
  %.not10 = icmp eq i8 %9, 0
  br i1 %.not10, label %62, label %10

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1
  %12 = icmp eq i8 %11, 42
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 46, i8* %.01, align 1
  %15 = load i8, i8* %.02, align 1
  %16 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %15, i8* %14, align 1
  br label %61

17:                                               ; preds = %10
  %18 = load i8, i8* %.02, align 1
  %19 = icmp eq i8 %18, 63
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 46, i8* %.01, align 1
  br label %60

22:                                               ; preds = %17
  %23 = load i8, i8* %.02, align 1
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 92, i8* %.01, align 1
  %27 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 46, i8* %26, align 1
  br label %59

28:                                               ; preds = %22
  %29 = load i8, i8* %.02, align 1
  %30 = icmp eq i8 %29, 91
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 92, i8* %.01, align 1
  %33 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 91, i8* %32, align 1
  br label %58

34:                                               ; preds = %28
  %35 = load i8, i8* %.02, align 1
  %36 = icmp eq i8 %35, 36
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 92, i8* %.01, align 1
  %39 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 36, i8* %38, align 1
  br label %57

40:                                               ; preds = %34
  %41 = load i8, i8* %.02, align 1
  %42 = icmp eq i8 %41, 94
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 92, i8* %.01, align 1
  %45 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 94, i8* %44, align 1
  br label %56

46:                                               ; preds = %40
  %47 = load i8, i8* %.02, align 1
  %48 = icmp eq i8 %47, 92
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 92, i8* %.01, align 1
  %51 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 92, i8* %50, align 1
  br label %55

52:                                               ; preds = %46
  %53 = load i8, i8* %.02, align 1
  %54 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %53, i8* %.01, align 1
  br label %55

55:                                               ; preds = %52, %49
  %.1 = phi i8* [ %51, %49 ], [ %54, %52 ]
  br label %56

56:                                               ; preds = %55, %43
  %.2 = phi i8* [ %45, %43 ], [ %.1, %55 ]
  br label %57

57:                                               ; preds = %56, %37
  %.3 = phi i8* [ %39, %37 ], [ %.2, %56 ]
  br label %58

58:                                               ; preds = %57, %31
  %.4 = phi i8* [ %33, %31 ], [ %.3, %57 ]
  br label %59

59:                                               ; preds = %58, %25
  %.5 = phi i8* [ %27, %25 ], [ %.4, %58 ]
  br label %60

60:                                               ; preds = %59, %20
  %.6 = phi i8* [ %21, %20 ], [ %.5, %59 ]
  br label %61

61:                                               ; preds = %60, %13
  %.7 = phi i8* [ %16, %13 ], [ %.6, %60 ]
  %.79 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %8, !llvm.loop !4

62:                                               ; preds = %8
  %63 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 36, i8* %.01, align 1
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %65 = call i8* (i8*, ...) bitcast (i8* (...)* @re_comp to i8* (i8*, ...)*)(i8* noundef nonnull %64) #6
  %.not11 = icmp eq i8* %65, null
  br i1 %.not11, label %67, label %66

66:                                               ; preds = %62
  br label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef %0) #6
  br label %69

69:                                               ; preds = %67, %66, %4
  %.0 = phi i32 [ 0, %66 ], [ %68, %67 ], [ 1, %4 ]
  ret i32 %.0
}

declare dso_local i8* @re_comp(...) #1

declare dso_local i32 @re_exec(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ul_insert(%struct.vlink* noundef %0, %struct.vdir* noundef %1, %struct.vlink* noundef %2) #0 {
  %4 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 7
  %5 = load %struct.vlink*, %struct.vlink** %4, align 8
  %6 = icmp eq %struct.vlink* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 7
  store %struct.vlink* %0, %struct.vlink** %8, align 8
  %9 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %9, align 8
  %10 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %10, align 8
  br label %77

11:                                               ; preds = %3
  %12 = bitcast %struct.vdir* %1 to %struct.vlink*
  %13 = icmp eq %struct.vlink* %12, %2
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 7
  %16 = load %struct.vlink*, %struct.vlink** %15, align 8
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* %16, %struct.vlink** %17, align 8
  %18 = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i64 0, i32 19
  store %struct.vlink* %0, %struct.vlink** %18, align 8
  %19 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 7
  store %struct.vlink* %0, %struct.vlink** %19, align 8
  %20 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %20, align 8
  br label %55

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 7
  br label %23

23:                                               ; preds = %37, %21
  %.02 = phi %struct.vlink* [ %2, %21 ], [ %.13, %37 ]
  %.01.in = phi %struct.vlink** [ %22, %21 ], [ %38, %37 ]
  %.01 = load %struct.vlink*, %struct.vlink** %.01.in, align 8
  %.not = icmp eq %struct.vlink* %.01, null
  br i1 %.not, label %.loopexit, label %24

24:                                               ; preds = %23
  %.not14 = icmp eq %struct.vlink* %.02, null
  br i1 %.not14, label %25, label %30

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %27 = load %struct.vlink*, %struct.vlink** %26, align 8
  %28 = icmp eq %struct.vlink* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %25, %24
  %.13 = phi %struct.vlink* [ %.02, %24 ], [ %.01, %29 ], [ %.02, %25 ]
  %31 = call i32 @vl_comp(%struct.vlink* noundef nonnull %.01, %struct.vlink* noundef %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %0) #6
  br label %77

34:                                               ; preds = %30
  %35 = icmp eq %struct.vlink* %.01, %.13
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  br label %23, !llvm.loop !6

.loopexit:                                        ; preds = %23
  br label %39

39:                                               ; preds = %.loopexit, %36
  %.2 = phi %struct.vlink* [ %.13, %36 ], [ %.02, %.loopexit ]
  %40 = icmp eq %struct.vlink* %.01, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %77

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 20
  %44 = load %struct.vlink*, %struct.vlink** %43, align 8
  %45 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* %44, %struct.vlink** %45, align 8
  %46 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 20
  store %struct.vlink* %0, %struct.vlink** %46, align 8
  %47 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* %.2, %struct.vlink** %47, align 8
  %48 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  %49 = load %struct.vlink*, %struct.vlink** %48, align 8
  %.not11 = icmp eq %struct.vlink* %49, null
  br i1 %.not11, label %54, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  %52 = load %struct.vlink*, %struct.vlink** %51, align 8
  %53 = getelementptr inbounds %struct.vlink, %struct.vlink* %52, i64 0, i32 19
  store %struct.vlink* %0, %struct.vlink** %53, align 8
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %14
  br label %56

56:                                               ; preds = %75, %55
  %.pn = phi %struct.vlink* [ %0, %55 ], [ %.1, %75 ]
  %.1.in = getelementptr inbounds %struct.vlink, %struct.vlink* %.pn, i64 0, i32 20
  %.1 = load %struct.vlink*, %struct.vlink** %.1.in, align 8
  %.not12 = icmp eq %struct.vlink* %.1, null
  br i1 %.not12, label %76, label %57

57:                                               ; preds = %56
  %58 = call i32 @vl_comp(%struct.vlink* noundef nonnull %.1, %struct.vlink* noundef %0) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 20
  %62 = load %struct.vlink*, %struct.vlink** %61, align 8
  %63 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 19
  %64 = load %struct.vlink*, %struct.vlink** %63, align 8
  %65 = getelementptr inbounds %struct.vlink, %struct.vlink* %64, i64 0, i32 20
  store %struct.vlink* %62, %struct.vlink** %65, align 8
  %66 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 20
  %67 = load %struct.vlink*, %struct.vlink** %66, align 8
  %.not13 = icmp eq %struct.vlink* %67, null
  br i1 %.not13, label %74, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 19
  %70 = load %struct.vlink*, %struct.vlink** %69, align 8
  %71 = getelementptr inbounds %struct.vlink, %struct.vlink* %.1, i64 0, i32 20
  %72 = load %struct.vlink*, %struct.vlink** %71, align 8
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i64 0, i32 19
  store %struct.vlink* %70, %struct.vlink** %73, align 8
  br label %74

74:                                               ; preds = %68, %60
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef nonnull %.1) #6
  br label %77

75:                                               ; preds = %57
  br label %56, !llvm.loop !7

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %74, %41, %33, %7
  %.0 = phi i32 [ 0, %7 ], [ 26, %74 ], [ 0, %76 ], [ 25, %33 ], [ 27, %41 ]
  ret i32 %.0
}

declare dso_local i32 @vl_comp(%struct.vlink* noundef, %struct.vlink* noundef) #1

declare dso_local void @vlfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vl_insert(%struct.vlink* noundef %0, %struct.vdir* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 2
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 85
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @ul_insert(%struct.vlink* noundef %0, %struct.vdir* noundef %1, %struct.vlink* noundef null)
  br label %130

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  %11 = load %struct.vlink*, %struct.vlink** %10, align 8
  %12 = icmp eq %struct.vlink* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  store %struct.vlink* %0, %struct.vlink** %14, align 8
  %15 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %15, align 8
  %16 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %16, align 8
  %17 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 6
  store %struct.vlink* %0, %struct.vlink** %17, align 8
  br label %130

18:                                               ; preds = %9
  %19 = icmp eq i32 %2, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 6
  %22 = load %struct.vlink*, %struct.vlink** %21, align 8
  %23 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i64 0, i32 20
  store %struct.vlink* %0, %struct.vlink** %23, align 8
  %24 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 6
  %25 = load %struct.vlink*, %struct.vlink** %24, align 8
  %26 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* %25, %struct.vlink** %26, align 8
  %27 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %27, align 8
  %28 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 6
  store %struct.vlink* %0, %struct.vlink** %28, align 8
  br label %130

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  %31 = load %struct.vlink*, %struct.vlink** %30, align 8
  %32 = call i32 @vl_comp(%struct.vlink* noundef %0, %struct.vlink* noundef %31) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  %36 = load %struct.vlink*, %struct.vlink** %35, align 8
  %37 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* %36, %struct.vlink** %37, align 8
  %38 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %38, align 8
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %36, i64 0, i32 19
  store %struct.vlink* %0, %struct.vlink** %39, align 8
  %40 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  store %struct.vlink* %0, %struct.vlink** %40, align 8
  br label %130

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 5
  br label %43

43:                                               ; preds = %54, %41
  %.02.in = phi %struct.vlink** [ %42, %41 ], [ %55, %54 ]
  %.02 = load %struct.vlink*, %struct.vlink** %.02.in, align 8
  %44 = call i32 @vl_comp(%struct.vlink* noundef %0, %struct.vlink* noundef %.02) #6
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  %48 = load %struct.vlink*, %struct.vlink** %47, align 8
  %.not9 = icmp eq %struct.vlink* %48, null
  br i1 %.not9, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* %.02, %struct.vlink** %50, align 8
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %51, align 8
  %52 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  store %struct.vlink* %0, %struct.vlink** %52, align 8
  %53 = getelementptr inbounds %struct.vdir, %struct.vdir* %1, i64 0, i32 6
  store %struct.vlink* %0, %struct.vlink** %53, align 8
  br label %130

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  br label %43, !llvm.loop !8

56:                                               ; preds = %43
  %.not = icmp eq i32 %44, 0
  br i1 %.not, label %57, label %121

57:                                               ; preds = %56
  %58 = call i32 @vl_equal(%struct.vlink* noundef %0, %struct.vlink* noundef %.02) #6
  %.not5 = icmp eq i32 %58, 0
  br i1 %.not5, label %60, label %59

59:                                               ; preds = %57
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %0) #6
  br label %130

60:                                               ; preds = %57
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 12
  %66 = load i64, i64* %65, align 8
  %.not8 = icmp eq i64 %64, %66
  br i1 %.not8, label %67, label %71

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %62
  br label %130

72:                                               ; preds = %67, %60
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  store i64 -1, i64* %77, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 6
  %80 = load %struct.vlink*, %struct.vlink** %79, align 8
  %.not6 = icmp eq %struct.vlink* %80, null
  br i1 %.not6, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 6
  store %struct.vlink* %0, %struct.vlink** %82, align 8
  %83 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %83, align 8
  %84 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %84, align 8
  br label %120

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %101, %85
  %.01 = phi %struct.vlink* [ %80, %85 ], [ %103, %101 ]
  %87 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %88 = load %struct.vlink*, %struct.vlink** %87, align 8
  %.not7 = icmp eq %struct.vlink* %88, null
  br i1 %.not7, label %104, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %97, %93, %89
  %102 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %103 = load %struct.vlink*, %struct.vlink** %102, align 8
  br label %86, !llvm.loop !9

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 12
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 12
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %112, %108, %104
  %117 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  store %struct.vlink* %0, %struct.vlink** %117, align 8
  %118 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* %.01, %struct.vlink** %118, align 8
  %119 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* null, %struct.vlink** %119, align 8
  br label %120

120:                                              ; preds = %116, %81
  br label %130

121:                                              ; preds = %56
  %122 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* %.02, %struct.vlink** %122, align 8
  %123 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 19
  %124 = load %struct.vlink*, %struct.vlink** %123, align 8
  %125 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* %124, %struct.vlink** %125, align 8
  %126 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 19
  store %struct.vlink* %0, %struct.vlink** %126, align 8
  %127 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  %128 = load %struct.vlink*, %struct.vlink** %127, align 8
  %129 = getelementptr inbounds %struct.vlink, %struct.vlink* %128, i64 0, i32 20
  store %struct.vlink* %0, %struct.vlink** %129, align 8
  br label %130

130:                                              ; preds = %121, %120, %71, %59, %49, %34, %20, %13, %7
  %.0 = phi i32 [ %8, %7 ], [ 0, %13 ], [ 0, %20 ], [ 0, %34 ], [ 0, %49 ], [ 0, %121 ], [ 21, %59 ], [ 22, %71 ], [ 0, %120 ]
  ret i32 %.0
}

declare dso_local i32 @vl_equal(%struct.vlink* noundef, %struct.vlink* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @nlsindex(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %sext = shl i64 %3, 32
  %4 = ashr exact i64 %sext, 32
  %5 = call i32 @strncmp(i8* noundef %0, i8* noundef %1, i64 noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %19

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %17, %8
  %.01 = phi i8* [ %0, %8 ], [ %12, %17 ]
  %10 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 10) #6
  %.not = icmp eq i8* %10, null
  br i1 %.not, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %sext2 = shl i64 %3, 32
  %13 = ashr exact i64 %sext2, 32
  %14 = call i32 @strncmp(i8* noundef nonnull %12, i8* noundef %1, i64 noundef %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %19

17:                                               ; preds = %11
  br label %9, !llvm.loop !10

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %16, %7
  %.0 = phi i8* [ %0, %7 ], [ %12, %16 ], [ null, %18 ]
  ret i8* %.0
}

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @month_sname(i32 noundef %0) #2 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 12
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %1
  br label %9

6:                                                ; preds = %3
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [13 x i8*], [13 x i8*]* @month_sname.name, i64 0, i64 %7
  br label %9

9:                                                ; preds = %6, %5
  %.in = phi i8** [ getelementptr inbounds ([13 x i8*], [13 x i8*]* @month_sname.name, i64 0, i64 0), %5 ], [ %8, %6 ]
  %10 = load i8*, i8** %.in, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sindex(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  br label %4

4:                                                ; preds = %13, %2
  %.01 = phi i8* [ %0, %2 ], [ %14, %13 ]
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef %6) #6
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %15, label %8

8:                                                ; preds = %4
  %sext = shl i64 %3, 32
  %9 = ashr exact i64 %sext, 32
  %10 = call i32 @strncmp(i8* noundef nonnull %7, i8* noundef nonnull %1, i64 noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, i8* %7, i64 1
  br label %4, !llvm.loop !11

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %12
  %.0 = phi i8* [ %7, %12 ], [ null, %15 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scan_error(i8* noundef %0) #0 {
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  %2 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 noundef 15) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %83

5:                                                ; preds = %1
  %6 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i64 noundef 13) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store i32 251, i32* @perrno, align 4
  %9 = getelementptr inbounds i8, i8* %0, i64 13
  %10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #6
  %11 = load i32, i32* @perrno, align 4
  br label %83

12:                                               ; preds = %5
  %13 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64 noundef 8) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %17 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #6
  %18 = call i32 @strncmp(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 noundef 11) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* @pwarn, align 4
  br label %83

21:                                               ; preds = %15
  %22 = call i32 @strncmp(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 noundef 7) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* @pwarn, align 4
  br label %83

25:                                               ; preds = %21
  store i32 255, i32* @pwarn, align 4
  %26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #6
  br label %83

27:                                               ; preds = %12
  %28 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 noundef 5) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %0, i64 5
  %32 = load i8, i8* %31, align 1
  %.not7 = icmp eq i8 %32, 0
  br i1 %.not7, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %0, i64 6
  %35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #6
  br label %36

36:                                               ; preds = %33, %30
  store i32 253, i32* @perrno, align 4
  br label %83

37:                                               ; preds = %27
  %38 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef 7) #6
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %45, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* @pwarn, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  store i32 3, i32* @pwarn, align 4
  %43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0)) #6
  br label %44

44:                                               ; preds = %42, %39
  br label %83

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i64 noundef 8) #6
  %.not1 = icmp eq i32 %48, 0
  br i1 %.not1, label %50, label %49

49:                                               ; preds = %47
  store i32 255, i32* @perrno, align 4
  br label %83

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, i8* %0, i64 8
  %52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %51, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0)) #6
  %53 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i64 noundef 9) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %82

56:                                               ; preds = %50
  %57 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 noundef 13) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %81

60:                                               ; preds = %56
  %61 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i64 noundef 14) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %80

64:                                               ; preds = %60
  %65 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 noundef 13) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %79

68:                                               ; preds = %64
  %69 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 noundef 13) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %78

72:                                               ; preds = %68
  %73 = call i32 @strncmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i64 noundef 15) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %77

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %75
  %storemerge = phi i32 [ 255, %76 ], [ 246, %75 ]
  br label %78

78:                                               ; preds = %77, %71
  %storemerge2 = phi i32 [ %storemerge, %77 ], [ 254, %71 ]
  br label %79

79:                                               ; preds = %78, %67
  %storemerge3 = phi i32 [ %storemerge2, %78 ], [ 248, %67 ]
  br label %80

80:                                               ; preds = %79, %63
  %storemerge4 = phi i32 [ %storemerge3, %79 ], [ 247, %63 ]
  br label %81

81:                                               ; preds = %80, %59
  %storemerge5 = phi i32 [ %storemerge4, %80 ], [ 243, %59 ]
  br label %82

82:                                               ; preds = %81, %55
  %storemerge6 = phi i32 [ %storemerge5, %81 ], [ 244, %55 ]
  store i32 %storemerge6, i32* @perrno, align 4
  br label %83

83:                                               ; preds = %82, %49, %44, %36, %25, %24, %20, %8, %4
  %.0 = phi i32 [ 246, %4 ], [ %11, %8 ], [ 0, %20 ], [ 0, %24 ], [ 0, %25 ], [ 253, %36 ], [ 0, %44 ], [ 255, %49 ], [ %storemerge6, %82 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pattrib* @parse_attribute(i8* noundef %0) #0 {
  %2 = alloca [4256 x i8], align 16
  %3 = alloca [4256 x i8], align 16
  %4 = alloca [4256 x i8], align 16
  %5 = alloca [4256 x i8], align 16
  %6 = alloca [4256 x i8], align 16
  %7 = alloca [4256 x i8], align 16
  %8 = alloca [4256 x i8], align 16
  %9 = alloca [4256 x i8], align 16
  %10 = alloca [4256 x i8], align 16
  %11 = alloca [4256 x i8], align 16
  %12 = getelementptr inbounds [4256 x i8], [4256 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %12, i8* noundef nonnull %13, i8* noundef nonnull %14) #6
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4256 x i8], [4256 x i8]* %2, i64 0, i64 0
  %19 = getelementptr inbounds [4256 x i8], [4256 x i8]* %3, i64 0, i64 0
  %20 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %18, i8* noundef nonnull %19, i8* noundef nonnull %20, i8* noundef nonnull %21) #6
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 252, i32* @perrno, align 4
  br label %121

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %1
  %.01 = phi i32 [ %22, %25 ], [ %15, %1 ]
  %27 = call %struct.pattrib* (...) @atalloc() #6
  %28 = icmp eq i32 %.01, 4
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = getelementptr inbounds [4256 x i8], [4256 x i8]* %2, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %30, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 7)
  %31 = icmp eq i32 %bcmp3, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 0
  store i8 67, i8* %33, align 8
  br label %52

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4256 x i8], [4256 x i8]* %2, i64 0, i64 0
  %bcmp4 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %35, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 5)
  %36 = icmp eq i32 %bcmp4, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 0
  store i8 76, i8* %38, align 8
  br label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds [4256 x i8], [4256 x i8]* %2, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %40, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i64 12)
  %41 = icmp eq i32 %bcmp5, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 0
  store i8 82, i8* %43, align 8
  br label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds [4256 x i8], [4256 x i8]* %2, i64 0, i64 0
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) %45, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i64 11)
  %46 = icmp eq i32 %bcmp6, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 0
  store i8 65, i8* %48, align 8
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %26
  %54 = getelementptr inbounds [4256 x i8], [4256 x i8]* %3, i64 0, i64 0
  %55 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef nonnull %54) #6
  %56 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %58 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef nonnull %57) #6
  %59 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %60, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i64 6)
  %61 = icmp eq i32 %bcmp, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %64 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef nonnull %63) #6
  %65 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 3, i32 0
  store i8* %64, i8** %65, align 8
  br label %120

66:                                               ; preds = %53
  %67 = getelementptr inbounds [4256 x i8], [4256 x i8]* %4, i64 0, i64 0
  %bcmp2 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %67, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i64 5)
  %68 = icmp eq i32 %bcmp2, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %66
  %70 = call %struct.vlink* (...) @vlalloc() #6
  %71 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %27, i64 0, i32 3
  %72 = bitcast %union.avalue* %71 to %struct.vlink**
  store %struct.vlink* %70, %struct.vlink** %72, align 8
  %73 = getelementptr inbounds [4256 x i8], [4256 x i8]* %5, i64 0, i64 0
  %74 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 2
  %75 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %76 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %77 = getelementptr inbounds [4256 x i8], [4256 x i8]* %8, i64 0, i64 0
  %78 = getelementptr inbounds [4256 x i8], [4256 x i8]* %9, i64 0, i64 0
  %79 = getelementptr inbounds [4256 x i8], [4256 x i8]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %81 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 11
  %82 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 12
  %83 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %73, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %74, i8* noundef nonnull %75, i8* noundef nonnull %76, i8* noundef nonnull %77, i8* noundef nonnull %78, i8* noundef nonnull %79, i8* noundef nonnull %80, i64* noundef nonnull %81, i64* noundef nonnull %82) #6
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %85, label %117

85:                                               ; preds = %69
  %86 = getelementptr inbounds [4256 x i8], [4256 x i8]* %6, i64 0, i64 0
  %87 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %86, i8* noundef %88) #6
  %90 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 4
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds [4256 x i8], [4256 x i8]* %7, i64 0, i64 0
  %92 = call i8* @unquote(i8* noundef nonnull %91)
  %93 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef %92, i8* noundef %94) #6
  %96 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = getelementptr inbounds [4256 x i8], [4256 x i8]* %8, i64 0, i64 0
  %98 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 7
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %97, i8* noundef %99) #6
  %101 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 7
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds [4256 x i8], [4256 x i8]* %9, i64 0, i64 0
  %103 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %102, i8* noundef %104) #6
  %106 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 8
  store i8* %105, i8** %106, align 8
  %107 = getelementptr inbounds [4256 x i8], [4256 x i8]* %10, i64 0, i64 0
  %108 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 9
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %107, i8* noundef %109) #6
  %111 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 9
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds [4256 x i8], [4256 x i8]* %11, i64 0, i64 0
  %113 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 10
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %112, i8* noundef %114) #6
  %116 = getelementptr inbounds %struct.vlink, %struct.vlink* %70, i64 0, i32 10
  store i8* %115, i8** %116, align 8
  br label %118

117:                                              ; preds = %69
  store i32 252, i32* @perrno, align 4
  br label %121

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %66
  br label %120

120:                                              ; preds = %119, %62
  br label %121

121:                                              ; preds = %120, %117, %24
  %.0 = phi %struct.pattrib* [ null, %24 ], [ %27, %120 ], [ null, %117 ]
  ret %struct.pattrib* %.0
}

declare dso_local %struct.pattrib* @atalloc(...) #1

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i8* @stcopy(...) #1

declare dso_local %struct.vlink* @vlalloc(...) #1

declare dso_local i8* @stcopyr(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @nxtline(i8* noundef %0) #0 {
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 10) #6
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %.0 = phi i8* [ %4, %3 ], [ null, %5 ]
  ret i8* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @unquote(i8* noundef readonly %0) #4 {
  %2 = load i8, i8* %0, align 1
  %.not = icmp eq i8 %2, 39
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %21

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  br label %6

6:                                                ; preds = %19, %4
  %.02 = phi i8* [ getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i64 0, i64 0), %4 ], [ %.13, %19 ]
  %.01 = phi i8* [ %5, %4 ], [ %.2, %19 ]
  %7 = load i8, i8* %.01, align 1
  %.not4 = icmp eq i8 %7, 0
  br i1 %.not4, label %20, label %8

8:                                                ; preds = %6
  %9 = load i8, i8* %.01, align 1
  %10 = icmp eq i8 %9, 39
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %13

13:                                               ; preds = %11, %8
  %.1 = phi i8* [ %12, %11 ], [ %.01, %8 ]
  %14 = load i8, i8* %.1, align 1
  %.not5 = icmp eq i8 %14, 0
  br i1 %.not5, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %.1, i64 1
  %17 = load i8, i8* %.1, align 1
  %18 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %17, i8* %.02, align 1
  br label %19

19:                                               ; preds = %15, %13
  %.13 = phi i8* [ %18, %15 ], [ %.02, %13 ]
  %.2 = phi i8* [ %16, %15 ], [ %.1, %13 ]
  br label %6, !llvm.loop !12

20:                                               ; preds = %6
  store i8 0, i8* %.02, align 1
  br label %21

21:                                               ; preds = %20, %3
  %.0 = phi i8* [ %0, %3 ], [ getelementptr inbounds ([200 x i8], [200 x i8]* @unquote.unquoted, i64 0, i64 0), %20 ]
  ret i8* %.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
