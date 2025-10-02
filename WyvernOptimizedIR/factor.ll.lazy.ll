; ModuleID = './factor.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plane = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fill() #0 {
  br label %1

1:                                                ; preds = %66, %0
  %.0 = phi i32 [ 0, %0 ], [ %67, %66 ]
  %2 = icmp ult i32 %.0, 50
  br i1 %2, label %3, label %68

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %4
  store i8 0, i8* %5, align 1
  %6 = urem i32 %.0, 17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = or i8 %11, -128
  store i8 %12, i8* %10, align 1
  br label %13

13:                                               ; preds = %8, %3
  %14 = urem i32 %.0, 13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = or i8 %19, 64
  store i8 %20, i8* %18, align 1
  br label %21

21:                                               ; preds = %16, %13
  %22 = urem i32 %.0, 11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = or i8 %27, 32
  store i8 %28, i8* %26, align 1
  br label %29

29:                                               ; preds = %24, %21
  %30 = urem i32 %.0, 7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = or i8 %35, 16
  store i8 %36, i8* %34, align 1
  br label %37

37:                                               ; preds = %32, %29
  %38 = urem i32 %.0, 5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = or i8 %43, 8
  store i8 %44, i8* %42, align 1
  br label %45

45:                                               ; preds = %40, %37
  %46 = urem i32 %.0, 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = zext i32 %.0 to i64
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = or i8 %51, 4
  store i8 %52, i8* %50, align 1
  br label %53

53:                                               ; preds = %48, %45
  %54 = and i32 %.0, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = or i8 %59, 2
  store i8 %60, i8* %58, align 1
  br label %61

61:                                               ; preds = %56, %53
  %62 = zext i32 %.0 to i64
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = or i8 %64, 1
  store i8 %65, i8* %63, align 1
  br label %66

66:                                               ; preds = %61
  %67 = add i32 %.0, 1
  br label %1, !llvm.loop !4

68:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  call void @fill()
  br label %3

3:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %4 = icmp ult i32 %.0, 50
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = and i8 %8, 16
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %5
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %.0) #4
  br label %12

12:                                               ; preds = %10, %5
  br label %13

13:                                               ; preds = %12
  %14 = add i32 %.0, 1
  br label %3, !llvm.loop !6

15:                                               ; preds = %3
  %putchar = call i32 @putchar(i32 10)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
