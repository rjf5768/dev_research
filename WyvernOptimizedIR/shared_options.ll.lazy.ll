; ModuleID = './shared_options.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }
%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"!opt_parse: calloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"!Unknown option passed.\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"!opt_check: opt == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"!opt_arg: opt == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"!opt_firstarg: opt == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"!opt_nextarg: *optnode == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"!register_option: No long option for -%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"WARNING: Ignoring option --%s (-%c)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"WARNING: Ignoring option --%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"!register_long_option: malloc failed\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"ERROR: register_long_option: malloc failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @opt_free(%struct.optstruct* noundef %0) #0 {
  %.not = icmp eq %struct.optstruct* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %31

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 0
  %5 = load %struct.optnode*, %struct.optnode** %4, align 8
  br label %6

6:                                                ; preds = %19, %3
  %.0 = phi %struct.optnode* [ %5, %3 ], [ %21, %19 ]
  %.not1 = icmp eq %struct.optnode* %.0, null
  br i1 %.not1, label %23, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.optnode, %struct.optnode* %.0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %.not3 = icmp eq i8* %9, null
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.optnode, %struct.optnode* %.0, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %12) #6
  br label %13

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.optnode, %struct.optnode* %.0, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %.not4 = icmp eq i8* %15, null
  br i1 %.not4, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.optnode, %struct.optnode* %.0, i64 0, i32 1
  %18 = load i8*, i8** %17, align 8
  call void @free(i8* noundef %18) #6
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.optnode, %struct.optnode* %.0, i64 0, i32 3
  %21 = load %struct.optnode*, %struct.optnode** %20, align 8
  %22 = getelementptr %struct.optnode, %struct.optnode* %.0, i64 0, i32 0
  call void @free(i8* noundef %22) #6
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %.not2 = icmp eq i8* %25, null
  br i1 %.not2, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 1
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #6
  br label %29

29:                                               ; preds = %26, %23
  %30 = bitcast %struct.optstruct* %0 to i8*
  call void @free(i8* noundef %30) #6
  br label %31

31:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.optstruct* @opt_parse(i32 noundef %0, i8** noundef %1, i8* noundef %2, %struct.option* noundef %3, i8** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = call noalias dereferenceable_or_null(16) i8* @calloc(i64 noundef 1, i64 noundef 16) #6
  %8 = bitcast i8* %7 to %struct.optstruct*
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %9, label %10

9:                                                ; preds = %5
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #6
  br label %95

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %43, %10
  store i32 0, i32* %6, align 4
  %12 = call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %2, %struct.option* noundef %3, i32* noundef nonnull %6) #6
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %44

15:                                               ; preds = %11
  switch i32 %12, label %25 [
    i32 0, label %16
  ]

16:                                               ; preds = %15
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %18, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @register_option(%struct.optstruct* noundef nonnull %8, i8* noundef %20, i8 noundef signext 0, %struct.option* noundef %3, i8** noundef %4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @opt_free(%struct.optstruct* noundef nonnull %8)
  br label %95

24:                                               ; preds = %16
  br label %43

25:                                               ; preds = %15
  %26 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef %12) #7
  %.not4 = icmp eq i8* %26, null
  br i1 %.not4, label %41, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %.not5 = icmp eq i32 %28, 0
  br i1 %.not5, label %34, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %31, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %29
  %.01 = phi i8* [ %33, %29 ], [ null, %34 ]
  %36 = trunc i32 %12 to i8
  %37 = call i32 @register_option(%struct.optstruct* noundef nonnull %8, i8* noundef %.01, i8 noundef signext %36, %struct.option* noundef %3, i8** noundef %4)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @opt_free(%struct.optstruct* noundef nonnull %8)
  br label %95

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %25
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #6
  call void @opt_free(%struct.optstruct* noundef nonnull %8)
  br label %95

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %24
  br label %11

44:                                               ; preds = %14
  %45 = load i32, i32* @optind, align 4
  %46 = icmp slt i32 %45, %0
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load i32, i32* @optind, align 4
  br label %49

