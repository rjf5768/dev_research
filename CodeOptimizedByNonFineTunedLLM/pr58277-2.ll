; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@j = internal global i32 0, align 4
@a = internal global [1 x i32] zeroinitializer, align 4
@k = internal global i32 0, align 4
@n = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@r = dso_local global i32** null, align 8
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4
@i = internal global i32 0, align 4
@h = internal global i32* @f, align 8
@c = internal global i32 0, align 4
@e = internal global i32 0, align 4
@s = internal global i32*** @r, align 8
@q = internal global [2 x i32] [i32 1, i32 1], align 4
@p = internal global i32* null, align 8
@m = internal global i32 0, align 4
@t = internal global i32 0, align 4
@b = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i32, i32* @j, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  store i32 0, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @a, i64 0, i64 0), align 4
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* @j, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @j, align 4
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  call void @fn3()
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* @k, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  call void @fn1()
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @k, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @k, align 4
  br label %10, !llvm.loop !6

17:                                               ; preds = %10
  call void @fn1()
  %18 = load i8, i8* @n, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #3
  unreachable

21:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal void @fn3() #0 {
  %1 = alloca [8 x i32*], align 16
  %2 = alloca [6 x i32*], align 16
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32**, align 8
  %5 = alloca i32***, align 8
  %6 = alloca i32, align 4
  %7 = bitcast [8 x i32*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false)
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i32, i32* @i, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  store i32 0, i32* @x, align 4
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @i, align 4
  br label %8, !llvm.loop !7

