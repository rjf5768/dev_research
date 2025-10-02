; ModuleID = './pr87290.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f0() #0 {
  %1 = load i32, i32* @c, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @c, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f1(i32 noundef %0) #1 {
  %2 = srem i32 %0, 16
  %3 = icmp eq i32 %2, 13
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2(i32 noundef %0) #1 {
  %2 = srem i32 %0, 16
  %3 = icmp eq i32 %2, -13
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f3(i32 noundef %0) #0 {
  %2 = srem i32 %0, 16
  %3 = icmp eq i32 %2, 13
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @f0()
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f4(i32 noundef %0) #0 {
  %2 = srem i32 %0, 16
  %3 = icmp eq i32 %2, -13
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @f0()
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  br label %1

1:                                                ; preds = %57, %0
  %.01 = phi i32 [ -30, %0 ], [ %58, %57 ]
  %2 = icmp slt i32 %.01, 30
  br i1 %2, label %3, label %59

3:                                                ; preds = %1
  %4 = shl nsw i32 %.01, 4
  %5 = or i32 %4, 13
  %6 = call i32 @f1(i32 noundef %5)
  %7 = xor i32 %.01, -1
  %.01.lobit.not = lshr i32 %7, 31
  %.not = icmp eq i32 %6, %.01.lobit.not
  br i1 %.not, label %8, label %14

8:                                                ; preds = %3
  %9 = shl nsw i32 %.01, 4
  %10 = add nsw i32 %9, -13
  %11 = call i32 @f2(i32 noundef %10)
  %12 = icmp slt i32 %.01, 1
  %13 = zext i1 %12 to i32
  %.not2 = icmp eq i32 %11, %13
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %8, %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8
  %16 = shl nsw i32 %.01, 4
  %17 = or i32 %16, 13
  call void @f3(i32 noundef %17)
  %18 = load i32, i32* @c, align 4
  %19 = xor i32 %.01, -1
  %.01.lobit.not3 = lshr i32 %19, 31
  %.not4 = icmp eq i32 %18, %.01.lobit.not3
  br i1 %.not4, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  %22 = shl nsw i32 %.01, 4
  %23 = add nsw i32 %22, -13
  call void @f4(i32 noundef %23)
  %24 = load i32, i32* @c, align 4
  %25 = icmp eq i32 %.01, 0
  %26 = select i1 %25, i32 2, i32 1
  %.not5 = icmp eq i32 %24, %26
  br i1 %.not5, label %28, label %27

27:                                               ; preds = %21
  call void @abort() #4
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %49, %28
  %.0 = phi i32 [ 1, %28 ], [ %50, %49 ]
  %30 = icmp ult i32 %.0, 16
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = shl nsw i32 %.01, 4
  %33 = or i32 %32, 13
  %34 = add nsw i32 %33, %.0
  %35 = call i32 @f1(i32 noundef %34)
  %.not7 = icmp eq i32 %35, 0
  br i1 %.not7, label %36, label %41

36:                                               ; preds = %31
  %37 = shl nsw i32 %.01, 4
  %38 = add nsw i32 %37, -13
  %39 = add nsw i32 %38, %.0
  %40 = call i32 @f2(i32 noundef %39)
  %.not8 = icmp eq i32 %40, 0
  br i1 %.not8, label %42, label %41

41:                                               ; preds = %36, %31
  call void @abort() #4
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %36
  %43 = shl nsw i32 %.01, 4
  %44 = or i32 %43, 13
  %45 = add nsw i32 %44, %.0
  call void @f3(i32 noundef %45)
  %46 = shl nsw i32 %.01, 4
  %47 = add nsw i32 %46, -13
  %48 = add nsw i32 %47, %.0
  call void @f4(i32 noundef %48)
  br label %49

49:                                               ; preds = %42
  %50 = add nuw nsw i32 %.0, 1
  br label %29, !llvm.loop !4

51:                                               ; preds = %29
  %52 = load i32, i32* @c, align 4
  %53 = icmp eq i32 %.01, 0
  %54 = select i1 %53, i32 2, i32 1
  %.not6 = icmp eq i32 %52, %54
  br i1 %.not6, label %56, label %55

55:                                               ; preds = %51
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %51
  store i32 0, i32* @c, align 4
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.01, 1
  br label %1, !llvm.loop !6

59:                                               ; preds = %1
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %55, %41, %27, %20, %14
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
