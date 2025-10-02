; ModuleID = './aquery.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/aquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }
%struct.vdir = type { i32, i32, i64, %struct.acl*, %struct.pfile*, %struct.vlink*, %struct.vlink*, %struct.vlink*, %struct.vdir*, %struct.vdir* }

@.str = private unnamed_addr constant [26 x i8] c"ARCHIE/MATCH(%d,%d,%c)/%s\00", align 1
@perrno = external dso_local global i32, align 4
@p_err_string = external dso_local global [0 x i8], align 1
@pwarn = external dso_local global i32, align 4
@p_warn_string = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LAST-MODIFIED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCHIE/HOST\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"EXTERNAL(AFTP,DIRECTORY)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.vlink* @archie_query(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i32 (...)* noundef readonly %5, i32 noundef %6) #0 {
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.vdir, align 8
  %10 = icmp eq i32 (...)* %5, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %7
  %.06 = phi i32 (...)* [ bitcast (i32 (%struct.vlink*, %struct.vlink*)* @defcmplink to i32 (...)*), %11 ], [ %5, %7 ]
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %14 = sext i8 %4 to i32
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %14, i8* noundef %1) #4
  store i32 0, i32* @perrno, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_err_string, i64 0, i64 0), align 1
  store i32 0, i32* @pwarn, align 4
  store i8 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @p_warn_string, i64 0, i64 0), align 1
  %16 = bitcast %struct.vdir* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %18 = call i32 @get_vdir(i8* noundef %0, i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.vdir* noundef nonnull %9, i64 noundef 96, %struct.vlink* noundef null, i8* noundef null) #4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %20, label %19

19:                                               ; preds = %12
  store i32 %18, i32* @perrno, align 4
  br label %119

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.vdir, %struct.vdir* %9, i64 0, i32 5
  %22 = load %struct.vlink*, %struct.vlink** %21, align 8
  %23 = getelementptr inbounds %struct.vdir, %struct.vdir* %9, i64 0, i32 5
  store %struct.vlink* null, %struct.vlink** %23, align 8
  br label %24

24:                                               ; preds = %47, %20
  %.04 = phi %struct.vlink* [ %22, %20 ], [ %27, %47 ]
  %.not10 = icmp eq %struct.vlink* %.04, null
  br i1 %.not10, label %48, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 20
  %27 = load %struct.vlink*, %struct.vlink** %26, align 8
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 6
  %29 = load %struct.vlink*, %struct.vlink** %28, align 8
  %.not19 = icmp eq %struct.vlink* %29, null
  br i1 %.not19, label %46, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 6
  %32 = load %struct.vlink*, %struct.vlink** %31, align 8
  %33 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 20
  store %struct.vlink* %32, %struct.vlink** %33, align 8
  %34 = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i64 0, i32 19
  store %struct.vlink* %.04, %struct.vlink** %34, align 8
  %35 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 6
  br label %36

36:                                               ; preds = %40, %30
  %.02.in = phi %struct.vlink** [ %35, %30 ], [ %41, %40 ]
  %.02 = load %struct.vlink*, %struct.vlink** %.02.in, align 8
  %37 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  %38 = load %struct.vlink*, %struct.vlink** %37, align 8
  %.not20 = icmp eq %struct.vlink* %38, null
  br i1 %.not20, label %42, label %39

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  br label %36, !llvm.loop !4

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vlink, %struct.vlink* %.02, i64 0, i32 20
  store %struct.vlink* %27, %struct.vlink** %43, align 8
  %44 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i64 0, i32 19
  store %struct.vlink* %.02, %struct.vlink** %44, align 8
  %45 = getelementptr inbounds %struct.vlink, %struct.vlink* %.04, i64 0, i32 6
  store %struct.vlink* null, %struct.vlink** %45, align 8
  br label %46

46:                                               ; preds = %42, %25
  br label %47

47:                                               ; preds = %46
  br label %24, !llvm.loop !6

48:                                               ; preds = %24
  %49 = and i32 %6, 2
  %.not11 = icmp eq i32 %49, 0
  br i1 %.not11, label %50, label %57

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %53, %50
  %.15 = phi %struct.vlink* [ %22, %50 ], [ %55, %53 ]
  %.not12 = icmp eq %struct.vlink* %.15, null
  br i1 %.not12, label %56, label %52

