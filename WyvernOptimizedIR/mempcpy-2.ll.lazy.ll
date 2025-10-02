; ModuleID = './mempcpy-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf1 = dso_local global [64 x i64] zeroinitializer, align 16
@buf2 = dso_local global i8* getelementptr (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 256), align 8
@.str = private unnamed_addr constant [10 x i8] c"ABCDEFGHI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ABCDEFGHI\00\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"abcdefghijklmnopq\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"abcdefghijklmnopq\00\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ABCDEFghijklmnopq\00\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"aBCDEFghijklmnopq\00\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"aBcdEFghijklmnopq\00\00", align 1
@buf5 = dso_local global [20 x i64] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWklmnopq\00\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWSlmnopq\00\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWSlmnrsq\00\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"RSTUVWXYVWSlmnrsq\00\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"RSTUVWXYZ01234567\00\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWkSmnopq\00\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"aBcdRSTUVWkSmnrsq\00\00", align 1
@buf7 = dso_local global [20 x i8] zeroinitializer, align 16
@inside_main = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"RSTUVWXYZ0123456789\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"rstuvwxyz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64* noundef writeonly %0, i8* noundef writeonly %1, i8* nocapture noundef readonly %2, i32 noundef %3) #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  br i1 false, label %6, label %5

5:                                                ; preds = %4
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 11)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %5, %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(17) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull align 1 dereferenceable(17) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i1 false)
  br i1 false, label %9, label %8

8:                                                ; preds = %7
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 19)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %8, %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  %11 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(6) %11, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6, i1 false)
  %.not3 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not3, label %12, label %13

12:                                               ; preds = %10
  %bcmp4 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 19)
  %.not5 = icmp eq i32 %bcmp4, 0
  br i1 %.not5, label %14, label %13

13:                                               ; preds = %12, %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  %15 = bitcast i64* %0 to i8*
  store i8 97, i8* %15, align 8
  %.not6 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not6, label %16, label %17

16:                                               ; preds = %14
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 19)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %18, label %17

17:                                               ; preds = %16, %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  %19 = bitcast i64* %0 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = bitcast i8* %20 to i16*
  store i16 25699, i16* %21, align 1
  %.not9 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not9, label %22, label %24

22:                                               ; preds = %18
  %bcmp10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19)
  %.not11 = icmp eq i32 %bcmp10, 0
  br i1 %.not11, label %23, label %24

23:                                               ; preds = %22
  br i1 false, label %24, label %25

24:                                               ; preds = %23, %22, %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %23
  %26 = bitcast i64* %0 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %27, i8* noundef nonnull align 16 dereferenceable(6) bitcast ([20 x i64]* @buf5 to i8*), i64 6, i1 false)
  %.not12 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not12, label %28, label %29

28:                                               ; preds = %25
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 19)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %30, label %29

29:                                               ; preds = %28, %25
  call void @abort() #5
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  %31 = load i8, i8* getelementptr inbounds (i8, i8* bitcast ([20 x i64]* @buf5 to i8*), i64 1), align 1
  store i8 %31, i8* getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 10), align 2
  br i1 false, label %34, label %32

32:                                               ; preds = %30
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 19)
  %.not16 = icmp eq i32 %bcmp15, 0
  br i1 %.not16, label %33, label %34

33:                                               ; preds = %32
  br i1 false, label %34, label %35

34:                                               ; preds = %33, %32, %30
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %33
  %36 = bitcast i64* %0 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 14
  %38 = bitcast i8* %2 to i16*
  %39 = bitcast i8* %37 to i16*
  %40 = load i16, i16* %38, align 1
  store i16 %40, i16* %39, align 1
  %41 = getelementptr inbounds i64, i64* %0, i64 2
  %.not17 = icmp eq i64* %41, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 2)
  br i1 %.not17, label %42, label %43

42:                                               ; preds = %35
  %bcmp18 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 19)
  %.not19 = icmp eq i32 %bcmp18, 0
  br i1 %.not19, label %44, label %43

43:                                               ; preds = %42, %35
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %42
  %45 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @buf5, i64 0, i64 0), align 16
  store i64 %45, i64* %0, align 8
  %46 = getelementptr inbounds i64, i64* %0, i64 1
  %.not20 = icmp eq i64* %46, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 1)
  br i1 %.not20, label %47, label %48

47:                                               ; preds = %44
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 19)
  %.not22 = icmp eq i32 %bcmp21, 0
  br i1 %.not22, label %49, label %48

48:                                               ; preds = %47, %44
  call void @abort() #5
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %47
  %50 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(17) %50, i8* noundef nonnull align 16 dereferenceable(17) bitcast ([20 x i64]* @buf5 to i8*), i64 17, i1 false)
  %.not23 = icmp eq i64* %0, getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0)
  br i1 %.not23, label %51, label %52

