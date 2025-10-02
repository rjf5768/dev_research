; ModuleID = './strlen-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global i32 0, align 4
@ca = dso_local constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@cb = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@va = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@vb = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@s = dso_local global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@pca = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i32 0, i32 0), align 8
@pcb = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i32 0, i32 0), align 8
@pva = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i32 0, i32 0), align 8
@pvb = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i32 0, i32 0), align 8
@nfails = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"line %i: strlen ((%s) = (\22%s\22)) == %u failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : ca[0]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"i0 ? ca[0] : \22123\22\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : cb[0]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"i0 ? cb[0] : \2212\22\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : va[0]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"i0 ? va[0] : \221234\22\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : vb[0]\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"i0 ? vb[0] : \2212\22\00", align 1
@__const.test_binary_cond_expr_local.lca = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lcb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@__const.test_binary_cond_expr_local.lva = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lvb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lca[0]\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"i0 ? lca[0] : \22123\22\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lcb[0]\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"i0 ? lcb[0] : \2212\22\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lva[0]\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"i0 ? lva[0] : \221234\22\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lvb[0]\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"i0 ? lvb[0] : \2212\22\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? s : i0 == 1 ? vb[0] : \22123\22\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? vb[0] : i0 == 1 ? s : \22123\22\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? \22123\22 : i0 == 1 ? s : vb[0]\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"i0 ? *pca : *pcb\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"i0 ? *pcb : *pca\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"i0 ? *pva : *pvb\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"i0 ? *pvb : *pva\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test_binary_cond_expr_global()
  call void @test_binary_cond_expr_local()
  call void @test_ternary_cond_expr()
  call void @test_binary_cond_expr_arrayptr()
  %1 = load i32, i32* @nfails, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_global() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load volatile i32, i32* @i0, align 4
  %.not = icmp eq i32 %2, 0
  %3 = select i1 %.not, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #5
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* noundef %3, i32 noundef 2) #5
  %10 = load i32, i32* @nfails, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @nfails, align 4
  br label %12

12:                                               ; preds = %8, %7
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  %15 = load volatile i32, i32* @i0, align 4
  %.not1 = icmp eq i32 %15, 0
  %16 = select i1 %.not1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i64 0, i64 0, i64 0)
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %16) #5
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %25

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %16, i32 noundef 3) #5
  %23 = load i32, i32* @nfails, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* @nfails, align 4
  br label %25

25:                                               ; preds = %21, %20
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = load volatile i32, i32* @i0, align 4
  %.not2 = icmp eq i32 %28, 0
  %29 = select i1 %.not2, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %30 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %29) #5
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef %29, i32 noundef 4) #5
  %36 = load i32, i32* @nfails, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* @nfails, align 4
  br label %38

38:                                               ; preds = %34, %33
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load volatile i32, i32* @i0, align 4
  %.not3 = icmp eq i32 %41, 0
  %42 = select i1 %.not3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i64 0, i64 0, i64 0)
  %43 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #5
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %42, i32 noundef 2) #5
  %49 = load i32, i32* @nfails, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* @nfails, align 4
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load volatile i32, i32* @i0, align 4
  %.not4 = icmp eq i32 %54, 0
  %55 = select i1 %.not4, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %56 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %55) #5
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef %55, i32 noundef 3) #5
  %62 = load i32, i32* @nfails, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* @nfails, align 4
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load volatile i32, i32* @i0, align 4
  %.not5 = icmp eq i32 %67, 0
  %68 = select i1 %.not5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i64 0, i64 0, i64 0)
  %69 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %68) #5
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef %68, i32 noundef 4) #5
  %75 = load i32, i32* @nfails, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* @nfails, align 4
  br label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load volatile i32, i32* @i0, align 4
  %.not6 = icmp eq i32 %80, 0
  %81 = select i1 %.not6, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %82 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #5
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %90

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef %81, i32 noundef 5) #5
  %88 = load i32, i32* @nfails, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* @nfails, align 4
  br label %90

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  %93 = load volatile i32, i32* @i0, align 4
  %.not7 = icmp eq i32 %93, 0
  %94 = select i1 %.not7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0)
  %95 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %94) #5
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %103

