; ModuleID = './instruct2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/instruct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external dso_local global [10 x i32], align 16
@.str = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Set CC to =.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Set CC to <.\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Set CC to >.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Attempted division by zero.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Generated SVC interupt %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"X has overflowed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [13 x i8] c"Set CC to >.\00", align 1
@str.1 = private unnamed_addr constant [13 x i8] c"Set CC to <.\00", align 1
@str.2 = private unnamed_addr constant [13 x i8] c"Set CC to =.\00", align 1
@str.3 = private unnamed_addr constant [28 x i8] c"Attempted division by zero.\00", align 1
@str.4 = private unnamed_addr constant [18 x i8] c"X has overflowed.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @MOD(i32 noundef %0, i32 noundef %1) #0 {
  %3 = srem i32 %0, %1
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADDR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %146

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 8388607
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 8388607
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %24
  br i1 %29, label %52, label %32

32:                                               ; preds = %31
  br i1 %22, label %52, label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 8388607
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %33
  %.01 = phi i32 [ 1, %50 ], [ 0, %33 ]
  br label %52

52:                                               ; preds = %51, %32, %31
  %.1 = phi i32 [ %.01, %51 ], [ 0, %32 ], [ 0, %31 ]
  br i1 %29, label %53, label %78

53:                                               ; preds = %52
  br i1 %22, label %78, label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %58, %62
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %.neg7 = sdiv i32 %73, -16777216
  %.neg8 = shl i32 %.neg7, 24
  %74 = add i32 %.neg8, %69
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %54, %53, %52
  br i1 %29, label %104, label %79

79:                                               ; preds = %78
  br i1 %22, label %80, label %104

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %84, %88
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %.neg5 = sdiv i32 %99, -16777216
  %.neg6 = shl i32 %.neg5, 24
  %100 = add i32 %.neg6, %95
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %80, %79, %78
  br i1 %29, label %105, label %136

105:                                              ; preds = %104
  br i1 %22, label %106, label %136

106:                                              ; preds = %105
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %110, %114
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %117
  store i32 %115, i32* %118, align 4
  %119 = sext i32 %116 to i64
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %.neg = sdiv i32 %125, -16777216
  %.neg4 = shl i32 %.neg, 24
  %126 = add i32 %.neg4, %121
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = sext i32 %127 to i64
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 8388608
  br i1 %133, label %134, label %135

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134, %106
  %.2 = phi i32 [ 1, %134 ], [ %.1, %106 ]
  br label %136

136:                                              ; preds = %135, %105, %104
  %.3 = phi i32 [ %.2, %135 ], [ %.1, %105 ], [ %.1, %104 ]
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %143, label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %138, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %142, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %143

143:                                              ; preds = %137, %136
  %.not3 = icmp eq i32 %.3, 0
  br i1 %.not3, label %145, label %144

144:                                              ; preds = %143
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4) #4
  br label %145

145:                                              ; preds = %144, %143
  br label %146

146:                                              ; preds = %145, %16
  ret void
}

declare dso_local i32 @FORMAT2(...) #2

declare dso_local void @SIGNAL_INTERUPT(...) #2

declare dso_local void @PRINT_REG_NAME(...) #2

declare dso_local void @PRINT_CONSTANT(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @CLEAR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %22

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %21, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %16, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %21

21:                                               ; preds = %15, %11
  br label %22

22:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @COMPR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 8388607
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -16777216
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %16, %10
  %.01 = phi i32 [ %15, %10 ], [ %20, %16 ]
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 8388607
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -16777216
  br label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %33, %27
  %.0 = phi i32 [ %32, %27 ], [ %37, %33 ]
  %39 = icmp eq i32 %.01, %.0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 0) #4
  %.not4 = icmp eq i32 %0, 0
  br i1 %.not4, label %42, label %41

41:                                               ; preds = %40
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %38
  %44 = icmp slt i32 %.01, %.0
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 1) #4
  %.not2 = icmp eq i32 %0, 0
  br i1 %.not2, label %47, label %46

46:                                               ; preds = %45
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %43
  %49 = icmp sgt i32 %.01, %.0
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 2) #4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %52, label %51

51:                                               ; preds = %50
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %48
  ret void
}

declare dso_local void @SET_CC(...) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @DIVR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %108

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4) #4
  %.not2 = icmp eq i32 %0, 0
  br i1 %.not2, label %25, label %24

24:                                               ; preds = %23
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %24, %23
  br label %107

26:                                               ; preds = %17
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 8388607
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 8388607
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %33
  br i1 %38, label %55, label %41

41:                                               ; preds = %40
  br i1 %31, label %55, label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %46, %50
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %41, %40
  br i1 %38, label %56, label %72

56:                                               ; preds = %55
  br i1 %31, label %72, label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 16777216, %61
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %62, %66
  %68 = sub nsw i32 16777216, %67
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %70
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %57, %56, %55
  br i1 %38, label %89, label %73

