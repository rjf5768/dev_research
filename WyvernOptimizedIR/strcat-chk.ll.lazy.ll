; ModuleID = './strcat-chk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat-chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [10 x i8], [10 x i8] }
%struct.A.0 = type { [10 x i8], [10 x i8] }

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@chk_calls = external dso_local global i32, align 4
@strcat_disallowed = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" 1111\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"hello world 1111\00XXX\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" 2222\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"hello world 2222\00XXX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" 3333\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hello world 3333\00XXX\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c": this \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"is \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"hello world: this is a test.\00X\00", align 1
@s5 = dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@s4 = dso_local global i8* null, align 8
@chk_fail_allowed = external dso_local global i32, align 4
@chk_fail_buf = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca [64 x i8], align 16
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  br label %2

2:                                                ; preds = %0
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %3, i8 88, i64 64, i1 false)
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %4, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = call i8* @__strcat_chk(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 64) #9
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not = icmp eq i8* %7, %8
  br i1 %.not, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %10, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %9, %5
  call void @abort() #13
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %14, i8 88, i64 64, i1 false)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %15, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %18 = call i8* @__strcat_chk(i8* noundef nonnull %17, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 64) #9
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not2 = icmp eq i8* %18, %19
  br i1 %.not2, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %21, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %20, %16
  call void @abort() #13
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %25, i8 88, i64 64, i1 false)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %26, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %27

27:                                               ; preds = %24
  br i1 false, label %31, label %28

28:                                               ; preds = %27
  br i1 false, label %31, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %30, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %32, label %31

31:                                               ; preds = %29, %28, %27
  call void @abort() #13
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %34, i8 88, i64 64, i1 false)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %35, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %36

36:                                               ; preds = %33
  br i1 false, label %40, label %37

37:                                               ; preds = %36
  br i1 false, label %40, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %39, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %41, label %40

40:                                               ; preds = %38, %37, %36
  call void @abort() #13
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %43, i8 88, i64 64, i1 false)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %44, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %45

45:                                               ; preds = %42
  br i1 false, label %49, label %46

46:                                               ; preds = %45
  br i1 false, label %49, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %48, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %50, label %49

49:                                               ; preds = %47, %46, %45
  call void @abort() #13
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  %51 = load volatile i32, i32* @chk_calls, align 4
  %.not11 = icmp eq i32 %51, 0
  br i1 %.not11, label %53, label %52

52:                                               ; preds = %50
  call void @abort() #13
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  store volatile i32 0, i32* @strcat_disallowed, align 4
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %55, i8 88, i64 64, i1 false)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %56, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %59 = call i8* @__strcat_chk(i8* noundef nonnull %58, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 noundef 64) #9
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not12 = icmp eq i8* %59, %60
  br i1 %.not12, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %62, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 20)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %64, label %63

63:                                               ; preds = %61, %57
  call void @abort() #13
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %66, i8 88, i64 64, i1 false)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %67, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 5
  %70 = call i8* @__strcat_chk(i8* noundef nonnull %69, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 59) #9
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 5
  %.not15 = icmp eq i8* %70, %71
  br i1 %.not15, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %73, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 20)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %75, label %74

74:                                               ; preds = %72, %68
  call void @abort() #13
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %77, i8 88, i64 64, i1 false)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %78, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen = call i64 @strlen(i8* nonnull %80)
  %endptr = getelementptr i8, i8* %80, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %endptr, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %84, label %81

81:                                               ; preds = %79
  br i1 false, label %84, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp18 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %83, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 20)
  %.not19 = icmp eq i32 %bcmp18, 0
  br i1 %.not19, label %85, label %84

84:                                               ; preds = %82, %81, %79
  call void @abort() #13
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %87, i8 88, i64 64, i1 false)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %88, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %91 = call i8* @__strcat_chk(i8* noundef nonnull %90, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 noundef 64) #9
  %strlen20 = call i64 @strlen(i8* nonnull dereferenceable(1) %91)
  %endptr21 = getelementptr i8, i8* %91, i64 %strlen20
  %92 = bitcast i8* %endptr21 to i32*
  store i32 2126697, i32* %92, align 1
  %strlen22 = call i64 @strlen(i8* nonnull dereferenceable(1) %91)
  %endptr23 = getelementptr i8, i8* %91, i64 %strlen22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr23, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 3, i1 false)
  %strlen24 = call i64 @strlen(i8* nonnull dereferenceable(1) %91)
  %endptr25 = getelementptr i8, i8* %91, i64 %strlen24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %endptr25, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 5, i1 false)
  %strlen26 = call i64 @strlen(i8* nonnull dereferenceable(1) %91)
  %endptr27 = getelementptr i8, i8* %91, i64 %strlen26
  %93 = bitcast i8* %endptr27 to i16*
  store i16 46, i16* %93, align 1
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp28 = call i32 @bcmp(i8* noundef nonnull dereferenceable(30) %94, i8* noundef nonnull dereferenceable(30) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i64 30)
  %.not29 = icmp eq i32 %bcmp28, 0
  br i1 %.not29, label %96, label %95