49:                                               ; preds = %52, %47
  %.03 = phi i32 [ %48, %47 ], [ %59, %52 ]
  %.02 = phi i32 [ 0, %47 ], [ %58, %52 ]
  %50 = icmp slt i32 %.03, %0
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = sext i32 %.03 to i64
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %55) #7
  %57 = trunc i64 %56 to i32
  %58 = add i32 %.02, %57
  %59 = add nsw i32 %.03, 1
  br label %49, !llvm.loop !6

60:                                               ; preds = %49
  %61 = load i32, i32* @optind, align 4
  %62 = xor i32 %61, -1
  %63 = add i32 %62, %0
  %64 = add nsw i32 %.02, %63
  %65 = add nsw i32 %64, 64
  %66 = sext i32 %65 to i64
  %67 = call noalias i8* @calloc(i64 noundef %66, i64 noundef 1) #6
  %68 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %8, i64 0, i32 1
  store i8* %67, i8** %68, align 8
  %.not6 = icmp eq i8* %67, null
  br i1 %.not6, label %69, label %70

69:                                               ; preds = %60
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #6
  call void @opt_free(%struct.optstruct* noundef nonnull %8)
  br label %95

70:                                               ; preds = %60
  %71 = load i32, i32* @optind, align 4
  br label %72

72:                                               ; preds = %91, %70
  %.1 = phi i32 [ %71, %70 ], [ %92, %91 ]
  %73 = icmp slt i32 %.1, %0
  br i1 %73, label %74, label %93

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %8, i64 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = sext i32 %.1 to i64
  %78 = getelementptr inbounds i8*, i8** %1, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = sext i32 %.1 to i64
  %81 = getelementptr inbounds i8*, i8** %1, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %82) #7
  %84 = call i8* @strncat(i8* noundef nonnull dereferenceable(1) %76, i8* noundef %79, i64 noundef %83) #6
  %85 = add nsw i32 %0, -1
  %.not7 = icmp eq i32 %.1, %85
  br i1 %.not7, label %90, label %86

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %8, i64 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %88)
  %endptr = getelementptr i8, i8* %88, i64 %strlen
  %89 = bitcast i8* %endptr to i16*
  store i16 9, i16* %89, align 1
  br label %90

90:                                               ; preds = %86, %74
  br label %91

91:                                               ; preds = %90
  %92 = add nsw i32 %.1, 1
  br label %72, !llvm.loop !7

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93, %44
  br label %95

95:                                               ; preds = %94, %69, %41, %39, %23, %9
  %.0 = phi %struct.optstruct* [ %8, %94 ], [ null, %69 ], [ null, %39 ], [ null, %41 ], [ null, %23 ], [ null, %9 ]
  ret %struct.optstruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @mprintf(i8* noundef, ...) #2

declare dso_local i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @register_option(%struct.optstruct* nocapture noundef %0, i8* noundef %1, i8 noundef signext %2, %struct.option* nocapture noundef readonly %3, i8** noundef readonly %4) #0 {
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %25, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %22, %6
  %.04 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %8 = zext i32 %.04 to i64
  %9 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %8, i32 0
  %10 = load i8*, i8** %9, align 8
  %.not17 = icmp eq i8* %10, null
  br i1 %.not17, label %.loopexit, label %11

11:                                               ; preds = %7
  %12 = zext i32 %.04 to i64
  %13 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %12, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = sext i8 %2 to i32
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %18, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %24

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.04, 1
  br label %7, !llvm.loop !8

.loopexit:                                        ; preds = %7
  br label %24

24:                                               ; preds = %.loopexit, %17
  %.01 = phi i8* [ %20, %17 ], [ null, %.loopexit ]
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %24
  %.1 = phi i8* [ %.01, %24 ], [ %1, %25 ]
  %.not7 = icmp eq i8* %.1, null
  br i1 %.not7, label %27, label %29

27:                                               ; preds = %26
  %28 = sext i8 %2 to i32
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28) #6
  br label %90

29:                                               ; preds = %26
  %.not8 = icmp eq i8** %4, null
  br i1 %.not8, label %51, label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %42, %30
  %.15 = phi i32 [ 0, %30 ], [ %43, %42 ]
  %.02 = phi i32 [ 0, %30 ], [ %.13, %42 ]
  %32 = zext i32 %.15 to i64
  %33 = getelementptr inbounds i8*, i8** %4, i64 %32
  %34 = load i8*, i8** %33, align 8
  %.not13 = icmp eq i8* %34, null
  br i1 %.not13, label %44, label %35