15:                                               ; preds = %8
  %16 = call i32 @fn2()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = bitcast [6 x i32*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  br label %20

20:                                               ; preds = %26, %18
  %21 = load i8, i8* @n, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load volatile i32*, i32** @h, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24
  %27 = load i8, i8* @n, align 1
  %28 = add i8 %27, 1
  store i8 %28, i8* @n, align 1
  br label %20, !llvm.loop !8

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* @c, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  store i32 %35, i32* @o, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @c, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @c, align 4
  br label %30, !llvm.loop !9

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %47, %39
  %41 = load i32, i32* @e, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = getelementptr inbounds [8 x i32*], [8 x i32*]* %1, i64 0, i64 0
  store i32** %44, i32*** %4, align 8
  store i32*** %4, i32**** %5, align 8
  %45 = getelementptr inbounds [6 x i32*], [6 x i32*]* %2, i64 0, i64 0
  %46 = load i32***, i32**** %5, align 8
  store i32** %45, i32*** %46, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @e, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @e, align 4
  br label %40, !llvm.loop !10

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %15
  %52 = load volatile i32***, i32**** @s, align 8
  store i32** null, i32*** %52, align 8
  store i8 0, i8* @n, align 1
  br label %53

53:                                               ; preds = %62, %51
  store i32 0, i32* %6, align 4
  %54 = load i8, i8* @n, align 1
  %55 = sext i8 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* @q, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load i32**, i32*** @r, align 8
  store i32* %6, i32** %61, align 8
  br label %62

62:                                               ; preds = %60
  store i8 0, i8* @n, align 1
  br label %53

63:                                               ; preds = %59
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @fn2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [175 x i32**], align 16
  %4 = alloca [1 x i32***], align 8
  store i8 0, i8* @n, align 1
  br label %5

5:                                                ; preds = %199, %0
  %6 = load i32, i32* @g, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %202

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %194, %8
  %10 = load volatile i32, i32* @d, align 4
  %11 = bitcast [175 x i32**]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 1400, i1 false)
  %12 = getelementptr inbounds [175 x i32**], [175 x i32**]* %3, i64 0, i64 0
  %13 = getelementptr inbounds i32**, i32*** %12, i64 1
  %14 = getelementptr inbounds i32**, i32*** %13, i64 1
  %15 = getelementptr inbounds i32**, i32*** %14, i64 1
  %16 = getelementptr inbounds i32**, i32*** %15, i64 1
  %17 = getelementptr inbounds i32**, i32*** %16, i64 1
  %18 = getelementptr inbounds i32**, i32*** %17, i64 1
  %19 = getelementptr inbounds i32**, i32*** %18, i64 1
  %20 = getelementptr inbounds i32**, i32*** %19, i64 1
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  %22 = getelementptr inbounds i32**, i32*** %21, i64 1
  %23 = getelementptr inbounds i32**, i32*** %22, i64 1
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  %28 = getelementptr inbounds i32**, i32*** %27, i64 1
  %29 = getelementptr inbounds i32**, i32*** %28, i64 1
  %30 = getelementptr inbounds i32**, i32*** %29, i64 1
  %31 = getelementptr inbounds i32**, i32*** %30, i64 1
  %32 = getelementptr inbounds i32**, i32*** %31, i64 1
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  %36 = getelementptr inbounds i32**, i32*** %35, i64 1
  %37 = getelementptr inbounds i32**, i32*** %36, i64 1
  %38 = getelementptr inbounds i32**, i32*** %37, i64 1
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  %41 = getelementptr inbounds i32**, i32*** %40, i64 1
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  %43 = getelementptr inbounds i32**, i32*** %42, i64 1
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
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
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  %74 = getelementptr inbounds i32**, i32*** %73, i64 1
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  %84 = getelementptr inbounds i32**, i32*** %83, i64 1
  %85 = getelementptr inbounds i32**, i32*** %84, i64 1
  %86 = getelementptr inbounds i32**, i32*** %85, i64 1
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  %96 = getelementptr inbounds i32**, i32*** %95, i64 1
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  %102 = getelementptr inbounds i32**, i32*** %101, i64 1
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  %105 = getelementptr inbounds i32**, i32*** %104, i64 1
  %106 = getelementptr inbounds i32**, i32*** %105, i64 1
  %107 = getelementptr inbounds i32**, i32*** %106, i64 1
  %108 = getelementptr inbounds i32**, i32*** %107, i64 1
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  %111 = getelementptr inbounds i32**, i32*** %110, i64 1
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  %114 = getelementptr inbounds i32**, i32*** %113, i64 1
  %115 = getelementptr inbounds i32**, i32*** %114, i64 1
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  %119 = getelementptr inbounds i32**, i32*** %118, i64 1
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  %123 = getelementptr inbounds i32**, i32*** %122, i64 1
  store i32** %2, i32*** %123, align 8
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  %126 = getelementptr inbounds i32**, i32*** %125, i64 1
  %127 = getelementptr inbounds i32**, i32*** %126, i64 1
  %128 = getelementptr inbounds i32**, i32*** %127, i64 1
  store i32** %2, i32*** %128, align 8
  %129 = getelementptr inbounds i32**, i32*** %128, i64 1
  store i32** %2, i32*** %129, align 8
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  store i32** %2, i32*** %130, align 8
  %131 = getelementptr inbounds i32**, i32*** %130, i64 1
  store i32** %2, i32*** %131, align 8
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  store i32** %2, i32*** %132, align 8
  %133 = getelementptr inbounds i32**, i32*** %132, i64 1
  store i32** %2, i32*** %133, align 8
  %134 = getelementptr inbounds i32**, i32*** %133, i64 1
  store i32** %2, i32*** %134, align 8
  %135 = getelementptr inbounds i32**, i32*** %134, i64 1
  %136 = getelementptr inbounds i32**, i32*** %135, i64 1
  store i32** %2, i32*** %136, align 8
  %137 = getelementptr inbounds i32**, i32*** %136, i64 1
  %138 = getelementptr inbounds i32**, i32*** %137, i64 1
  store i32** %2, i32*** %138, align 8
  %139 = getelementptr inbounds i32**, i32*** %138, i64 1
  store i32** %2, i32*** %139, align 8
  %140 = getelementptr inbounds i32**, i32*** %139, i64 1
  store i32** %2, i32*** %140, align 8
  %141 = getelementptr inbounds i32**, i32*** %140, i64 1
  %142 = getelementptr inbounds i32**, i32*** %141, i64 1
  store i32** %2, i32*** %142, align 8
  %143 = getelementptr inbounds i32**, i32*** %142, i64 1
  store i32** %2, i32*** %143, align 8
  %144 = getelementptr inbounds i32**, i32*** %143, i64 1
  %145 = getelementptr inbounds i32**, i32*** %144, i64 1
  store i32** %2, i32*** %145, align 8
  %146 = getelementptr inbounds i32**, i32*** %145, i64 1
  store i32** %2, i32*** %146, align 8
  %147 = getelementptr inbounds i32**, i32*** %146, i64 1
  store i32** %2, i32*** %147, align 8
  %148 = getelementptr inbounds i32**, i32*** %147, i64 1
  store i32** %2, i32*** %148, align 8
  %149 = getelementptr inbounds i32**, i32*** %148, i64 1
  %150 = getelementptr inbounds i32**, i32*** %149, i64 1
  store i32** %2, i32*** %150, align 8
  %151 = getelementptr inbounds i32**, i32*** %150, i64 1
  store i32** %2, i32*** %151, align 8
  %152 = getelementptr inbounds i32**, i32*** %151, i64 1
  store i32** %2, i32*** %152, align 8
  %153 = getelementptr inbounds i32**, i32*** %152, i64 1
  store i32** %2, i32*** %153, align 8
  %154 = getelementptr inbounds i32**, i32*** %153, i64 1
  store i32** %2, i32*** %154, align 8
  %155 = getelementptr inbounds i32**, i32*** %154, i64 1
  %156 = getelementptr inbounds i32**, i32*** %155, i64 1
  store i32** %2, i32*** %156, align 8
  %157 = getelementptr inbounds i32**, i32*** %156, i64 1
  store i32** %2, i32*** %157, align 8
  %158 = getelementptr inbounds i32**, i32*** %157, i64 1
  %159 = getelementptr inbounds i32**, i32*** %158, i64 1
  store i32** %2, i32*** %159, align 8
  %160 = getelementptr inbounds i32**, i32*** %159, i64 1
  %161 = getelementptr inbounds i32**, i32*** %160, i64 1
  store i32** %2, i32*** %161, align 8
  %162 = getelementptr inbounds i32**, i32*** %161, i64 1
  store i32** %2, i32*** %162, align 8
  %163 = getelementptr inbounds i32**, i32*** %162, i64 1
  %164 = getelementptr inbounds i32**, i32*** %163, i64 1
  store i32** %2, i32*** %164, align 8
  %165 = getelementptr inbounds i32**, i32*** %164, i64 1
  store i32** %2, i32*** %165, align 8
  %166 = getelementptr inbounds i32**, i32*** %165, i64 1
  store i32** %2, i32*** %166, align 8
  %167 = getelementptr inbounds i32**, i32*** %166, i64 1
  store i32** %2, i32*** %167, align 8
  %168 = getelementptr inbounds i32**, i32*** %167, i64 1
  store i32** %2, i32*** %168, align 8
  %169 = getelementptr inbounds i32**, i32*** %168, i64 1
  %170 = getelementptr inbounds i32**, i32*** %169, i64 1
  store i32** %2, i32*** %170, align 8
  %171 = getelementptr inbounds i32**, i32*** %170, i64 1
  %172 = getelementptr inbounds i32**, i32*** %171, i64 1
  %173 = getelementptr inbounds i32**, i32*** %172, i64 1
  %174 = getelementptr inbounds i32**, i32*** %173, i64 1
  store i32** %2, i32*** %174, align 8
  %175 = getelementptr inbounds i32**, i32*** %174, i64 1
  store i32** %2, i32*** %175, align 8
  %176 = getelementptr inbounds i32**, i32*** %175, i64 1
  store i32** %2, i32*** %176, align 8
  %177 = getelementptr inbounds i32**, i32*** %176, i64 1
  %178 = getelementptr inbounds i32**, i32*** %177, i64 1
  %179 = getelementptr inbounds i32**, i32*** %178, i64 1
  store i32** %2, i32*** %179, align 8
  %180 = getelementptr inbounds i32**, i32*** %179, i64 1
  store i32** %2, i32*** %180, align 8
  %181 = getelementptr inbounds i32**, i32*** %180, i64 1
  store i32** %2, i32*** %181, align 8
  %182 = getelementptr inbounds i32**, i32*** %181, i64 1
  %183 = getelementptr inbounds i32**, i32*** %182, i64 1
  store i32** %2, i32*** %183, align 8
  %184 = getelementptr inbounds i32**, i32*** %183, i64 1
  %185 = getelementptr inbounds i32**, i32*** %184, i64 1
  store i32** %2, i32*** %185, align 8
  %186 = getelementptr inbounds i32**, i32*** %185, i64 1
  store i32** %2, i32*** %186, align 8
  %187 = getelementptr inbounds [1 x i32***], [1 x i32***]* %4, i64 0, i64 0
  %188 = getelementptr inbounds [175 x i32**], [175 x i32**]* %3, i64 0, i64 0
  store i32*** %188, i32**** %187, align 8
  %189 = load i32*, i32** @p, align 8
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %9
  br label %197

193:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %203

194:                                              ; No predecessors!
  %195 = load i32, i32* @m, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @m, align 4
  br label %9

197:                                              ; preds = %192
  %198 = load volatile i32*, i32** @h, align 8
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %197
  %200 = load i32, i32* @t, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @t, align 4
  br label %5, !llvm.loop !11

202:                                              ; preds = %5
  store i32 1, i32* %1, align 4
  br label %203

203:                                              ; preds = %202, %193
  %204 = load i32, i32* %1, align 4
  ret i32 %204
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1() #0 {
  %1 = load i32, i32* @b, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @b, align 4
  %26 = load i32, i32* @b, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* @b, align 4
  %51 = load i32, i32* @b, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @b, align 4
  %58 = load i32, i32* @b, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* @b, align 4
  %83 = load i32, i32* @b, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* @b, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

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
!11 = distinct !{!11, !5}