99:                                               ; preds = %92
  %100 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %94, i32 noundef 2) #5
  %101 = load i32, i32* @nfails, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* @nfails, align 4
  br label %103

103:                                              ; preds = %99, %98
  br label %104

104:                                              ; preds = %103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_local() #0 {
  %1 = alloca [2 x [3 x i8]], align 1
  %2 = alloca [2 x [3 x i8]], align 1
  %3 = alloca [2 x [3 x i8]], align 1
  %4 = alloca [2 x [3 x i8]], align 1
  %5 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %1, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %5, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lca, i64 0, i64 0, i64 0), i64 6, i1 false)
  %6 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %2, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %6, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lcb, i64 0, i64 0, i64 0), i64 6, i1 false)
  %7 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %3, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %7, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lva, i64 0, i64 0, i64 0), i64 6, i1 false)
  %8 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %4, i64 0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %8, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lvb, i64 0, i64 0, i64 0), i64 6, i1 false)
  br label %9

9:                                                ; preds = %0
  %10 = load volatile i32, i32* @i0, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %9
  br label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %1, i64 0, i64 0, i64 0
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %11 ], [ %13, %12 ]
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #5
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* noundef %15, i32 noundef 2) #5
  %22 = load i32, i32* @nfails, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* @nfails, align 4
  br label %24

24:                                               ; preds = %20, %19
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = load volatile i32, i32* @i0, align 4
  %.not1 = icmp eq i32 %27, 0
  br i1 %.not1, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %1, i64 0, i64 0, i64 0
  br label %31

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %30 ]
  %33 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %32) #5
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* noundef %32, i32 noundef 3) #5
  %39 = load i32, i32* @nfails, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* @nfails, align 4
  br label %41

41:                                               ; preds = %37, %36
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load volatile i32, i32* @i0, align 4
  %.not2 = icmp eq i32 %44, 0
  br i1 %.not2, label %46, label %45

45:                                               ; preds = %43
  br label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %2, i64 0, i64 0, i64 0
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %45 ], [ %47, %46 ]
  %50 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %49) #5
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %58

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* noundef %49, i32 noundef 4) #5
  %56 = load i32, i32* @nfails, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* @nfails, align 4
  br label %58

58:                                               ; preds = %54, %53
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = load volatile i32, i32* @i0, align 4
  %.not3 = icmp eq i32 %61, 0
  br i1 %.not3, label %64, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %2, i64 0, i64 0, i64 0
  br label %65

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %64 ]
  %67 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %66) #5
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* noundef %66, i32 noundef 2) #5
  %73 = load i32, i32* @nfails, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* @nfails, align 4
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load volatile i32, i32* @i0, align 4
  %.not4 = icmp eq i32 %78, 0
  br i1 %.not4, label %80, label %79

79:                                               ; preds = %77
  br label %82

80:                                               ; preds = %77
  %81 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %3, i64 0, i64 0, i64 0
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %79 ], [ %81, %80 ]
  %84 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %83) #5
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %92

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef %83, i32 noundef 3) #5
  %90 = load i32, i32* @nfails, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* @nfails, align 4
  br label %92

92:                                               ; preds = %88, %87
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = load volatile i32, i32* @i0, align 4
  %.not5 = icmp eq i32 %95, 0
  br i1 %.not5, label %98, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %3, i64 0, i64 0, i64 0
  br label %99

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i8* [ %97, %96 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %98 ]
  %101 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %100) #5
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %109

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* noundef %100, i32 noundef 4) #5
  %107 = load i32, i32* @nfails, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* @nfails, align 4
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load volatile i32, i32* @i0, align 4
  %.not6 = icmp eq i32 %112, 0
  br i1 %.not6, label %114, label %113

113:                                              ; preds = %111
  br label %116

114:                                              ; preds = %111
  %115 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %4, i64 0, i64 0, i64 0
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %113 ], [ %115, %114 ]
  %118 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %117) #5
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %126