95:                                               ; preds = %89
  call void @abort() #13
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %89
  store volatile i32 0, i32* @chk_calls, align 4
  store volatile i32 1, i32* @strcat_disallowed, align 4
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %98, i8 88, i64 64, i1 false)
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %99, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12, i1 false)
  br label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %102 = call i8* @__strcat_chk(i8* noundef nonnull %101, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef 64) #9
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %.not30 = icmp eq i8* %102, %103
  br i1 %.not30, label %104, label %106

104:                                              ; preds = %100
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp31 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %105, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %.not32 = icmp eq i32 %bcmp31, 0
  br i1 %.not32, label %107, label %106

106:                                              ; preds = %104, %100
  call void @abort() #13
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %104
  %108 = load volatile i32, i32* @chk_calls, align 4
  %.not33 = icmp eq i32 %108, 0
  br i1 %.not33, label %110, label %109

109:                                              ; preds = %107
  call void @abort() #13
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %107
  store volatile i32 0, i32* @strcat_disallowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %109, %106, %95, %84, %74, %63, %52, %49, %40, %31, %22, %11
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @__strcpy_chk(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @__strcat_chk(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.A, align 1
  %2 = alloca [20 x i8], align 16
  %3 = load i64, i64* @l1, align 8
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 5
  br label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i8* [ %6, %5 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  store i8* %12, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %12) #9, !srcloc !4
  store volatile i32 0, i32* @chk_calls, align 4
  %13 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %14 = load i8*, i8** @s3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  %16 = call i8* @__strcat_chk(i8* noundef nonnull %13, i8* noundef nonnull %15, i64 noundef 18) #9
  %17 = load i8*, i8** @s3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true, i1 false)
  %20 = call i8* @__strcat_chk(i8* noundef nonnull %10, i8* noundef nonnull %18, i64 noundef %19) #9
  %21 = load i64, i64* @l1, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = alloca [4 x i8], align 16
  %.sub4 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  br label %27

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8* [ %.sub4, %23 ], [ %26, %25 ]
  %29 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false, i1 true, i1 false)
  %30 = call i8* @__memset_chk(i8* noundef nonnull %28, i32 noundef 0, i64 noundef 3, i64 noundef %29) #9
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %28) #9, !srcloc !5
  %31 = load i8*, i8** @s2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false, i1 true, i1 false)
  %34 = call i8* @__strcat_chk(i8* noundef nonnull %28, i8* noundef nonnull %32, i64 noundef %33) #9
  %35 = getelementptr inbounds i8, i8* %28, i64 2
  %36 = load i8*, i8** @s3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = getelementptr inbounds i8, i8* %28, i64 2
  %39 = call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false, i1 true, i1 false)
  %40 = call i8* @__strcat_chk(i8* noundef nonnull %35, i8* noundef nonnull %37, i64 noundef %39) #9
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  br label %42

42:                                               ; preds = %75, %27
  %.01 = phi i32 [ 0, %27 ], [ %76, %75 ]
  %.0 = phi i8* [ %41, %27 ], [ %.4, %75 ]
  %43 = icmp ult i32 %.01, 4
  br i1 %43, label %44, label %77

44:                                               ; preds = %42
  %45 = zext i32 %.01 to i64
  %46 = load i64, i64* @l1, align 8
  %47 = add i64 %46, -1
  %48 = icmp eq i64 %47, %45
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 1
  br label %74

51:                                               ; preds = %44
  %52 = zext i32 %.01 to i64
  %53 = load i64, i64* @l1, align 8
  %54 = icmp eq i64 %53, %52
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %73

57:                                               ; preds = %51
  %58 = zext i32 %.01 to i64
  %59 = load i64, i64* @l1, align 8
  %60 = add i64 %59, 1
  %61 = icmp eq i64 %60, %58
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 5
  br label %72

64:                                               ; preds = %57
  %65 = zext i32 %.01 to i64
  %66 = load i64, i64* @l1, align 8
  %67 = add i64 %66, 2
  %68 = icmp eq i64 %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 9
  br label %71

71:                                               ; preds = %69, %64
  %.1 = phi i8* [ %70, %69 ], [ %.0, %64 ]
  br label %72