51:                                               ; preds = %49
  %bcmp24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 19)
  %.not25 = icmp eq i32 %bcmp24, 0
  br i1 %.not25, label %53, label %52

52:                                               ; preds = %51, %49
  call void @abort() #5
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %51
  %54 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(19) %54, i8* noundef nonnull align 1 dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19, i1 false)
  %55 = bitcast i64* %0 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = add nsw i32 %3, 6
  %58 = sext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %56, i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i64 %58, i1 false)
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %.not26 = icmp eq i8* %59, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 10)
  br i1 %.not26, label %60, label %61

60:                                               ; preds = %53
  %bcmp27 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 19)
  %.not28 = icmp eq i32 %bcmp27, 0
  br i1 %.not28, label %62, label %61

61:                                               ; preds = %60, %53
  call void @abort() #5
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %60
  %63 = add nsw i32 %3, 1
  %64 = sext i32 %63 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 11), i8* align 1 getelementptr inbounds (i8, i8* bitcast ([20 x i64]* @buf5 to i8*), i64 1), i64 %64, i1 false)
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 11), i64 %64
  %.not29 = icmp eq i8* %65, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 12)
  br i1 %.not29, label %66, label %68

66:                                               ; preds = %62
  %bcmp30 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 19)
  %.not31 = icmp eq i32 %bcmp30, 0
  br i1 %.not31, label %67, label %68

67:                                               ; preds = %66
  br i1 false, label %68, label %69

68:                                               ; preds = %67, %66, %62
  call void @abort() #5
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %67
  %70 = bitcast i64* %0 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 14
  %72 = add nsw i32 %3, 2
  %73 = sext i32 %72 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %71, i8* align 1 %2, i64 %73, i1 false)
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %.not32 = icmp eq i8* %74, bitcast (i64* getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 2) to i8*)
  br i1 %.not32, label %75, label %76

75:                                               ; preds = %69
  %bcmp33 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) bitcast ([64 x i64]* @buf1 to i8*), i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 19)
  %.not34 = icmp eq i32 %bcmp33, 0
  br i1 %.not34, label %77, label %76

76:                                               ; preds = %75, %69
  call void @abort() #5
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %75
  %78 = load i8*, i8** @buf2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %78, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  br i1 false, label %81, label %79

79:                                               ; preds = %77
  %80 = load i8*, i8** @buf2, align 8
  %bcmp35 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) %80, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 11)
  %.not36 = icmp eq i32 %bcmp35, 0
  br i1 %.not36, label %82, label %81

81:                                               ; preds = %79, %77
  call void @abort() #5
  br label %UnifiedUnreachableBlock

82:                                               ; preds = %79
  %83 = load i8*, i8** @buf2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(17) %83, i8* noundef nonnull align 1 dereferenceable(17) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i1 false)
  br i1 false, label %86, label %84

84:                                               ; preds = %82
  %85 = load i8*, i8** @buf2, align 8
  %bcmp37 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %85, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 19)
  %.not38 = icmp eq i32 %bcmp37, 0
  br i1 %.not38, label %87, label %86

86:                                               ; preds = %84, %82
  call void @abort() #5
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %1, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6, i1 false)
  %88 = load i8*, i8** @buf2, align 8
  %.not39 = icmp eq i8* %88, %1
  br i1 %.not39, label %89, label %91

89:                                               ; preds = %87
  %90 = load i8*, i8** @buf2, align 8
  %bcmp40 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %90, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 19)
  %.not41 = icmp eq i32 %bcmp40, 0
  br i1 %.not41, label %92, label %91

91:                                               ; preds = %89, %87
  call void @abort() #5
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %89
  store i8 97, i8* %1, align 1
  %93 = load i8*, i8** @buf2, align 8
  %.not42 = icmp eq i8* %93, %1
  br i1 %.not42, label %94, label %96

94:                                               ; preds = %92
  %95 = load i8*, i8** @buf2, align 8
  %bcmp43 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %95, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 19)
  %.not44 = icmp eq i32 %bcmp43, 0
  br i1 %.not44, label %97, label %96

96:                                               ; preds = %94, %92
  call void @abort() #5
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %94
  %98 = getelementptr inbounds i8, i8* %1, i64 2
  %99 = bitcast i8* %98 to i16*
  store i16 25699, i16* %99, align 1
  %100 = load i8*, i8** @buf2, align 8
  %.not45 = icmp eq i8* %100, %1
  br i1 %.not45, label %101, label %104

101:                                              ; preds = %97
  %102 = load i8*, i8** @buf2, align 8
  %bcmp46 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %102, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19)
  %.not47 = icmp eq i32 %bcmp46, 0
  br i1 %.not47, label %103, label %104