35:                                               ; preds = %31
  %36 = zext i32 %.15 to i64
  %37 = getelementptr inbounds i8*, i8** %4, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull %.1) #7
  %.not16 = icmp eq i32 %39, 0
  br i1 %.not16, label %40, label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %35
  %.13 = phi i32 [ %.02, %35 ], [ 1, %40 ]
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.15, 1
  br label %31, !llvm.loop !9

44:                                               ; preds = %31
  %.not14 = icmp eq i32 %.02, 0
  br i1 %.not14, label %45, label %50

45:                                               ; preds = %44
  %.not15 = icmp eq i8 %2, 0
  br i1 %.not15, label %48, label %46

46:                                               ; preds = %45
  %47 = sext i8 %2 to i32
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %.1, i32 noundef %47) #6
  br label %49

48:                                               ; preds = %45
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %.1) #6
  br label %49

49:                                               ; preds = %48, %46
  br label %90

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %29
  %52 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #6
  %53 = bitcast i8* %52 to %struct.optnode*
  %.not9 = icmp eq i8* %52, null
  br i1 %.not9, label %54, label %55

54:                                               ; preds = %51
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #6
  br label %90

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 0
  store i8 %2, i8* %56, align 8
  %57 = load i8*, i8** @optarg, align 8
  %.not10 = icmp eq i8* %57, null
  br i1 %.not10, label %71, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %59) #7
  %61 = add i64 %60, 1
  %62 = call noalias i8* @malloc(i64 noundef %61) #6
  %63 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 2
  store i8* %62, i8** %63, align 8
  %.not12 = icmp eq i8* %62, null
  br i1 %.not12, label %64, label %66

64:                                               ; preds = %58
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #6
  %65 = getelementptr %struct.optnode, %struct.optnode* %53, i64 0, i32 0
  call void @free(i8* noundef %65) #6
  br label %90

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %68, i8* noundef nonnull dereferenceable(1) %69) #6
  br label %73

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 2
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %71, %66
  %74 = call i64 @strlen(i8* noundef nonnull %.1) #7
  %75 = add i64 %74, 1
  %76 = call noalias i8* @malloc(i64 noundef %75) #6
  %77 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 1
  store i8* %76, i8** %77, align 8
  %.not11 = icmp eq i8* %76, null
  br i1 %.not11, label %78, label %82

78:                                               ; preds = %73
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0)) #6
  %79 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 2
  %80 = load i8*, i8** %79, align 8
  call void @free(i8* noundef %80) #6
  %81 = getelementptr %struct.optnode, %struct.optnode* %53, i64 0, i32 0
  call void @free(i8* noundef %81) #6
  br label %90

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %84, i8* noundef nonnull %.1) #6
  %86 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 0
  %87 = load %struct.optnode*, %struct.optnode** %86, align 8
  %88 = getelementptr inbounds %struct.optnode, %struct.optnode* %53, i64 0, i32 3
  store %struct.optnode* %87, %struct.optnode** %88, align 8
  %89 = bitcast %struct.optstruct* %0 to i8**
  store i8* %52, i8** %89, align 8
  br label %90

