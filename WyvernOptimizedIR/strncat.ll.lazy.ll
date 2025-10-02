; ModuleID = './strncat.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 123, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"hello worldfoo\00XXX\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"hello worldhello world\00XXX\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"hello world world\00XXX\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [64 x i8], align 16
  br label %2

2:                                                ; preds = %0
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %3, i8 88, i64 64, i1 false)
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %4, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %5

5:                                                ; preds = %2
  br i1 false, label %8, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %7, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6, %5
  call void @abort() #7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %11, i8 88, i64 64, i1 false)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %12, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %13

13:                                               ; preds = %10
  br i1 false, label %16, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %15, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14, %13
  call void @abort() #7
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %19, i8 88, i64 64, i1 false)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %20, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %21

21:                                               ; preds = %18
  br i1 false, label %25, label %22

22:                                               ; preds = %21
  br i1 false, label %25, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %24, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %26, label %25

25:                                               ; preds = %23, %22, %21
  call void @abort() #7
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %28, i8 88, i64 64, i1 false)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %29, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %30

30:                                               ; preds = %27
  br i1 false, label %34, label %31

31:                                               ; preds = %30
  br i1 false, label %34, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %33, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %35, label %34

34:                                               ; preds = %32, %31, %30
  call void @abort() #7
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %37, i8 88, i64 64, i1 false)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %38, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %39

39:                                               ; preds = %36
  br i1 false, label %43, label %40

40:                                               ; preds = %39
  br i1 false, label %43, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %42, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %44, label %43

43:                                               ; preds = %41, %40, %39
  call void @abort() #7
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %46, i8 88, i64 64, i1 false)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %47, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %48

48:                                               ; preds = %45
  br i1 false, label %52, label %49

49:                                               ; preds = %48
  br i1 false, label %52, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %51, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %53, label %52

52:                                               ; preds = %50, %49, %48
  call void @abort() #7
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %55, i8 88, i64 64, i1 false)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %56, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %59 = load i32, i32* @x, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @x, align 4
  %61 = sext i32 %60 to i64
  %62 = call i8* @strncat(i8* noundef nonnull %58, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 noundef %61) #6
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %.not11 = icmp eq i8* %62, %63
  br i1 %.not11, label %64, label %69

64:                                               ; preds = %57
  br i1 false, label %69, label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @x, align 4
  %.not12 = icmp eq i32 %66, 124
  br i1 %.not12, label %67, label %69

67:                                               ; preds = %65
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %68, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %70, label %69

69:                                               ; preds = %67, %65, %64, %57
  call void @abort() #7
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %72, i8 88, i64 64, i1 false)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %73, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen = call i64 @strlen(i8* noundef nonnull %75)
  %endptr = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen
  %76 = bitcast i8* %endptr to i32*
  store i32 7303014, i32* %76, align 1
  br i1 false, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(18) %78, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 18)
  %.not16 = icmp eq i32 %bcmp15, 0
  br i1 %.not16, label %80, label %79

79:                                               ; preds = %77, %74
  call void @abort() #7
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %82, i8 88, i64 64, i1 false)
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %83, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen17 = call i64 @strlen(i8* noundef nonnull %85)
  %endptr18 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen17
  %86 = bitcast i8* %endptr18 to i32*
  store i32 7303014, i32* %86, align 1
  br i1 false, label %89, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp19 = call i32 @bcmp(i8* noundef nonnull dereferenceable(18) %88, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 18)
  %.not20 = icmp eq i32 %bcmp19, 0
  br i1 %.not20, label %90, label %89

89:                                               ; preds = %87, %84
  call void @abort() #7
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %92, i8 88, i64 64, i1 false)
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %93, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen21 = call i64 @strlen(i8* noundef nonnull %95)
  %endptr22 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr22, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %98, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(26) %97, i8* noundef nonnull dereferenceable(26) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26)
  %.not24 = icmp eq i32 %bcmp23, 0
  br i1 %.not24, label %99, label %98

98:                                               ; preds = %96, %94
  call void @abort() #7
  br label %UnifiedUnreachableBlock

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %101, i8 88, i64 64, i1 false)
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %102, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %strlen25 = call i64 @strlen(i8* noundef nonnull %104)
  %endptr26 = getelementptr i8, i8* %104, i64 %strlen25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr26, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %108, label %105

105:                                              ; preds = %103
  br i1 false, label %108, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp27 = call i32 @bcmp(i8* noundef nonnull dereferenceable(26) %107, i8* noundef nonnull dereferenceable(26) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26)
  %.not28 = icmp eq i32 %bcmp27, 0
  br i1 %.not28, label %109, label %108

108:                                              ; preds = %106, %105, %103
  call void @abort() #7
  br label %UnifiedUnreachableBlock

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %111, i8 88, i64 64, i1 false)
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %112, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen29 = call i64 @strlen(i8* noundef nonnull %114)
  %endptr30 = getelementptr i8, i8* %114, i64 %strlen29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %endptr30, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  br i1 false, label %118, label %115

115:                                              ; preds = %113
  br i1 false, label %118, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp31 = call i32 @bcmp(i8* noundef nonnull dereferenceable(26) %117, i8* noundef nonnull dereferenceable(26) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26)
  %.not32 = icmp eq i32 %bcmp31, 0
  br i1 %.not32, label %119, label %118

118:                                              ; preds = %116, %115, %113
  call void @abort() #7
  br label %UnifiedUnreachableBlock

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %121, i8 88, i64 64, i1 false)
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %122, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen33 = call i64 @strlen(i8* noundef nonnull %124)
  %endptr34 = getelementptr i8, i8* %124, i64 %strlen33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %endptr34, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 5), i64 7, i1 false)
  br i1 false, label %128, label %125

125:                                              ; preds = %123
  br i1 false, label %128, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp35 = call i32 @bcmp(i8* noundef nonnull dereferenceable(21) %127, i8* noundef nonnull dereferenceable(21) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 21)
  %.not36 = icmp eq i32 %bcmp35, 0
  br i1 %.not36, label %129, label %128

128:                                              ; preds = %126, %125, %123
  call void @abort() #7
  br label %UnifiedUnreachableBlock

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %131, i8 88, i64 64, i1 false)
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %132, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %133

133:                                              ; preds = %130
  br i1 false, label %136, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp37 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %135, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not38 = icmp eq i32 %bcmp37, 0
  br i1 %.not38, label %137, label %136

136:                                              ; preds = %134, %133
  call void @abort() #7
  br label %UnifiedUnreachableBlock

137:                                              ; preds = %134
  ret void

UnifiedUnreachableBlock:                          ; preds = %136, %128, %118, %108, %98, %89, %79, %69, %52, %43, %34, %25, %16, %8
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
