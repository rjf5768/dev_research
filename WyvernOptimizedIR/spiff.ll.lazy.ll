; ModuleID = './spiff.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/spiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct.edt = type { %struct.edt*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@_K_btm = external dso_local global i32, align 4
@_K_atm = external dso_local global i32, align 4
@_L_brlm = external dso_local global i32, align 4
@_L_arlm = external dso_local global i32, align 4
@_Y_flags = internal global i32 0, align 4
@_Y_vflag = internal global i32 0, align 4
@_Y_eflag = internal global i32 0, align 4
@_T_gtol = external dso_local global %struct._T_tstr*, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \\ \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"literal  '    '    \\\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  call void @_Y_doargs(i32 noundef %0, i8** noundef %1, i8** noundef nonnull %5, i8** noundef nonnull %6, i32* noundef nonnull %4)
  call void (...) @T_initdefault() #3
  br label %7

7:                                                ; preds = %22, %2
  %.01 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %8 = icmp ult i32 %.01, 2
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @L_init_file(i32 noundef %.01, i8* noundef %12) #3
  %.not6 = icmp eq i32 %.01, 0
  br i1 %.not6, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* @_K_btm, align 4
  br label %16

15:                                               ; preds = %9
  store i32 0, i32* @_K_atm, align 4
  br label %16

16:                                               ; preds = %15, %14
  %.not7 = icmp eq i32 %.01, 0
  br i1 %.not7, label %18, label %17

17:                                               ; preds = %16
  br label %19

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18, %17
  %.in = phi i32* [ @_L_brlm, %17 ], [ @_L_arlm, %18 ]
  %20 = load i32, i32* %.in, align 4
  %21 = load i32, i32* @_Y_flags, align 4
  call void (i32, i32, i32, i32, ...) bitcast (void (...)* @P_file_parse to void (i32, i32, i32, i32, ...)*)(i32 noundef %.01, i32 noundef 0, i32 noundef %20, i32 noundef %21) #3
  br label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !4

24:                                               ; preds = %7
  %25 = load i32, i32* @_Y_vflag, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %29, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* @_Y_flags, align 4
  %28 = call i32 @V_visual(i32 noundef %27) #3
  br label %60

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @_K_atm, align 4
  %34 = load i32, i32* @_K_btm, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %54, %36
  %.02 = phi %struct.edt* [ undef, %36 ], [ %.13, %54 ]
  %.1 = phi i32 [ 0, %36 ], [ %55, %54 ]
  %38 = icmp ult i32 %.1, 30001
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = load i32, i32* @_Y_eflag, align 4
  %.not5 = icmp eq i32 %40, 0
  br i1 %.not5, label %47, label %41

41:                                               ; preds = %39
  %42 = load i32, i32* @_K_atm, align 4
  %43 = load i32, i32* @_K_btm, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @_Y_flags, align 4
  %46 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @Q_do_exact to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45) #3
  br label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @_K_atm, align 4
  %49 = load i32, i32* @_K_btm, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @_Y_flags, align 4
  %52 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @G_do_miller to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51) #3
  br label %53

53:                                               ; preds = %47, %41
  %.13 = phi %struct.edt* [ %46, %41 ], [ %52, %47 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.1, 1
  br label %37, !llvm.loop !6

56:                                               ; preds = %37
  %.not4 = icmp eq %struct.edt* %.02, null
  br i1 %.not4, label %59, label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @_Y_flags, align 4
  call void (%struct.edt*, i32, ...) bitcast (void (...)* @O_output to void (%struct.edt*, i32, ...)*)(%struct.edt* noundef nonnull %.02, i32 noundef %58) #3
  br label %60

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %57, %26
  %.0 = phi i32 [ %28, %26 ], [ 1, %57 ], [ 0, %59 ]
  ret i32 %.0
}

declare dso_local void @T_initdefault(...) #1

declare dso_local i32 @L_init_file(i32 noundef, i8* noundef) #1

declare dso_local void @P_file_parse(...) #1

declare dso_local i32 @V_visual(i32 noundef) #1

declare dso_local %struct.edt* @Q_do_exact(...) #1

declare dso_local %struct.edt* @G_do_miller(...) #1

