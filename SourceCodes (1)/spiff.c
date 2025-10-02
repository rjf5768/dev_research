; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/spiff.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.edt*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  call void @_Y_doargs(i32 noundef %10, i8** noundef %11, i8** noundef %12, i8** noundef %13, i32* noundef %8)
  call void (...) @T_initdefault()
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @L_init_file(i32 noundef %18, i8* noundef %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* @_K_btm, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* @_K_atm, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi i32 [ 0, %26 ], [ 0, %27 ]
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @_L_brlm, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @_L_arlm, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* @_Y_flags, align 4
  call void (i32, i32, i32, i32, ...) bitcast (void (...)* @P_file_parse to void (i32, i32, i32, i32, ...)*)(i32 noundef %30, i32 noundef 0, i32 noundef %38, i32 noundef %39)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %14, !llvm.loop !4

43:                                               ; preds = %14
  %44 = load i32, i32* @_Y_vflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @_Y_flags, align 4
  %48 = call i32 @V_visual(i32 noundef %47)
  store i32 %48, i32* %3, align 4
  br label %86

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 -1, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @_K_atm, align 4
  %54 = load i32, i32* @_K_btm, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %49
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 30000
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i32, i32* @_Y_eflag, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @_K_atm, align 4
  %65 = load i32, i32* @_K_btm, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @_Y_flags, align 4
  %68 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @Q_do_exact to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67)
  store %struct.edt* %68, %struct.edt** %6, align 8
  br label %75

69:                                               ; preds = %60
  %70 = load i32, i32* @_K_atm, align 4
  %71 = load i32, i32* @_K_btm, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @_Y_flags, align 4
  %74 = call %struct.edt* (i32, i32, i32, i32, ...) bitcast (%struct.edt* (...)* @G_do_miller to %struct.edt* (i32, i32, i32, i32, ...)*)(i32 noundef %70, i32 noundef %71, i32 noundef %72, i32 noundef %73)
  store %struct.edt* %74, %struct.edt** %6, align 8
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %57, !llvm.loop !6

79:                                               ; preds = %57
  %80 = load %struct.edt*, %struct.edt** %6, align 8
  %81 = icmp ne %struct.edt* null, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.edt*, %struct.edt** %6, align 8
  %84 = load i32, i32* @_Y_flags, align 4
  call void (%struct.edt*, i32, ...) bitcast (void (...)* @O_output to void (%struct.edt*, i32, ...)*)(%struct.edt* noundef %83, i32 noundef %84)
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82, %46
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local void @T_initdefault(...) #1

declare dso_local i32 @L_init_file(i32 noundef, i8* noundef) #1

declare dso_local void @P_file_parse(...) #1

declare dso_local i32 @V_visual(i32 noundef) #1

declare dso_local %struct.edt* @Q_do_exact(...) #1

declare dso_local %struct.edt* @G_do_miller(...) #1

declare dso_local void @O_output(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_doargs(i32 noundef %0, i8** noundef %1, i8** noundef %2, i8** noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %168, %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %173

28:                                               ; preds = %26
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %167 [
    i32 116, label %35
    i32 119, label %38
    i32 98, label %41
    i32 99, label %44
    i32 100, label %47
    i32 109, label %50
    i32 97, label %53
    i32 114, label %74
    i32 105, label %95
    i32 101, label %96
    i32 118, label %97
    i32 113, label %98
    i32 115, label %99
    i32 102, label %120
    i32 67, label %155
    i32 83, label %156
    i32 70, label %157
    i32 76, label %158
    i32 77, label %159
    i32 48, label %160
    i32 49, label %160
    i32 50, label %160
    i32 51, label %160
    i32 52, label %160
    i32 53, label %160
    i32 54, label %160
    i32 55, label %160
    i32 56, label %160
    i32 57, label %160
  ]

35:                                               ; preds = %28
  %36 = load i32, i32* @_Y_flags, align 4
  %37 = or i32 %36, 8
  store i32 %37, i32* @_Y_flags, align 4
  br label %168

38:                                               ; preds = %28
  %39 = load i32, i32* @_Y_flags, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* @_Y_flags, align 4
  br label %168

41:                                               ; preds = %28
  %42 = load i32, i32* @_Y_flags, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* @_Y_flags, align 4
  br label %168

44:                                               ; preds = %28
  %45 = load i32, i32* @_Y_flags, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* @_Y_flags, align 4
  br label %168

47:                                               ; preds = %28
  %48 = load i32, i32* @_Y_flags, align 4
  %49 = or i32 %48, 32
  store i32 %49, i32* @_Y_flags, align 4
  br label %168

50:                                               ; preds = %28
  %51 = load i32, i32* @_Y_flags, align 4
  %52 = or i32 %51, 16
  store i32 %52, i32* @_Y_flags, align 4
  br label %168

53:                                               ; preds = %28
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strlen(i8* noundef %56) #3
  %58 = icmp eq i64 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %11, align 8
  br label %72

67:                                               ; preds = %53
  %68 = load i8**, i8*** %7, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i8*, i8** %11, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef @_T_gtol, i32 noundef 0, i8* noundef %73)
  br label %168

74:                                               ; preds = %28
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* noundef %77) #3
  %79 = icmp eq i64 %78, 2
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load i8**, i8*** %7, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  br label %93

