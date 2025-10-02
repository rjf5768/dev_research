; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58831.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58831.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32** null, align 8
@b = dso_local global i32* null, align 8
@a = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@p = dso_local global i32 0, align 4
@q = dso_local global i32 0, align 4
@r = dso_local global i32* null, align 8
@o = dso_local global i16 0, align 2
@j = dso_local global i16 0, align 2
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58831.c\00", align 1
@__PRETTY_FUNCTION__.fn1 = private unnamed_addr constant [23 x i8] c"int fn1(int *, int **)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32** @fn2()
  store i32** %2, i32*** @i, align 8
  %3 = load i32*, i32** @b, align 8
  %4 = load i32**, i32*** @i, align 8
  %5 = call i32 @fn1(i32* noundef %3, i32** noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32** @fn2() #0 {
  %1 = alloca [3 x i32*], align 16
  %2 = alloca [1 x i32**], align 8
  store i32 0, i32* @f, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* @f, align 4
  %5 = icmp ne i32 %4, 42
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = bitcast [3 x i32*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 24, i1 false)
  store i16 0, i16* @o, align 2
  br label %8

8:                                                ; preds = %19, %6
  %9 = load i16, i16* @o, align 2
  %10 = icmp ne i16 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %15, %11
  %13 = load i32, i32* @a, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds [1 x i32**], [1 x i32**]* %2, i64 0, i64 0
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 2
  store i32** %17, i32*** %16, align 8
  br label %12, !llvm.loop !4

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i16, i16* @o, align 2
  %21 = add i16 %20, -1
  store i16 %21, i16* @o, align 2
  br label %8, !llvm.loop !6

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @f, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @f, align 4
  br label %3, !llvm.loop !7

26:                                               ; preds = %3
  ret i32** @r
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fn1(i32* noundef %0, i32** noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32** @b, i32*** %5, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load i32, i32* @p, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @p, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @p, align 4
  br label %6, !llvm.loop !8

14:                                               ; preds = %6
  %15 = load i32**, i32*** %4, align 8
  store i32* @d, i32** %15, align 8
  %16 = load i32**, i32*** %5, align 8
  store i32* @d, i32** %16, align 8
  %17 = load i32*, i32** @r, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.fn1, i64 0, i64 0)) #3
  unreachable

21:                                               ; preds = %19
  %22 = load i32, i32* @c, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
