; ModuleID = './resolve.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = dso_local global [5 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 4, i32 1, i32 1], [3 x i32] [i32 3, i32 3, i32 1], [3 x i32] zeroinitializer], align 16
@routing = external dso_local global i32, align 4
@handle = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"resolve: parse address '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"resolve: parse route '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@getcost = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@exitstat = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"resolve failed '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"resolve '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@hostname = external dso_local global [0 x i8], align 1
@hostdomain = external dso_local global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"route: '%s' is local\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"smart-host\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"route '%s' failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"route:  '%s' (%s) = '%s' (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @resolve(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32* noundef %3) #0 {
  %5 = alloca [32 x i8*], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = load i32, i32* @routing, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load i32, i32* @handle, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 3, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds [32 x i8*], [32 x i8*]* %5, i64 0, i64 0
  %18 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* noundef %0, i32 noundef 33, i8** noundef nonnull %17) #4
  %phi.bo = add i32 %18, -1
  br label %21

19:                                               ; preds = %10, %4
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* %5, i64 0, i64 0
  store i8* %0, i8** %20, align 16
  br label %21

21:                                               ; preds = %19, %16
  %.02 = phi i32 [ %phi.bo, %16 ], [ 0, %19 ]
  br label %22

22:                                               ; preds = %94, %21
  %.03 = phi i32 [ undef, %21 ], [ %31, %94 ]
  %.01 = phi i32 [ %.02, %21 ], [ %95, %94 ]
  %23 = icmp sgt i32 %.01, -1
  br i1 %23, label %24, label %.loopexit

24:                                               ; preds = %22
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %26 = sext i32 %.01 to i64
  %27 = getelementptr inbounds [32 x i8*], [32 x i8*]* %5, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strcpy(i8* noundef nonnull %25, i8* noundef nonnull dereferenceable(1) %28) #4
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %31 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* noundef nonnull %30, i8* noundef %1, i8* noundef %2) #4
  %32 = load i32, i32* @debug, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %36 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %31) #4
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %35, i8* noundef %2, i8* noundef %1, i8* noundef %36) #4
  br label %38

38:                                               ; preds = %34, %24
  %.not12 = icmp eq i32 %.01, 0
  br i1 %.not12, label %42, label %39

39:                                               ; preds = %38
  %40 = icmp eq i32 %31, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %94

42:                                               ; preds = %39, %38
  %43 = sext i32 %31 to i64
  %44 = load i32, i32* @handle, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = sext i32 %31 to i64
  %51 = load i32, i32* @handle, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load i32, i32* @routing, align 4
  %.not15 = icmp eq i32 %57, 0
  br i1 %.not15, label %78, label %58

58:                                               ; preds = %56, %42
  %59 = load i32, i32* @routing, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = icmp eq i32 %.01, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %61, %58
  %.0 = phi i32 [ 1, %63 ], [ 0, %61 ], [ 0, %58 ]
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %66 = call i32 @route(i8* noundef %1, i8* noundef %2, i32 noundef %.0, i8* noundef nonnull %65, i32* noundef %3)
  %.not16 = icmp eq i32 %66, 0
  br i1 %.not16, label %68, label %67

67:                                               ; preds = %64
  br label %94

68:                                               ; preds = %64
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %70 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* noundef nonnull %69, i8* noundef %1, i8* noundef %2) #4
  %71 = load i32, i32* @debug, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %75 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %70) #4
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %74, i8* noundef %2, i8* noundef %1, i8* noundef %75) #4
  br label %77

77:                                               ; preds = %73, %68
  br label %93

78:                                               ; preds = %56, %49
  %79 = load i32, i32* @getcost, align 4
  %.not13 = icmp eq i32 %79, 0
  br i1 %.not13, label %.loopexit4, label %80

80:                                               ; preds = %78
  %81 = sext i32 %31 to i64
  %82 = load i32, i32* @handle, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %.loopexit4

87:                                               ; preds = %80
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %89 = call i32 @route(i8* noundef %1, i8* noundef %2, i32 noundef 0, i8* noundef nonnull %88, i32* noundef %3)
  %.not14 = icmp eq i32 %89, 0
  br i1 %.not14, label %91, label %90

90:                                               ; preds = %87
  br label %94

91:                                               ; preds = %87
  br label %92

.loopexit4:                                       ; preds = %78, %80
  br label %92

92:                                               ; preds = %.loopexit4, %91
  br label %93

93:                                               ; preds = %92, %77
  %.1 = phi i32 [ %70, %77 ], [ %31, %92 ]
  br label %96

94:                                               ; preds = %90, %67, %41
  %95 = add nsw i32 %.01, -1
  br label %22, !llvm.loop !4

.loopexit:                                        ; preds = %22
  br label %96

96:                                               ; preds = %.loopexit, %93
  %.2 = phi i32 [ %.1, %93 ], [ %.03, %.loopexit ]
  %97 = sext i32 %.2 to i64
  %98 = load i32, i32* @handle, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %.not11 = icmp eq i32 %.2, 1
  br i1 %.not11, label %109, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %106 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef %1, i8* noundef %2, i32 noundef %.2, i8* noundef nonnull %105) #4
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %108 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull %107) #4
  store i8 0, i8* %1, align 1
  br label %109