122:                                              ; preds = %116
  %123 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* noundef %117, i32 noundef 5) #5
  %124 = load i32, i32* @nfails, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* @nfails, align 4
  br label %126

126:                                              ; preds = %122, %121
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load volatile i32, i32* @i0, align 4
  %.not7 = icmp eq i32 %129, 0
  br i1 %.not7, label %132, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %4, i64 0, i64 0, i64 0
  br label %133

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i8* [ %131, %130 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %132 ]
  %135 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %134) #5
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133
  %140 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* noundef %134, i32 noundef 2) #5
  %141 = load i32, i32* @nfails, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* @nfails, align 4
  br label %143

143:                                              ; preds = %139, %138
  br label %144

144:                                              ; preds = %143
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_ternary_cond_expr() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load volatile i32, i32* @i0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load i8*, i8** @s, align 8
  br label %10

6:                                                ; preds = %1
  %7 = load volatile i32, i32* @i0, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i8* [ %5, %4 ], [ %9, %6 ]
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #5
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* noundef %11, i32 noundef 6) #5
  %18 = load i32, i32* @nfails, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* @nfails, align 4
  br label %20

20:                                               ; preds = %16, %15
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %23 = load volatile i32, i32* @i0, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %34

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @i0, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** @s, align 8
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %31 ]
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i8* [ getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), %25 ], [ %33, %32 ]
  %36 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %35) #5
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* noundef %35, i32 noundef 5) #5
  %42 = load i32, i32* @nfails, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* @nfails, align 4
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load volatile i32, i32* @i0, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %58

50:                                               ; preds = %46
  %51 = load volatile i32, i32* @i0, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** @s, align 8
  br label %56

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), %55 ]
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %49 ], [ %57, %56 ]
  %60 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %59) #5
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %68

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8* noundef %59, i32 noundef 3) #5
  %66 = load i32, i32* @nfails, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* @nfails, align 4
  br label %68

68:                                               ; preds = %64, %63
  br label %69

69:                                               ; preds = %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_arrayptr() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load volatile i32, i32* @i0, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.pn.in = phi [3 x i8]** [ @pca, %3 ], [ @pcb, %4 ]
  %.pn = load [3 x i8]*, [3 x i8]** %.pn.in, align 8
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %.pn, i64 0, i64 0
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #5
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* noundef %6, i32 noundef 4) #5
  %13 = load i32, i32* @nfails, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* @nfails, align 4
  br label %15

15:                                               ; preds = %11, %10
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = load volatile i32, i32* @i0, align 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %17
  br label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %19
  %.pn2.in = phi [3 x i8]** [ @pcb, %19 ], [ @pca, %20 ]
  %.pn2 = load [3 x i8]*, [3 x i8]** %.pn2.in, align 8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %.pn2, i64 0, i64 0
  %23 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %22) #5
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* noundef %22, i32 noundef 2) #5
  %29 = load i32, i32* @nfails, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* @nfails, align 4
  br label %31

31:                                               ; preds = %27, %26
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load volatile i32, i32* @i0, align 4
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %36, label %35

35:                                               ; preds = %33
  br label %37

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %35
  %.pn4.in = phi [3 x i8]** [ @pva, %35 ], [ @pvb, %36 ]
  %.pn4 = load [3 x i8]*, [3 x i8]** %.pn4.in, align 8
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %.pn4, i64 0, i64 0
  %39 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %38) #5
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* noundef %38, i32 noundef 5) #5
  %45 = load i32, i32* @nfails, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* @nfails, align 4
  br label %47

47:                                               ; preds = %43, %42
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load volatile i32, i32* @i0, align 4
  %.not5 = icmp eq i32 %50, 0
  br i1 %.not5, label %52, label %51

51:                                               ; preds = %49
  br label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %51
  %.pn6.in = phi [3 x i8]** [ @pvb, %51 ], [ @pva, %52 ]
  %.pn6 = load [3 x i8]*, [3 x i8]** %.pn6.in, align 8
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %.pn6, i64 0, i64 0
  %55 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %54) #5
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %63

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* noundef %54, i32 noundef 3) #5
  %61 = load i32, i32* @nfails, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* @nfails, align 4
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
