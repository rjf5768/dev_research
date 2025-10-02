; ModuleID = './2020-01-06-coverage-002.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i8 0, align 1
@y = dso_local global i64 0, align 8
@z = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"a = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"z = %li\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"y = %li\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @f() #0 {
  store i32 0, i32* @x, align 4
  br label %1

1:                                                ; preds = %4, %0
  %.01 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.01, 5
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %13, %6
  %8 = icmp ult i32 %.01, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %17, %9
  br label %11

11:                                               ; preds = %12, %10
  br label %12

12:                                               ; preds = %11
  br label %11

13:                                               ; No predecessors!
  br label %7, !llvm.loop !6

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %18, label %17

17:                                               ; preds = %15
  br label %10

18:                                               ; preds = %15
  %19 = load i16, i16* @d, align 2
  %.not2 = icmp eq i16 %19, 0
  br i1 %.not2, label %24, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* @e, align 4
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %20
  br label %30

23:                                               ; preds = %20
  br label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @c, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %24
  br label %28

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %26
  br label %15

29:                                               ; preds = %23
  store i64 0, i64* @y, align 8
  br label %30

30:                                               ; preds = %29, %22
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i64 0, i64* @z, align 8
  store i64 0, i64* @y, align 8
  store i32 4, i32* @x, align 4
  store i16 10, i16* @d, align 2
  store i8 0, i8* @b, align 1
  store i32 0, i32* @e, align 4
  store i32 -2, i32* @c, align 4
  store i32 0, i32* @a, align 4
  %1 = call i64 @f()
  store i64 %1, i64* @z, align 8
  %2 = load i32, i32* @a, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #3
  %4 = load i8, i8* @b, align 1
  %5 = sext i8 %4 to i32
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %5) #3
  %7 = load i32, i32* @c, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7) #3
  %9 = load i16, i16* @d, align 2
  %10 = sext i16 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10) #3
  %12 = load i32, i32* @x, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %12) #3
  %14 = load i32, i32* @e, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %14) #3
  %16 = load i64, i64* @z, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 noundef %16) #3
  %18 = load i64, i64* @y, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef %18) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