109:                                              ; preds = %104, %103, %96
  %.3 = phi i32 [ 1, %104 ], [ %.2, %103 ], [ %.2, %96 ]
  %110 = icmp eq i32 %.3, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %109
  %112 = sext i32 %.3 to i64
  %113 = load i32, i32* @handle, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %124

118:                                              ; preds = %111, %109
  store i32 68, i32* @exitstat, align 4
  %119 = load i32, i32* @debug, align 4
  %.not10 = icmp eq i32 %119, 0
  br i1 %.not10, label %123, label %120

120:                                              ; preds = %118
  %121 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %.3) #4
  %122 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0, i8* noundef %2, i8* noundef %1, i8* noundef %121) #4
  br label %123

123:                                              ; preds = %120, %118
  br label %130

124:                                              ; preds = %111
  %125 = load i32, i32* @debug, align 4
  %.not = icmp eq i32 %125, 0
  br i1 %.not, label %129, label %126

126:                                              ; preds = %124
  %127 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %.3) #4
  %128 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0, i8* noundef %2, i8* noundef %1, i8* noundef %127) #4
  br label %129

129:                                              ; preds = %126, %124
  br label %130

130:                                              ; preds = %129, %123
  %.4 = phi i32 [ 0, %123 ], [ %.3, %129 ]
  ret i32 %.4
}

declare dso_local i32 @ssplit(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @parse(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @sform(...) #1

declare dso_local i32 @build(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @route(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32* noundef %4) #0 {
  %6 = alloca [16 x i8*], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  store i8 46, i8* %9, align 16
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 1
  %11 = call i8* @strcpy(i8* noundef nonnull %10, i8* noundef nonnull dereferenceable(1) %0) #4
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 1
  %13 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 0
  %14 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* noundef nonnull %12, i32 noundef 46, i8** noundef nonnull %13) #4
  %15 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %0, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0)) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %0, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0)) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17, %5
  store i32 0, i32* %4, align 4
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(3) %21, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 3, i1 false) #4
  %22 = load i32, i32* @debug, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* noundef %0) #4
  br label %26

26:                                               ; preds = %24, %20
  br label %84

27:                                               ; preds = %17
  %28 = icmp sgt i32 %14, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = add nsw i32 %14, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) bitcast (i32 (...)* @isuucp to i32 (i8*, ...)*)(i8* noundef %33) #4
  %.not8 = icmp eq i32 %34, 0
  br i1 %.not8, label %41, label %35

35:                                               ; preds = %29
  %36 = add nsw i32 %14, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %35, %29, %27
  %42 = phi i1 [ false, %35 ], [ true, %29 ], [ true, %27 ]
  %.02 = phi i32 [ %36, %35 ], [ %14, %29 ], [ %14, %27 ]
  br label %43

43:                                               ; preds = %62, %41
  %.01 = phi i32 [ 0, %41 ], [ %63, %62 ]
  %44 = icmp slt i32 %.01, %.02
  br i1 %44, label %45, label %.loopexit

45:                                               ; preds = %43
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %51 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef nonnull %49, i8* noundef nonnull %50, i32* noundef %4) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %58 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef %56, i8* noundef nonnull %57, i32* noundef %4) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %45
  br label %64

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.01, 1
  br label %43, !llvm.loop !6

.loopexit:                                        ; preds = %43
  br label %64

64:                                               ; preds = %.loopexit, %60
  %65 = icmp eq i32 %.01, %.02
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  br i1 %42, label %70, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %69 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %68, i32* noundef %4) #4
  %.not6 = icmp eq i32 %69, 0
  br i1 %.not6, label %82, label %70

70:                                               ; preds = %67, %66
  %71 = icmp eq i32 %2, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %74 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %73, i32* noundef %4) #4
  %.not7 = icmp eq i32 %74, 0
  br i1 %.not7, label %81, label %75

75:                                               ; preds = %72, %70
  %76 = load i32, i32* @debug, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef %0) #4
  br label %80

80:                                               ; preds = %78, %75
  br label %109

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %26
  %.1 = phi i32 [ 0, %26 ], [ %.01, %83 ]
  %85 = load i32, i32* @debug, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = zext i32 %.1 to i64
  %89 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %.not = icmp eq i8* %90, null
  br i1 %.not, label %95, label %91

91:                                               ; preds = %87
  %92 = zext i32 %.1 to i64
  %93 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %92
  %94 = load i8*, i8** %93, align 8
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i8* [ %94, %91 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %95 ]
  %98 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0, i8* noundef %97, i8* noundef nonnull %98, i32 noundef %99) #4
  br label %101

101:                                              ; preds = %96, %84
  %102 = icmp eq i32 %.1, 0
  %103 = select i1 %102, i32 1, i32 3
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %105 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef %0, i8* noundef %1, i32 noundef %103, i8* noundef nonnull %104) #4
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull %106, i8* noundef nonnull %107) #4
  br label %109

109:                                              ; preds = %101, %80
  %.0 = phi i32 [ 0, %101 ], [ 68, %80 ]
  ret i32 %.0
}

declare dso_local i32 @strcmpic(...) #1

declare dso_local i32 @isuucp(...) #1

declare dso_local i32 @getpath(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