103:                                              ; preds = %101
  br i1 false, label %104, label %105

104:                                              ; preds = %103, %101, %97
  call void @abort() #5
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8, i8* %1, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %106, i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i64 6, i1 false)
  %107 = load i8*, i8** @buf2, align 8
  %.not48 = icmp eq i8* %107, %1
  br i1 %.not48, label %108, label %110

108:                                              ; preds = %105
  %109 = load i8*, i8** @buf2, align 8
  %bcmp49 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %109, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 19)
  %.not50 = icmp eq i32 %bcmp49, 0
  br i1 %.not50, label %111, label %110

110:                                              ; preds = %108, %105
  call void @abort() #5
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %108
  %112 = load i8*, i8** @buf2, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 10
  %114 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 1), align 1
  store i8 %114, i8* %113, align 1
  br i1 false, label %118, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** @buf2, align 8
  %bcmp51 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %116, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 19)
  %.not52 = icmp eq i32 %bcmp51, 0
  br i1 %.not52, label %117, label %118

117:                                              ; preds = %115
  br i1 false, label %118, label %119

118:                                              ; preds = %117, %115, %111
  call void @abort() #5
  br label %UnifiedUnreachableBlock

119:                                              ; preds = %117
  %120 = getelementptr inbounds i8, i8* %1, i64 14
  %121 = bitcast i8* %2 to i16*
  %122 = bitcast i8* %120 to i16*
  %123 = load i16, i16* %121, align 1
  store i16 %123, i16* %122, align 1
  %124 = load i8*, i8** @buf2, align 8
  %.not53 = icmp eq i8* %124, %1
  br i1 %.not53, label %125, label %127

125:                                              ; preds = %119
  %126 = load i8*, i8** @buf2, align 8
  %bcmp54 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %126, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 19)
  %.not55 = icmp eq i32 %bcmp54, 0
  br i1 %.not55, label %128, label %127

127:                                              ; preds = %125, %119
  call void @abort() #5
  br label %UnifiedUnreachableBlock

128:                                              ; preds = %125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(19) %1, i8* noundef nonnull align 1 dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 19, i1 false)
  %129 = getelementptr inbounds i8, i8* %1, i64 4
  %130 = add nsw i32 %3, 6
  %131 = sext i32 %130 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %129, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i64 %131, i1 false)
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** @buf2, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 10
  %.not56 = icmp eq i8* %132, %134
  br i1 %.not56, label %135, label %137

135:                                              ; preds = %128
  %136 = load i8*, i8** @buf2, align 8
  %bcmp57 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %136, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 19)
  %.not58 = icmp eq i32 %bcmp57, 0
  br i1 %.not58, label %138, label %137

137:                                              ; preds = %135, %128
  call void @abort() #5
  br label %UnifiedUnreachableBlock

138:                                              ; preds = %135
  %139 = load i8*, i8** @buf2, align 8
  %.ptr = getelementptr inbounds i8, i8* %139, i64 11
  %140 = add nsw i32 %3, 1
  %141 = sext i32 %140 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.ptr, i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 1), i64 %141, i1 false)
  %.not59 = icmp eq i32 %3, 0
  br i1 %.not59, label %142, label %145

142:                                              ; preds = %138
  %143 = load i8*, i8** @buf2, align 8
  %bcmp61 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %143, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 19)
  %.not62 = icmp eq i32 %bcmp61, 0
  br i1 %.not62, label %144, label %145

144:                                              ; preds = %142
  br i1 false, label %145, label %146

145:                                              ; preds = %144, %142, %138
  call void @abort() #5
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %144
  %147 = getelementptr inbounds i8, i8* %1, i64 14
  %148 = add nsw i32 %3, 2
  %149 = sext i32 %148 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %147, i8* align 1 %2, i64 %149, i1 false)
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8*, i8** @buf2, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 16
  %.not63 = icmp eq i8* %150, %152
  br i1 %.not63, label %153, label %155

153:                                              ; preds = %146
  %154 = load i8*, i8** @buf2, align 8
  %bcmp64 = call i32 @bcmp(i8* noundef nonnull dereferenceable(19) %154, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 19)
  %.not65 = icmp eq i32 %bcmp64, 0
  br i1 %.not65, label %156, label %155

155:                                              ; preds = %153, %146
  call void @abort() #5
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %153
  ret void

UnifiedUnreachableBlock:                          ; preds = %155, %145, %137, %127, %118, %110, %104, %96, %91, %86, %81, %76, %68, %61, %52, %48, %43, %34, %29, %24, %17, %13, %9, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  store i32 0, i32* @inside_main, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) bitcast ([20 x i64]* @buf5 to i8*), i8* noundef nonnull align 1 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 20, i1 false)
  %1 = load i8*, i8** @buf2, align 8
  call void @test(i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