88:                                               ; preds = %74
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i8*, i8** %11, align 8
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef @_T_gtol, i32 noundef 1, i8* noundef %94)
  br label %168

95:                                               ; preds = %28
  call void (%struct._T_tstr**, i32, i8*, ...) bitcast (void (...)* @_T_addtol to void (%struct._T_tstr**, i32, i8*, ...)*)(%struct._T_tstr** noundef @_T_gtol, i32 noundef 2, i8* noundef null)
  br label %168

96:                                               ; preds = %28
  store i32 1, i32* @_Y_eflag, align 4
  br label %168

97:                                               ; preds = %28
  store i32 1, i32* @_Y_vflag, align 4
  br label %168

98:                                               ; preds = %28
  call void (...) @Z_setquiet()
  br label %168

99:                                               ; preds = %28
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strlen(i8* noundef %102) #3
  %104 = icmp eq i64 %103, 2
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %11, align 8
  br label %118

113:                                              ; preds = %99
  %114 = load i8**, i8*** %7, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %113, %105
  %119 = load i8*, i8** %11, align 8
  call void @_Y_cmdlines(i8* noundef %119)
  br label %168

120:                                              ; preds = %28
  %121 = load i8**, i8*** %7, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strlen(i8* noundef %123) #3
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i8**, i8*** %7, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %7, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %6, align 4
  %131 = load i8**, i8*** %7, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %11, align 8
  br label %139

134:                                              ; preds = %120
  %135 = load i8**, i8*** %7, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8* %138, i8** %11, align 8
  br label %139

139:                                              ; preds = %134, %126
  %140 = load i8*, i8** %11, align 8
  %141 = call noalias %struct._IO_FILE* @fopen(i8* noundef %140, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %141, %struct._IO_FILE** %13, align 8
  %142 = icmp eq %struct._IO_FILE* null, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %143, %139
  br label %145

145:                                              ; preds = %150, %144
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %148 = call i8* @fgets(i8* noundef %146, i32 noundef 1024, %struct._IO_FILE* noundef %147)
  %149 = icmp ne i8* null, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef %151)
  br label %145, !llvm.loop !7

152:                                              ; preds = %145
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %154 = call i32 @fclose(%struct._IO_FILE* noundef %153)
  br label %168

155:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %168

156:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

157:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

158:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

159:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %168

160:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %161 = load i8**, i8*** %7, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = call i32 @atoi(i8* noundef %164) #3
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %168

167:                                              ; preds = %28
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0))
  br label %168

168:                                              ; preds = %167, %160, %159, %158, %157, %156, %155, %152, %118, %98, %97, %96, %95, %93, %72, %50, %47, %44, %41, %38, %35
  %169 = load i8**, i8*** %7, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %7, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %6, align 4
  br label %15, !llvm.loop !8

173:                                              ; preds = %26
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 3
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0))
  br label %177

177:                                              ; preds = %176, %173
  %178 = load i8**, i8*** %7, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i8**, i8*** %8, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i8**, i8*** %7, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %9, align 8
  store i8* %184, i8** %185, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @_T_addtol(...) #1

declare dso_local void @Z_setquiet(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_Y_cmdlines(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 0, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %24, %10
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 0, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 10, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  %27 = load i8, i8* %25, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  br label %12, !llvm.loop !9

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  call void (i8*, ...) bitcast (void (...)* @C_addcmd to void (i8*, ...)*)(i8* noundef %32)
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 10, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %5, !llvm.loop !10

41:                                               ; preds = %5
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local void @Z_fatal(...) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @C_addcmd(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