declare dso_local void @O_output(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_doargs(i32 noundef %0, i8** noundef readonly %1, i8** nocapture noundef writeonly %2, i8** nocapture noundef writeonly %3, i32* nocapture noundef writeonly %4) #0 {
  %6 = alloca [1024 x i8], align 16
  store i32 -1, i32* %4, align 4
  br label %7

7:                                                ; preds = %126, %5
  %.01 = phi i8** [ %1, %5 ], [ %127, %126 ]
  %.0 = phi i32 [ %0, %5 ], [ %128, %126 ]
  %8 = icmp sgt i32 %.0, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8*, i8** %.01, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 45
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i1 [ false, %7 ], [ %13, %9 ]
  br i1 %15, label %16, label %129

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8*, i8** %.01, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %125 [
    i32 116, label %22
    i32 119, label %25
    i32 98, label %28
    i32 99, label %31
    i32 100, label %34
    i32 109, label %37
    i32 97, label %40
    i32 114, label %55
    i32 105, label %70
    i32 101, label %71
    i32 118, label %72
    i32 113, label %73
    i32 115, label %74
    i32 102, label %89
    i32 67, label %115
    i32 83, label %116
    i32 70, label %117
    i32 76, label %118
    i32 77, label %119
    i32 48, label %120
    i32 49, label %120
    i32 50, label %120
    i32 51, label %120
    i32 52, label %120
    i32 53, label %120
    i32 54, label %120
    i32 55, label %120
    i32 56, label %120
    i32 57, label %120
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @_Y_flags, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* @_Y_flags, align 4
  br label %126

25:                                               ; preds = %16
  %26 = load i32, i32* @_Y_flags, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* @_Y_flags, align 4
  br label %126

28:                                               ; preds = %16
  %29 = load i32, i32* @_Y_flags, align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* @_Y_flags, align 4
  br label %126

31:                                               ; preds = %16
  %32 = load i32, i32* @_Y_flags, align 4
  %33 = or i32 %32, 4
  store i32 %33, i32* @_Y_flags, align 4
  br label %126

34:                                               ; preds = %16
  %35 = load i32, i32* @_Y_flags, align 4
  %36 = or i32 %35, 32
  store i32 %36, i32* @_Y_flags, align 4
  br label %126

37:                                               ; preds = %16
  %38 = load i32, i32* @_Y_flags, align 4
  %39 = or i32 %38, 16
  store i32 %39, i32* @_Y_flags, align 4
  br label %126

40:                                               ; preds = %16
  %41 = getelementptr inbounds i8*, i8** %.01, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #4
  %44 = icmp eq i64 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8*, i8** %.01, i64 1
  %47 = add nsw i32 %.0, -1
  %48 = getelementptr inbounds i8*, i8** %.01, i64 2
  %49 = load i8*, i8** %48, align 8
  br label %54

50:                                               ; preds = %40
  %51 = getelementptr inbounds i8*, i8** %.01, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  br label %54

54:                                               ; preds = %50, %45
  %.07 = phi i8* [ %49, %45 ], [ %53, %50 ]
  %.12 = phi i8** [ %46, %45 ], [ %.01, %50 ]
  %.1 = phi i32 [ %47, %45 ], [ %.0, %50 ]
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef nonnull @_T_gtol, i32 noundef 0, i8* noundef %.07) #3
  br label %126

55:                                               ; preds = %16
  %56 = getelementptr inbounds i8*, i8** %.01, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #4
  %59 = icmp eq i64 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8*, i8** %.01, i64 1
  %62 = add nsw i32 %.0, -1
  %63 = getelementptr inbounds i8*, i8** %.01, i64 2
  %64 = load i8*, i8** %63, align 8
  br label %69

65:                                               ; preds = %55
  %66 = getelementptr inbounds i8*, i8** %.01, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  br label %69

69:                                               ; preds = %65, %60
  %.18 = phi i8* [ %64, %60 ], [ %68, %65 ]
  %.23 = phi i8** [ %61, %60 ], [ %.01, %65 ]
  %.2 = phi i32 [ %62, %60 ], [ %.0, %65 ]
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef nonnull @_T_gtol, i32 noundef 1, i8* noundef %.18) #3
  br label %126

70:                                               ; preds = %16
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef nonnull @_T_gtol, i32 noundef 2, i8* noundef null) #3
  br label %126

71:                                               ; preds = %16
  store i32 1, i32* @_Y_eflag, align 4
  br label %126

72:                                               ; preds = %16
  store i32 1, i32* @_Y_vflag, align 4
  br label %126

73:                                               ; preds = %16
  call void (...) @Z_setquiet() #3
  br label %126

74:                                               ; preds = %16
  %75 = getelementptr inbounds i8*, i8** %.01, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %76) #4
  %78 = icmp eq i64 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8*, i8** %.01, i64 1
  %81 = add nsw i32 %.0, -1
  %82 = getelementptr inbounds i8*, i8** %.01, i64 2
  %83 = load i8*, i8** %82, align 8
  br label %88

84:                                               ; preds = %74
  %85 = getelementptr inbounds i8*, i8** %.01, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  br label %88

88:                                               ; preds = %84, %79
  %.29 = phi i8* [ %83, %79 ], [ %87, %84 ]
  %.34 = phi i8** [ %80, %79 ], [ %.01, %84 ]
  %.3 = phi i32 [ %81, %79 ], [ %.0, %84 ]
  call void @_Y_cmdlines(i8* noundef %.29)
  br label %126

