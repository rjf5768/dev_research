; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32* null, align 8
@i = dso_local global i32** @e, align 8
@l = dso_local global i32 1, align 4
@u = dso_local global i8 0, align 1
@m = dso_local constant i32 0, align 4
@a = internal global [2 x i32] zeroinitializer, align 4
@d = dso_local global i32 0, align 4
@__const.main.t6 = private unnamed_addr constant [6 x i32*] [i32* @d, i32* @d, i32* null, i32* null, i32* null, i32* null], align 16
@n = dso_local global i32 0, align 4
@j = internal global i32** @e, align 8
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@p = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  store i8 0, i8* @u, align 1
  %1 = load i32, i32* @m, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i32*], align 16
  %4 = alloca [1 x i32*], align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32**, align 8
  %7 = alloca i32***, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %8 = bitcast [6 x i32*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32*]* @__const.main.t6 to i8*), i64 48, i1 false)
  store i32 1, i32* @n, align 4
  br label %9

9:                                                ; preds = %38, %0
  %10 = load i32, i32* @n, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = call i32 @foo()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = bitcast [1 x i32*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  store i32 0, i32* @d, align 4
  br label %17

17:                                               ; preds = %25, %15
  %18 = load i8, i8* @u, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load volatile i32**, i32*** @j, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32**, i32*** @i, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i8, i8* @u, align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* @u, align 1
  br label %17, !llvm.loop !5

28:                                               ; preds = %17
  %29 = load i32**, i32*** @i, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32**, i32*** @i, align 8
  store i32* null, i32** %30, align 8
  %31 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 20, i1 false)
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %33 = load i32**, i32*** @i, align 8
  store i32* %32, i32** %33, align 8
  %34 = getelementptr inbounds [6 x i32*], [6 x i32*]* %3, i64 0, i64 0
  store i32** %34, i32*** %6, align 8
  store i32*** %6, i32**** %7, align 8
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %4, i64 0, i64 0
  %36 = load i32***, i32**** %7, align 8
  store i32** %35, i32*** %36, align 8
  br label %37

37:                                               ; preds = %28, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @n, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @n, align 4
  br label %9, !llvm.loop !7

41:                                               ; preds = %9
  store i8 0, i8* @u, align 1
  br label %42

42:                                               ; preds = %79, %41
  %43 = load i32, i32* @b, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %2, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load i32, i32* @c, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @c, align 4
  br label %75

75:                                               ; preds = %49
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %46, !llvm.loop !8

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* @b, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @b, align 4
  br label %42, !llvm.loop !9

82:                                               ; preds = %42
  call void @baz()
  %83 = load i8, i8* @u, align 1
  %84 = sext i8 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %82
  call void @abort() #5
  unreachable

