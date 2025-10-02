; ModuleID = './strcat.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" 1111\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hello world 1111\00XXX\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" 2222\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"hello world 2222\00XXX\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" 3333\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"hello world 3333\00XXX\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c": this \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"is \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"hello world: this is a test.\00X\00", align 1
@inside_main = external dso_local global i32, align 4

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
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen = call i64 @strlen(i8* noundef nonnull %49)
  %endptr = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %endptr, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %52, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %51, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 20)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %53, label %52

52:                                               ; preds = %50, %48
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
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 5
  %strlen11 = call i64 @strlen(i8* noundef nonnull %58)
  %endptr12 = getelementptr i8, i8* %58, i64 %strlen11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %endptr12, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %61, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %60, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 20)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %62, label %61

61:                                               ; preds = %59, %57
  call void @abort() #7
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %64, i8 88, i64 64, i1 false)
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %65, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen15 = call i64 @strlen(i8* noundef nonnull %67)
  %endptr16 = getelementptr i8, i8* %67, i64 %strlen15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %endptr16, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %71, label %68

68:                                               ; preds = %66
  br i1 false, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(20) %70, i8* noundef nonnull dereferenceable(20) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 20)
  %.not18 = icmp eq i32 %bcmp17, 0
  br i1 %.not18, label %72, label %71

71:                                               ; preds = %69, %68, %66
  call void @abort() #7
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %74, i8 88, i64 64, i1 false)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %75, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen19 = call i64 @strlen(i8* noundef nonnull %77)
  %endptr20 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen19
  %78 = bitcast i8* %endptr20 to i64*
  store i64 9134095815942202, i64* %78, align 1
  %strlen21 = call i64 @strlen(i8* noundef nonnull %77)
  %endptr22 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen21
  %79 = bitcast i8* %endptr22 to i32*
  store i32 2126697, i32* %79, align 1
  %strlen23 = call i64 @strlen(i8* noundef nonnull %77)
  %endptr24 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr24, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false)
  %strlen25 = call i64 @strlen(i8* noundef nonnull %77)
  %endptr26 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %endptr26, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 5, i1 false)
  %strlen27 = call i64 @strlen(i8* noundef nonnull %77)
  %endptr28 = getelementptr [64 x i8], [64 x i8]* %1, i64 0, i64 %strlen27
  %80 = bitcast i8* %endptr28 to i16*
  store i16 46, i16* %80, align 1
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp29 = call i32 @bcmp(i8* noundef nonnull dereferenceable(30) %81, i8* noundef nonnull dereferenceable(30) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 30)
  %.not30 = icmp eq i32 %bcmp29, 0
  br i1 %.not30, label %83, label %82

82:                                               ; preds = %76
  call void @abort() #7
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %76
  store i32 1, i32* @inside_main, align 4
  br label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %85, i8 88, i64 64, i1 false)
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %86, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #6
  br label %87

87:                                               ; preds = %84
  br i1 false, label %90, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp31 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %89, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 15)
  %.not32 = icmp eq i32 %bcmp31, 0
  br i1 %.not32, label %91, label %90

90:                                               ; preds = %88, %87
  call void @abort() #7
  br label %UnifiedUnreachableBlock

91:                                               ; preds = %88
  ret void

UnifiedUnreachableBlock:                          ; preds = %90, %82, %71, %61, %52, %43, %34, %25, %16, %8
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

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