90:                                               ; preds = %82, %78, %64, %54, %49, %27
  %.0 = phi i32 [ 0, %82 ], [ -1, %78 ], [ -1, %64 ], [ -1, %54 ], [ 0, %49 ], [ -1, %27 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt_check(%struct.optstruct* noundef readonly %0, i8* noundef readonly %1) #0 {
  %.not = icmp eq %struct.optstruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 0
  br label %6

6:                                                ; preds = %15, %4
  %.01.in = phi %struct.optnode** [ %5, %4 ], [ %16, %15 ]
  %.01 = load %struct.optnode*, %struct.optnode** %.01.in, align 8
  %.not2 = icmp eq %struct.optnode* %.01, null
  br i1 %.not2, label %17, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %.not3 = icmp eq i8* %9, null
  br i1 %.not3, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull dereferenceable(1) %1) #7
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %14, label %15

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10, %7
  %16 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 3
  br label %6, !llvm.loop !10

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %14, %3
  %.0 = phi i32 [ 1, %14 ], [ 0, %17 ], [ 0, %3 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_arg(%struct.optstruct* noundef readonly %0, i8* noundef readonly %1) #0 {
  %.not = icmp eq %struct.optstruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %20

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 0
  br label %6

6:                                                ; preds = %17, %4
  %.01.in = phi %struct.optnode** [ %5, %4 ], [ %18, %17 ]
  %.01 = load %struct.optnode*, %struct.optnode** %.01.in, align 8
  %.not3 = icmp eq %struct.optnode* %.01, null
  br i1 %.not3, label %19, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %.not4 = icmp eq i8* %9, null
  br i1 %.not4, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull dereferenceable(1) %1) #7
  %.not5 = icmp eq i32 %13, 0
  br i1 %.not5, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  br label %20

17:                                               ; preds = %10, %7
  %18 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 3
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19, %14, %3
  %.0 = phi i8* [ %16, %14 ], [ null, %19 ], [ null, %3 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_firstarg(%struct.optstruct* noundef readonly %0, i8* noundef readonly %1, %struct.optnode** nocapture noundef writeonly %2) #0 {
  %.not = icmp eq %struct.optstruct* %0, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #6
  br label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %0, i64 0, i32 0
  br label %7

7:                                                ; preds = %18, %5
  %.01.in = phi %struct.optnode** [ %6, %5 ], [ %19, %18 ]
  %.01 = load %struct.optnode*, %struct.optnode** %.01.in, align 8
  %.not3 = icmp eq %struct.optnode* %.01, null
  br i1 %.not3, label %20, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %.not4 = icmp eq i8* %10, null
  br i1 %.not4, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull dereferenceable(1) %1) #7
  %.not5 = icmp eq i32 %14, 0
  br i1 %.not5, label %15, label %18

15:                                               ; preds = %11
  store %struct.optnode* %.01, %struct.optnode** %2, align 8
  %16 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  br label %21

18:                                               ; preds = %11, %8
  %19 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 3
  br label %7, !llvm.loop !12

20:                                               ; preds = %7
  store %struct.optnode* null, %struct.optnode** %2, align 8
  br label %21

21:                                               ; preds = %20, %15, %4
  %.0 = phi i8* [ %17, %15 ], [ null, %20 ], [ null, %4 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_nextarg(%struct.optnode** noundef %0, i8* noundef readonly %1) #0 {
  %.not = icmp eq %struct.optnode** %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %4 = load %struct.optnode*, %struct.optnode** %0, align 8
  %.not3 = icmp eq %struct.optnode* %4, null
  br i1 %.not3, label %5, label %6

5:                                                ; preds = %3, %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %21

6:                                                ; preds = %3
  %7 = load %struct.optnode*, %struct.optnode** %0, align 8
  br label %8

8:                                                ; preds = %19, %6
  %.pn = phi %struct.optnode* [ %7, %6 ], [ %.01, %19 ]
  %.01.in = getelementptr inbounds %struct.optnode, %struct.optnode* %.pn, i64 0, i32 3
  %.01 = load %struct.optnode*, %struct.optnode** %.01.in, align 8
  %.not4 = icmp eq %struct.optnode* %.01, null
  br i1 %.not4, label %20, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %.not5 = icmp eq i8* %11, null
  br i1 %.not5, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %1) #7
  %.not6 = icmp eq i32 %15, 0
  br i1 %.not6, label %16, label %19

16:                                               ; preds = %12
  store %struct.optnode* %.01, %struct.optnode** %0, align 8
  %17 = getelementptr inbounds %struct.optnode, %struct.optnode* %.01, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  br label %21

19:                                               ; preds = %12, %9
  br label %8, !llvm.loop !13

20:                                               ; preds = %8
  store %struct.optnode* null, %struct.optnode** %0, align 8
  br label %21

21:                                               ; preds = %20, %16, %5
  %.0 = phi i8* [ %18, %16 ], [ null, %20 ], [ null, %5 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