131:                                              ; preds = %82
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [105 x i32**], align 16
  %5 = alloca [1 x i32***], align 8
  %6 = call i32 @bar()
  store i32 %6, i32* @g, align 4
  %7 = load i32, i32* @l, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %156

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %153, %10
  %12 = load i32**, i32*** @i, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** @e, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* @o, align 4
  %14 = load i32, i32* @p, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* @f, align 4
  store i32 0, i32* %1, align 4
  br label %158

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %135, %17
  store i32* null, i32** %3, align 8
  %19 = bitcast [105 x i32**]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 840, i1 false)
  %20 = getelementptr inbounds [105 x i32**], [105 x i32**]* %4, i64 0, i64 0
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  %22 = getelementptr inbounds i32**, i32*** %21, i64 1
  %23 = getelementptr inbounds i32**, i32*** %22, i64 1
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  %28 = getelementptr inbounds i32**, i32*** %27, i64 1
  %29 = getelementptr inbounds i32**, i32*** %28, i64 1
  store i32** %3, i32*** %29, align 8
  %30 = getelementptr inbounds i32**, i32*** %29, i64 1
  %31 = getelementptr inbounds i32**, i32*** %30, i64 1
  %32 = getelementptr inbounds i32**, i32*** %31, i64 1
  store i32** %3, i32*** %32, align 8
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** %3, i32*** %33, align 8
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** %3, i32*** %34, align 8
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  store i32** %3, i32*** %35, align 8
  %36 = getelementptr inbounds i32**, i32*** %35, i64 1
  store i32** %3, i32*** %36, align 8
  %37 = getelementptr inbounds i32**, i32*** %36, i64 1
  %38 = getelementptr inbounds i32**, i32*** %37, i64 1
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  %41 = getelementptr inbounds i32**, i32*** %40, i64 1
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  %43 = getelementptr inbounds i32**, i32*** %42, i64 1
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  store i32** %3, i32*** %44, align 8
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  %46 = getelementptr inbounds i32**, i32*** %45, i64 1
  %47 = getelementptr inbounds i32**, i32*** %46, i64 1
  %48 = getelementptr inbounds i32**, i32*** %47, i64 1
  %49 = getelementptr inbounds i32**, i32*** %48, i64 1
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  %52 = getelementptr inbounds i32**, i32*** %51, i64 1
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** %3, i32*** %55, align 8
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %3, i32*** %63, align 8
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** %3, i32*** %64, align 8
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  store i32** %3, i32*** %65, align 8
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** %3, i32*** %66, align 8
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  store i32** %3, i32*** %67, align 8
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  %74 = getelementptr inbounds i32**, i32*** %73, i64 1
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** %3, i32*** %75, align 8
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  store i32** %3, i32*** %79, align 8
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** %3, i32*** %83, align 8
  %84 = getelementptr inbounds i32**, i32*** %83, i64 1
  %85 = getelementptr inbounds i32**, i32*** %84, i64 1
  store i32** %3, i32*** %85, align 8
  %86 = getelementptr inbounds i32**, i32*** %85, i64 1
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  store i32** %3, i32*** %88, align 8
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  store i32** %3, i32*** %94, align 8
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  %96 = getelementptr inbounds i32**, i32*** %95, i64 1
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  store i32** %3, i32*** %99, align 8
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** %3, i32*** %100, align 8
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  %102 = getelementptr inbounds i32**, i32*** %101, i64 1
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  %105 = getelementptr inbounds i32**, i32*** %104, i64 1
  store i32** %3, i32*** %105, align 8
  %106 = getelementptr inbounds i32**, i32*** %105, i64 1
  %107 = getelementptr inbounds i32**, i32*** %106, i64 1
  %108 = getelementptr inbounds i32**, i32*** %107, i64 1
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  %111 = getelementptr inbounds i32**, i32*** %110, i64 1
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  store i32** %3, i32*** %113, align 8
  %114 = getelementptr inbounds i32**, i32*** %113, i64 1
  %115 = getelementptr inbounds i32**, i32*** %114, i64 1
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  %119 = getelementptr inbounds i32**, i32*** %118, i64 1
  store i32** %3, i32*** %119, align 8
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  %123 = getelementptr inbounds i32**, i32*** %122, i64 1
  store i32** %3, i32*** %123, align 8
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  store i32** %3, i32*** %124, align 8
  %125 = getelementptr inbounds [1 x i32***], [1 x i32***]* %5, i64 0, i64 0
  %126 = getelementptr inbounds [105 x i32**], [105 x i32**]* %4, i64 0, i64 0
  store i32*** %126, i32**** %125, align 8
  %127 = load i32**, i32*** @i, align 8
  %128 = load i32*, i32** %127, align 8
  store i32 0, i32* %128, align 4
  %129 = load volatile i32**, i32*** @j, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %18
  br label %138

134:                                              ; preds = %18
  store i8 0, i8* @u, align 1
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* @k, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @k, align 4
  br label %18

138:                                              ; preds = %133
  %139 = load volatile i32**, i32*** @j, align 8
  %140 = load i32*, i32** %139, align 8
  %141 = load i32**, i32*** @i, align 8
  store i32* %140, i32** %141, align 8
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %149, %138
  %143 = load i32, i32* %2, align 4
  %144 = icmp slt i32 %143, 5
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load volatile i32**, i32*** @j, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32**, i32*** @i, align 8
  store i32* %147, i32** %148, align 8
  br label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %2, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %2, align 4
  br label %142, !llvm.loop !10

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* @h, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @h, align 4
  br label %11

156:                                              ; preds = %9
  %157 = load volatile i32**, i32*** @j, align 8
  store i32* null, i32** %157, align 8
  store i32 1, i32* %1, align 4
  br label %158

158:                                              ; preds = %156, %16
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 279}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