52:                                               ; preds = %51
  call void @translateArchieResponse(%struct.vlink* noundef nonnull %.15)
  br label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.vlink, %struct.vlink* %.15, i64 0, i32 20
  %55 = load %struct.vlink*, %struct.vlink** %54, align 8
  br label %51, !llvm.loop !7

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %48
  %58 = and i32 %6, 1
  %.not13 = icmp eq i32 %58, 0
  br i1 %.not13, label %60, label %59

59:                                               ; preds = %57
  store i32 0, i32* @perrno, align 4
  br label %119

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %117, %60
  %.07 = phi %struct.vlink* [ %22, %60 ], [ %.29, %117 ]
  %.2 = phi %struct.vlink* [ %22, %60 ], [ %64, %117 ]
  %.not14 = icmp eq %struct.vlink* %.2, null
  br i1 %.not14, label %118, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 20
  %64 = load %struct.vlink*, %struct.vlink** %63, align 8
  br label %65

65:                                               ; preds = %72, %62
  %.03 = phi %struct.vlink* [ %64, %62 ], [ %74, %72 ]
  %.01 = phi %struct.vlink* [ %.2, %62 ], [ %.1, %72 ]
  %.not15 = icmp eq %struct.vlink* %.03, null
  br i1 %.not15, label %75, label %66

66:                                               ; preds = %65
  %67 = bitcast i32 (...)* %.06 to i32 (%struct.vlink*, %struct.vlink*, ...)*
  %68 = call i32 (%struct.vlink*, %struct.vlink*, ...) %67(%struct.vlink* noundef nonnull %.03, %struct.vlink* noundef %.01) #4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  %.1 = phi %struct.vlink* [ %.03, %70 ], [ %.01, %66 ]
  br label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %.03, i64 0, i32 20
  %74 = load %struct.vlink*, %struct.vlink** %73, align 8
  br label %65, !llvm.loop !8

75:                                               ; preds = %65
  %.not16 = icmp eq %struct.vlink* %.2, %.01
  br i1 %.not16, label %116, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 20
  %78 = load %struct.vlink*, %struct.vlink** %77, align 8
  %79 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 19
  %80 = load %struct.vlink*, %struct.vlink** %79, align 8
  %81 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %82 = load %struct.vlink*, %struct.vlink** %81, align 8
  %.not17 = icmp eq %struct.vlink* %82, null
  br i1 %.not17, label %87, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %85 = load %struct.vlink*, %struct.vlink** %84, align 8
  %86 = getelementptr inbounds %struct.vlink, %struct.vlink* %85, i64 0, i32 19
  store %struct.vlink* %.2, %struct.vlink** %86, align 8
  br label %87

87:                                               ; preds = %83, %76
  %88 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  %89 = load %struct.vlink*, %struct.vlink** %88, align 8
  %90 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 20
  store %struct.vlink* %89, %struct.vlink** %90, align 8
  %91 = icmp eq %struct.vlink* %64, %.01
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 19
  store %struct.vlink* %.01, %struct.vlink** %93, align 8
  br label %101

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 19
  %96 = load %struct.vlink*, %struct.vlink** %95, align 8
  %97 = getelementptr inbounds %struct.vlink, %struct.vlink* %96, i64 0, i32 20
  store %struct.vlink* %.2, %struct.vlink** %97, align 8
  %98 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 19
  %99 = load %struct.vlink*, %struct.vlink** %98, align 8
  %100 = getelementptr inbounds %struct.vlink, %struct.vlink* %.2, i64 0, i32 19
  store %struct.vlink* %99, %struct.vlink** %100, align 8
  br label %101

101:                                              ; preds = %94, %92
  %102 = icmp eq %struct.vlink* %64, %.01
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  store %struct.vlink* %.2, %struct.vlink** %104, align 8
  br label %108

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.vlink, %struct.vlink* %78, i64 0, i32 19
  store %struct.vlink* %.01, %struct.vlink** %106, align 8
  %107 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 20
  store %struct.vlink* %78, %struct.vlink** %107, align 8
  br label %108

108:                                              ; preds = %105, %103
  %.not18 = icmp eq %struct.vlink* %80, null
  br i1 %.not18, label %111, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.vlink, %struct.vlink* %80, i64 0, i32 20
  store %struct.vlink* %.01, %struct.vlink** %110, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 19
  store %struct.vlink* %80, %struct.vlink** %112, align 8
  %113 = icmp eq %struct.vlink* %.07, %.2
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %111
  %.18 = phi %struct.vlink* [ %.01, %114 ], [ %.07, %111 ]
  br label %116

