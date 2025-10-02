; ModuleID = './pr47337.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47337.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@w = dso_local global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@a = internal global [256 x i32] zeroinitializer, align 16
@c = internal global i8 0, align 1
@d = internal global i32 0, align 4
@e = internal global i64 0, align 8
@f = internal global i32* @d, align 8
@b = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = load volatile i8*, i8** @w, align 8
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %0
  %.01 = phi i32 [ 1, %5 ], [ 0, %0 ]
  br label %7

7:                                                ; preds = %18, %6
  %.03 = phi i32 [ 0, %6 ], [ %19, %18 ]
  %.02 = phi i32 [ 0, %6 ], [ %.1, %18 ]
  %8 = icmp ult i32 %.03, 256
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %13, %9
  %.1 = phi i32 [ %.02, %9 ], [ 1, %13 ]
  %.0 = phi i32 [ 8, %9 ], [ %14, %13 ]
  %11 = icmp sgt i32 %.0, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.0, -1
  br label %10, !llvm.loop !4

15:                                               ; preds = %10
  %16 = zext i32 %.03 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %16
  store i32 %.1, i32* %17, align 4
  br label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !6

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %26, %20
  %.14 = phi i32 [ 0, %20 ], [ %27, %26 ]
  %22 = icmp ult i32 %.14, 8
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = zext i32 %.14 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %23
  %27 = add nuw nsw i32 %.14, 1
  br label %21, !llvm.loop !7

28:                                               ; preds = %21
  %29 = load i8, i8* @c, align 1
  %30 = call signext i8 @bar(i8 noundef signext %29, i8 noundef signext %29)
  %31 = sext i8 %30 to i32
  store i32 %31, i32* @d, align 4
  %32 = sext i8 %29 to i32
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = sext i32 %34 to i64
  %36 = call signext i16 @foo(i64 noundef %35, i64 noundef 10)
  %37 = or i16 %36, 1
  %38 = sext i16 %37 to i32
  %39 = call i32 @baz(i32 noundef %32, i32 noundef %38)
  store i32 %32, i32* @d, align 4
  %40 = sext i8 %29 to i64
  call void @fnx(i64 noundef %40, i32 noundef %.01)
  %41 = load i64, i64* @e, align 8
  call void @fnx(i64 noundef %41, i32 noundef %.01)
  %42 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %42, 0
  br i1 %.not, label %44, label %43

43:                                               ; preds = %28
  call void @abort() #7
  unreachable

44:                                               ; preds = %28
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal signext i8 @bar(i8 noundef signext %0, i8 noundef signext %1) #2 {
  %3 = sub i8 %0, %1
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @baz(i32 noundef returned %0, i32 noundef %1) #3 {
  %sext = mul i32 %1, 196608
  %3 = ashr exact i32 %sext, 16
  %4 = icmp ne i32 %3, %1
  %5 = zext i1 %4 to i32
  %6 = load i32*, i32** @f, align 8
  store i32 %5, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %storemerge = phi i8 [ 0, %2 ], [ %21, %19 ]
  store i8 %storemerge, i8* @c, align 1
  %8 = icmp slt i8 %storemerge, 2
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %17, %9
  %11 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %17, label %12

12:                                               ; preds = %10
  %13 = load i64, i64* @e, align 8
  %.not1 = icmp eq i64 %13, 0
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %12
  store i64 1, i64* @e, align 8
  br label %16

15:                                               ; preds = %12
  br label %23

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %10
  store i32 1, i32* @d, align 4
  br label %10

18:                                               ; preds = %16
  store i32* @d, i32** @f, align 8
  br label %19

19:                                               ; preds = %18
  %20 = load i8, i8* @c, align 1
  %21 = add i8 %20, 1
  br label %7, !llvm.loop !8

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %15
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal signext i16 @foo(i64 noundef %0, i64 noundef %1) #2 {
  %3 = sdiv i64 %0, %1
  %4 = trunc i64 %3 to i16
  ret i16 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @fnx(i64 noundef %0, i32 noundef %1) #4 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %23

3:                                                ; preds = %2
  %4 = load i32, i32* @b, align 4
  %5 = and i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @b, align 4
  %9 = and i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @b, align 4
  %13 = zext i32 %12 to i64
  %14 = xor i64 %13, %0
  %15 = and i64 %14, 1
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @b, align 4
  %18 = zext i32 %17 to i64
  %19 = xor i64 %18, %0
  %20 = and i64 %19, 1
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @b, align 4
  br label %23

23:                                               ; preds = %3, %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