73:                                               ; preds = %72
  br i1 %31, label %74, label %89

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 16777216, %82
  %84 = sdiv i32 %78, %83
  %85 = sub nsw i32 16777216, %84
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %74, %73, %72
  br i1 %38, label %90, label %106

90:                                               ; preds = %89
  br i1 %31, label %91, label %106

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 16777216, %95
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 16777216, %100
  %102 = sdiv i32 %96, %101
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %91, %90, %89
  br label %107

107:                                              ; preds = %106, %25
  br label %108

108:                                              ; preds = %107, %16
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %115, label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %110, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %114, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %115

115:                                              ; preds = %109, %108
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MULR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %145

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 8388607
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 8388607
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %24
  br i1 %29, label %53, label %32

32:                                               ; preds = %31
  br i1 %22, label %53, label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to double
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fmul double %38, %43
  %45 = fcmp ult double %44, 0x4160000000000000
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %52

47:                                               ; preds = %33
  %48 = fptosi double %44 to i32
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %46
  %.0 = phi i32 [ 1, %46 ], [ 0, %47 ]
  br label %53

53:                                               ; preds = %52, %32, %31
  %.1 = phi i32 [ %.0, %52 ], [ 0, %32 ], [ 0, %31 ]
  br i1 %29, label %54, label %82

54:                                               ; preds = %53
  br i1 %22, label %82, label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 16777216, %59
  %61 = sitofp i32 %60 to double
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to double
  %67 = fmul double %61, %66
  %68 = fmul double %67, 0x3E70000000000000
  %69 = fptosi double %68 to i32
  %70 = shl nsw i32 %69, 24
  %71 = sitofp i32 %70 to double
  %72 = fsub double %67, %71
  %73 = fcmp ult double %72, 0x4160000000000000
  br i1 %73, label %75, label %74

74:                                               ; preds = %55
  br label %81

75:                                               ; preds = %55
  %76 = fptosi double %72 to i32
  %77 = sub nsw i32 16777216, %76
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %74
  %.2 = phi i32 [ 1, %74 ], [ %.1, %75 ]
  br label %82

82:                                               ; preds = %81, %54, %53
  %.3 = phi i32 [ %.2, %81 ], [ %.1, %54 ], [ %.1, %53 ]
  br i1 %29, label %111, label %83

83:                                               ; preds = %82
  br i1 %22, label %84, label %111

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to double
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 16777216, %93
  %95 = sitofp i32 %94 to double
  %96 = fmul double %89, %95
  %97 = fmul double %96, 0x3E70000000000000
  %98 = fptosi double %97 to i32
  %99 = shl nsw i32 %98, 24
  %100 = sitofp i32 %99 to double
  %101 = fsub double %96, %100
  %102 = fcmp ult double %101, 0x4160000000000000
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  br label %110

104:                                              ; preds = %84
  %105 = fptosi double %101 to i32
  %106 = sub nsw i32 16777216, %105
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %108
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %103
  %.4 = phi i32 [ 1, %103 ], [ %.3, %104 ]
  br label %111

111:                                              ; preds = %110, %83, %82
  %.5 = phi i32 [ %.4, %110 ], [ %.3, %83 ], [ %.3, %82 ]
  br i1 %29, label %112, label %135

112:                                              ; preds = %111
  br i1 %22, label %113, label %135

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 16777216, %117
  %119 = sitofp i32 %118 to double
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 16777216, %123
  %125 = sitofp i32 %124 to double
  %126 = fmul double %119, %125
  %127 = fcmp ult double %126, 0x4160000000000000
  br i1 %127, label %129, label %128

128:                                              ; preds = %113
  br label %134

129:                                              ; preds = %113
  %130 = fptosi double %126 to i32
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %132
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %128
  %.6 = phi i32 [ 1, %128 ], [ %.5, %129 ]
  br label %135

135:                                              ; preds = %134, %112, %111
  %.7 = phi i32 [ %.6, %134 ], [ %.5, %112 ], [ %.5, %111 ]
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %142, label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %137, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %141, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %142

142:                                              ; preds = %136, %135
  %.not3 = icmp eq i32 %.7, 0
  br i1 %.not3, label %144, label %143

143:                                              ; preds = %142
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4) #4
  br label %144

144:                                              ; preds = %143, %142
  br label %145

145:                                              ; preds = %144, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RMO_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %32

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %31, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %30, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %31

31:                                               ; preds = %25, %17
  br label %32

32:                                               ; preds = %31, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHIFTL_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [24 x i32], align 16
  %5 = alloca [24 x i32], align 16
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %46

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %17, i32 noundef 3, i32* noundef nonnull %18) #4
  br label %19

19:                                               ; preds = %31, %13
  %.0 = phi i32 [ 0, %13 ], [ %32, %31 ]
  %20 = icmp ult i32 %.0, 24
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %.0, %22
  %24 = add nsw i32 %23, 1
  %25 = call i32 @MOD(i32 noundef %24, i32 noundef 24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 %29
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !4

33:                                               ; preds = %19
  %34 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 0
  %35 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef nonnull %34, i32 noundef 24) #4
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %40, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %44, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %12
  ret void
}