72:                                               ; preds = %71, %62
  %.2 = phi i8* [ %63, %62 ], [ %.1, %71 ]
  br label %73

73:                                               ; preds = %72, %55
  %.3 = phi i8* [ %56, %55 ], [ %.2, %72 ]
  br label %74

74:                                               ; preds = %73, %49
  %.4 = phi i8* [ %50, %49 ], [ %.3, %73 ]
  br label %75

75:                                               ; preds = %74
  %76 = add nuw nsw i32 %.01, 1
  br label %42, !llvm.loop !6

77:                                               ; preds = %42
  %78 = load i8*, i8** @s2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %81 = call i8* @__strcat_chk(i8* noundef %.0, i8* noundef nonnull %79, i64 noundef %80) #9
  %82 = load volatile i32, i32* @chk_calls, align 4
  %.not = icmp eq i32 %82, 5
  br i1 %.not, label %84, label %83

83:                                               ; preds = %77
  call void @abort() #13
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %85, i8 0, i64 20, i1 false)
  store volatile i32 0, i32* @chk_calls, align 4
  %86 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  store i8* %86, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %86) #9, !srcloc !8
  %87 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 2
  %88 = call i8* @__strcat_chk(i8* noundef nonnull %87, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef 18) #9
  %89 = call i64 @llvm.objectsize.i64.p0i8(i8* %.0, i1 false, i1 true, i1 false)
  %90 = call i8* @__strcat_chk(i8* noundef %.0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 noundef %89) #9
  %91 = load i64, i64* @l1, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %94, i64 0, i64 0
  br label %97

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 7
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %.sub, %93 ], [ %96, %95 ]
  %99 = call i64 @llvm.objectsize.i64.p0i8(i8* %98, i1 false, i1 true, i1 false)
  %100 = call i8* @__memset_chk(i8* noundef nonnull %98, i32 noundef 0, i64 noundef 3, i64 noundef %99) #9
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %98) #9, !srcloc !9
  %101 = call i64 @llvm.objectsize.i64.p0i8(i8* %98, i1 false, i1 true, i1 false)
  %102 = call i8* @__strcat_chk(i8* noundef nonnull %98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 noundef %101) #9
  %103 = load volatile i32, i32* @chk_calls, align 4
  %.not2 = icmp eq i32 %103, 2
  br i1 %.not2, label %105, label %104

104:                                              ; preds = %97
  call void @abort() #13
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %97
  store volatile i32 0, i32* @chk_calls, align 4
  %106 = load i8*, i8** @s4, align 8
  %107 = load i8*, i8** @s3, align 8
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* %106, i1 false, i1 true, i1 false)
  %109 = call i8* @__strcat_chk(i8* noundef %106, i8* noundef %107, i64 noundef %108) #9
  %110 = load volatile i32, i32* @chk_calls, align 4
  %.not3 = icmp eq i32 %110, 0
  br i1 %.not3, label %112, label %111

111:                                              ; preds = %105
  call void @abort() #13
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %105
  store volatile i32 0, i32* @chk_calls, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %111, %104, %83
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i8* @__memset_chk(i8* noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.A.0, align 1
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 0, i64 0
  store i8* %5, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %5) #9, !srcloc !10
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  store i8* %6, i8** @s5, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull %6) #9, !srcloc !11
  store volatile i32 1, i32* @chk_fail_allowed, align 4
  %7 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %7, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %9 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 9
  %13 = load i8*, i8** @s2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = call i8* @__strcat_chk(i8* noundef nonnull %12, i8* noundef nonnull %14, i64 noundef 1) #9
  call void @abort() #13
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %0
  %17 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %17, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %19 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.A.0, %struct.A.0* %1, i64 0, i32 1, i64 7
  %23 = load i8*, i8** @s3, align 8
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23)
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -3
  %27 = call i8* @__strcat_chk(i8* noundef nonnull %22, i8* noundef nonnull %26, i64 noundef 3) #9
  call void @abort() #13
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %16
  %29 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %29, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 0), align 8
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @chk_fail_buf, i64 0, i64 2), align 8
  %31 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([0 x i8*]* @chk_fail_buf to i8*))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %35 = call i8* @__strcat_chk(i8* noundef nonnull %34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef 1) #9
  call void @abort() #13
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %28
  store volatile i32 0, i32* @chk_fail_allowed, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %33, %21, %11
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #8

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @main_test() #10 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcat(i8* noalias returned, i8* noalias nocapture readonly) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 2988}
!5 = !{i64 3181}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 3782}
!9 = !{i64 3951}
!10 = !{i64 4487}
!11 = !{i64 4549}