89:                                               ; preds = %16
  %90 = getelementptr inbounds i8*, i8** %.01, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %91) #4
  %93 = icmp eq i64 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8*, i8** %.01, i64 1
  %96 = add nsw i32 %.0, -1
  %97 = getelementptr inbounds i8*, i8** %.01, i64 2
  %98 = load i8*, i8** %97, align 8
  br label %103

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8*, i8** %.01, i64 1
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  br label %103

103:                                              ; preds = %99, %94
  %.310 = phi i8* [ %98, %94 ], [ %102, %99 ]
  %.45 = phi i8** [ %95, %94 ], [ %.01, %99 ]
  %.4 = phi i32 [ %96, %94 ], [ %.0, %99 ]
  %104 = call noalias %struct._IO_FILE* @fopen(i8* noundef %.310, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #3
  %105 = icmp eq %struct._IO_FILE* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %111, %107
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %110 = call i8* @fgets(i8* noundef nonnull %109, i32 noundef 1024, %struct._IO_FILE* noundef %104) #3
  %.not11 = icmp eq i8* %110, null
  br i1 %.not11, label %113, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef nonnull %112) #3
  br label %108, !llvm.loop !7

113:                                              ; preds = %108
  %114 = call i32 @fclose(%struct._IO_FILE* noundef %104) #3
  br label %126

115:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #3
  br label %126

116:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %126

117:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %126

118:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %126

119:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0)) #3
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #3
  br label %126

120:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %121 = getelementptr inbounds i8*, i8** %.01, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @atoi(i8* noundef nonnull %123) #4
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %16
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)) #3
  br label %126

126:                                              ; preds = %125, %120, %119, %118, %117, %116, %115, %113, %88, %73, %72, %71, %70, %69, %54, %37, %34, %31, %28, %25, %22
  %.56 = phi i8** [ %.01, %125 ], [ %.01, %120 ], [ %.01, %119 ], [ %.01, %118 ], [ %.01, %117 ], [ %.01, %116 ], [ %.01, %115 ], [ %.45, %113 ], [ %.34, %88 ], [ %.01, %73 ], [ %.01, %72 ], [ %.01, %71 ], [ %.01, %70 ], [ %.23, %69 ], [ %.12, %54 ], [ %.01, %37 ], [ %.01, %34 ], [ %.01, %31 ], [ %.01, %28 ], [ %.01, %25 ], [ %.01, %22 ]
  %.5 = phi i32 [ %.0, %125 ], [ %.0, %120 ], [ %.0, %119 ], [ %.0, %118 ], [ %.0, %117 ], [ %.0, %116 ], [ %.0, %115 ], [ %.4, %113 ], [ %.3, %88 ], [ %.0, %73 ], [ %.0, %72 ], [ %.0, %71 ], [ %.0, %70 ], [ %.2, %69 ], [ %.1, %54 ], [ %.0, %37 ], [ %.0, %34 ], [ %.0, %31 ], [ %.0, %28 ], [ %.0, %25 ], [ %.0, %22 ]
  %127 = getelementptr inbounds i8*, i8** %.56, i64 1
  %128 = add nsw i32 %.5, -1
  br label %7, !llvm.loop !8

129:                                              ; preds = %14
  %.not = icmp eq i32 %.0, 3
  br i1 %.not, label %131, label %130

130:                                              ; preds = %129
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0)) #3
  br label %131

131:                                              ; preds = %130, %129
  %132 = getelementptr inbounds i8*, i8** %.01, i64 1
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %2, align 8
  %134 = getelementptr inbounds i8*, i8** %.01, i64 2
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @_T_addtol(...) #1

declare dso_local void @Z_setquiet(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_cmdlines(i8* nocapture noundef readonly %0) #0 {
  %2 = alloca [1024 x i8], align 16
  br label %3

3:                                                ; preds = %24, %1
  %.0 = phi i8* [ %0, %1 ], [ %.2, %24 ]
  %4 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  br label %7

7:                                                ; preds = %14, %5
  %.01 = phi i8* [ %6, %5 ], [ %17, %14 ]
  %.1 = phi i8* [ %.0, %5 ], [ %15, %14 ]
  %8 = load i8, i8* %.1, align 1
  %.not2 = icmp eq i8 %8, 0
  br i1 %.not2, label %12, label %9

9:                                                ; preds = %7
  %10 = load i8, i8* %.1, align 1
  %11 = icmp ne i8 %10, 10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i1 [ false, %7 ], [ %11, %9 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, i8* %.1, i64 1
  %16 = load i8, i8* %.1, align 1
  %17 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %16, i8* %.01, align 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %12
  store i8 0, i8* %.01, align 1
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef nonnull %19) #3
  %20 = load i8, i8* %.1, align 1
  %21 = icmp eq i8 %20, 10
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %24

24:                                               ; preds = %22, %18
  %.2 = phi i8* [ %23, %22 ], [ %.1, %18 ]
  br label %3, !llvm.loop !10

25:                                               ; preds = %3
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @Z_fatal(...) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @C_addcmd(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly willreturn }

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