declare dso_local void @BYTES_TO_BITS(...) #2

declare dso_local i32 @BITS_TO_BYTE(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHIFTR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [24 x i32], align 16
  %5 = alloca [24 x i32], align 16
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %53

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %17, i32 noundef 3, i32* noundef nonnull %18) #4
  br label %19

19:                                               ; preds = %38, %13
  %.0 = phi i32 [ 0, %13 ], [ %39, %38 ]
  %20 = icmp ult i32 %.0, 24
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %.not1 = icmp sgt i32 %.0, %22
  br i1 %.not1, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 %26
  store i32 %25, i32* %27, align 4
  br label %37

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = xor i32 %29, -1
  %31 = add i32 %.0, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [24 x i32], [24 x i32]* %4, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 %35
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %23
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !6

40:                                               ; preds = %19
  %41 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 0
  %42 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef nonnull %41, i32 noundef 24) #4
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %47, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SUBR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %150

17:                                               ; preds = %13, %7
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 8388607
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 8388607
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %24
  br i1 %29, label %58, label %32

32:                                               ; preds = %31
  br i1 %22, label %58, label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 16777216, %41
  %43 = add nsw i32 %37, %42
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %.neg7 = sdiv i32 %53, -16777216
  %.neg8 = shl i32 %.neg7, 24
  %54 = add i32 %.neg8, %49
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %33, %32, %31
  br i1 %29, label %59, label %91

59:                                               ; preds = %58
  br i1 %22, label %91, label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 16777216, %68
  %70 = add nsw i32 %64, %69
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %.neg5 = sdiv i32 %80, -16777216
  %.neg6 = shl i32 %.neg5, 24
  %81 = add i32 %.neg6, %76
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 8388608
  br i1 %88, label %89, label %90

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %89, %60
  %.01 = phi i32 [ 1, %89 ], [ 0, %60 ]
  br label %91

91:                                               ; preds = %90, %59, %58
  %.1 = phi i32 [ %.01, %90 ], [ 0, %59 ], [ 0, %58 ]
  br i1 %29, label %113, label %92

92:                                               ; preds = %91
  br i1 %22, label %93, label %113

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 16777216, %101
  %103 = add nsw i32 %97, %102
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = sext i32 %104 to i64
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 8388607
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %93
  %.2 = phi i32 [ 1, %111 ], [ %.1, %93 ]
  br label %113

113:                                              ; preds = %112, %92, %91
  %.3 = phi i32 [ %.2, %112 ], [ %.1, %92 ], [ %.1, %91 ]
  br i1 %29, label %114, label %140

114:                                              ; preds = %113
  br i1 %22, label %115, label %140

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 16777216, %123
  %125 = add nsw i32 %119, %124
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %127
  store i32 %125, i32* %128, align 4
  %129 = sext i32 %126 to i64
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %.neg = sdiv i32 %135, -16777216
  %.neg4 = shl i32 %.neg, 24
  %136 = add i32 %.neg4, %131
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %138
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %115, %114, %113
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %147, label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %142, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %146, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %147

147:                                              ; preds = %141, %140
  %.not3 = icmp eq i32 %.3, 0
  br i1 %.not3, label %149, label %148

148:                                              ; preds = %147
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4) #4
  br label %149

149:                                              ; preds = %148, %147
  br label %150

150:                                              ; preds = %149, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SVC_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 1, i32 noundef %12) #4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %16, label %13

13:                                               ; preds = %11
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 noundef %14) #4
  br label %16

16:                                               ; preds = %13, %11
  br label %17

17:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIXR_P(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %2, i32* noundef nonnull %3) #4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #4
  br label %54

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %13 = add nsw i32 %12, 1
  %14 = srem i32 %13, 16777216
  store i32 %14, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %15 = icmp eq i32 %14, 8388608
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4) #4
  %.not5 = icmp eq i32 %0, 0
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %16
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %16
  br label %54

19:                                               ; preds = %11
  %20 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %21 = icmp sgt i32 %20, 8388607
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %24 = add nsw i32 %23, -16777216
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  br label %27

27:                                               ; preds = %25, %22
  %.01 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 8388607
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = add nsw i32 %31, -16777216
  br label %35

35:                                               ; preds = %33, %27
  %.0 = phi i32 [ %34, %33 ], [ %31, %27 ]
  %36 = icmp eq i32 %.01, %.0
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 0) #4
  %.not4 = icmp eq i32 %0, 0
  br i1 %.not4, label %40, label %38

38:                                               ; preds = %37
  %39 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %39, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %40, %35
  %42 = icmp slt i32 %.01, %.0
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 1) #4
  %.not3 = icmp eq i32 %0, 0
  br i1 %.not3, label %46, label %44

44:                                               ; preds = %43
  %45 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %45, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #4
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %41
  %48 = icmp sgt i32 %.01, %.0
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 2) #4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %52, label %50

50:                                               ; preds = %49
  %51 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %51, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #4
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %53, %18, %10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
