; ModuleID = './pr58831.ll'
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
  %1 = call i32** @fn2()
  store i32** %1, i32*** @i, align 8
  %2 = load i32*, i32** @b, align 8
  %3 = call i32 @fn1(i32* noundef %2, i32** noundef nonnull %1)
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal nonnull i32** @fn2() #1 {
  br label %1

1:                                                ; preds = %14, %0
  %storemerge = phi i32 [ 0, %0 ], [ %16, %14 ]
  store i32 %storemerge, i32* @f, align 4
  %.not = icmp eq i32 %storemerge, 42
  br i1 %.not, label %17, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %10, %2
  %storemerge1 = phi i16 [ 0, %2 ], [ %12, %10 ]
  store i16 %storemerge1, i16* @o, align 2
  %.not2 = icmp eq i16 %storemerge1, 0
  br i1 %.not2, label %13, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %8, %4
  %6 = load i32, i32* @a, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %5, !llvm.loop !4

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i16, i16* @o, align 2
  %12 = add i16 %11, -1
  br label %3, !llvm.loop !6

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @f, align 4
  %16 = add nsw i32 %15, 1
  br label %1, !llvm.loop !7

17:                                               ; preds = %1
  ret i32** @r
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fn1(i32* nocapture noundef writeonly %0, i32** nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = load i32, i32* @p, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  store i32 1, i32* %0, align 4
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* @p, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @p, align 4
  br label %3, !llvm.loop !8

9:                                                ; preds = %3
  store i32* @d, i32** %1, align 8
  store i32* @d, i32** @b, align 8
  %10 = load i32*, i32** @r, align 8
  %.not1 = icmp eq i32* %10, null
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %9
  br label %13

12:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.fn1, i64 0, i64 0)) #4
  unreachable

13:                                               ; preds = %11
  %14 = load i32, i32* @c, align 4
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
