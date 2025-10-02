; ModuleID = './2020-01-06-coverage-010.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@w = dso_local global i32 0, align 4
@z = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4
@p = dso_local global i8* null, align 8
@x = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@a = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"d = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"y = %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"z = %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"v = %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"f = %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"w = %i\0A\00", align 1

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @k() #0 {
  %1 = call i32 @j()
  store i32 %1, i32* @v, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i8 5, i8* %1, align 1
  store i32 0, i32* @v, align 4
  store i32 0, i32* @w, align 4
  store i32 0, i32* @z, align 4
  store i32 0, i32* @y, align 4
  store i8* %1, i8** @p, align 8
  store i32 0, i32* @x, align 4
  store volatile i32 0, i32* @e, align 4
  store i8 0, i8* @c, align 1
  store i32 0, i32* @f, align 4
  store i32 0, i32* @d, align 4
  store i32 0, i32* @b, align 4
  store i32* %2, i32** @a, align 8
  call void @k()
  %3 = load i32, i32* @b, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #3
  %5 = load i8, i8* @c, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #3
  %8 = load i32, i32* @d, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8) #3
  %10 = load i32, i32* @x, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10) #3
  %12 = load volatile i32, i32* @e, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %12) #3
  %14 = load i32, i32* @y, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %14) #3
  %16 = load i32, i32* @z, align 4
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %16) #3
  %18 = load i32, i32* @v, align 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %18) #3
  %20 = load i32, i32* @f, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef %20) #3
  %22 = load i32, i32* @w, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %22) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal i32 @j() #0 {
  store i32 5, i32* @x, align 4
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i32 [ 5, %0 ], [ %.1, %14 ]
  %2 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %16, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %11, %3
  %storemerge = phi i32 [ 0, %3 ], [ %13, %11 ]
  %.1 = phi i32 [ %.0, %3 ], [ %7, %11 ]
  store i32 %storemerge, i32* @f, align 4
  %5 = icmp slt i32 %storemerge, 10
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  store i8* @c, i8** @p, align 8
  %7 = add nsw i32 %.1, 1
  %.not1 = icmp eq i32 %.1, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %6
  store i8 0, i8* @c, align 1
  br label %9

9:                                                ; preds = %8, %6
  store i32 0, i32* @y, align 4
  %10 = load volatile i32, i32* @e, align 4
  store i32 %10, i32* @z, align 4
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @f, align 4
  %13 = add nsw i32 %12, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  %15 = load i32*, i32** @a, align 8
  store i32 0, i32* %15, align 4
  br label %1, !llvm.loop !6

16:                                               ; preds = %1
  %17 = load i32, i32* @d, align 4
  store i32 %17, i32* @w, align 4
  ret i32 %17
}

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