116:                                              ; preds = %115, %75
  %.29 = phi %struct.vlink* [ %.18, %115 ], [ %.07, %75 ]
  br label %117

117:                                              ; preds = %116
  br label %61, !llvm.loop !9

118:                                              ; preds = %61
  store i32 0, i32* @perrno, align 4
  br label %119

119:                                              ; preds = %118, %59, %19
  %.0 = phi %struct.vlink* [ null, %19 ], [ %22, %59 ], [ %.07, %118 ]
  ret %struct.vlink* %.0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @get_vdir(i8* noundef, i8* noundef, i8* noundef, %struct.vdir* noundef, i64 noundef, %struct.vlink* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @defcmplink(%struct.vlink* nocapture noundef readonly %0, %struct.vlink* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %6) #4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 10
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(1) %13) #4
  br label %15

15:                                               ; preds = %9, %8
  %.0 = phi i32 [ %7, %8 ], [ %14, %9 ]
  ret i32 %.0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @invdatecmplink(%struct.vlink* nocapture noundef readonly %0, %struct.vlink* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  br label %4

4:                                                ; preds = %14, %2
  %.04.in = phi %struct.pattrib** [ %3, %2 ], [ %15, %14 ]
  %.02 = phi i8* [ null, %2 ], [ %.13, %14 ]
  %.04 = load %struct.pattrib*, %struct.pattrib** %.04.in, align 8
  %.not = icmp eq %struct.pattrib* %.04, null
  br i1 %.not, label %16, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %7, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 3, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %13

13:                                               ; preds = %10, %5
  %.13 = phi i8* [ %12, %10 ], [ %.02, %5 ]
  br label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.04, i64 0, i32 5
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %1, i64 0, i32 17
  br label %18

18:                                               ; preds = %28, %16
  %.05.in = phi %struct.pattrib** [ %17, %16 ], [ %29, %28 ]
  %.01 = phi i8* [ null, %16 ], [ %.1, %28 ]
  %.05 = load %struct.pattrib*, %struct.pattrib** %.05.in, align 8
  %.not6 = icmp eq %struct.pattrib* %.05, null
  br i1 %.not6, label %30, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.05, i64 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %21, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.05, i64 0, i32 3, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %24, %19
  %.1 = phi i8* [ %26, %24 ], [ %.01, %19 ]
  br label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.05, i64 0, i32 5
  br label %18, !llvm.loop !11

30:                                               ; preds = %18
  %.not7 = icmp eq i8* %.02, null
  br i1 %.not7, label %31, label %34

31:                                               ; preds = %30
  %.not8 = icmp eq i8* %.01, null
  br i1 %.not8, label %32, label %34

32:                                               ; preds = %31
  %33 = call i32 @defcmplink(%struct.vlink* noundef %0, %struct.vlink* noundef %1)
  br label %44

34:                                               ; preds = %31, %30
  %.not9 = icmp eq i8* %.02, null
  br i1 %.not9, label %35, label %36

35:                                               ; preds = %34
  br label %44

36:                                               ; preds = %34
  %.not10 = icmp eq i8* %.01, null
  br i1 %.not10, label %37, label %38

37:                                               ; preds = %36
  br label %44

38:                                               ; preds = %36
  %39 = call i32 @strcmp(i8* noundef nonnull %.01, i8* noundef nonnull %.02) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @defcmplink(%struct.vlink* noundef %0, %struct.vlink* noundef %1)
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41, %37, %35, %32
  %.0 = phi i32 [ %42, %41 ], [ %39, %43 ], [ -1, %37 ], [ 1, %35 ], [ %33, %32 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @translateArchieResponse(%struct.vlink* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 noundef 11) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %13) #4
  %15 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 12
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %18, i8* noundef %20) #4
  %22 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  store i8* %21, i8** %22, align 8
  %23 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %21, i32 noundef 47) #4
  %.not = icmp eq i8* %23, null
  br i1 %.not, label %29, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef nonnull %23, i8* noundef %26) #4
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  store i8* %27, i8** %28, align 8
  store i8 0, i8* %23, align 1
  br label %34

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* (i8*, i8*, ...) bitcast (i8* (...)* @stcopyr to i8* (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* noundef %31) #4
  %33 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %6
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i8* @stcopyr(...) #3

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
