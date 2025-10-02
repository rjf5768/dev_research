; ModuleID = './cmpdi-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cmpdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = dso_local global [8 x i64] [i64 0, i64 1, i64 -1, i64 9223372036854775807, i64 -9223372036854775808, i64 -9223372036854775807, i64 1891269347843992664, i64 -7816825554603336956], align 16
@correct_results = dso_local global [640 x i32] [i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @feq(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fne(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 13, %3 ], [ 140, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @flt(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp slt i64 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fge(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp slt i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 13, %3 ], [ 140, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fgt(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp sgt i64 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fle(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp sgt i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 13, %3 ], [ 140, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fltu(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp ult i64 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fgeu(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp ult i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 13, %3 ], [ 140, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fgtu(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp ugt i64 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 13, %4 ], [ 140, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fleu(i64 noundef %0, i64 noundef %1) #0 {
  %.not = icmp ugt i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 13, %3 ], [ 140, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %66, %0
  %.01 = phi i32 [ 0, %0 ], [ %67, %66 ]
  %.0 = phi i32* [ getelementptr inbounds ([640 x i32], [640 x i32]* @correct_results, i64 0, i64 0), %0 ], [ %.1, %66 ]
  %2 = icmp ult i32 %.01, 8
  br i1 %2, label %3, label %68

3:                                                ; preds = %1
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds [8 x i64], [8 x i64]* @args, i64 0, i64 %4
  %6 = load i64, i64* %5, align 8
  br label %7

7:                                                ; preds = %63, %3
  %.02 = phi i32 [ 0, %3 ], [ %64, %63 ]
  %.1 = phi i32* [ %.0, %3 ], [ %59, %63 ]
  %8 = icmp ult i32 %.02, 8
  br i1 %8, label %9, label %65

9:                                                ; preds = %7
  %10 = zext i32 %.02 to i64
  %11 = getelementptr inbounds [8 x i64], [8 x i64]* @args, i64 0, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @feq(i64 noundef %6, i64 noundef %12)
  %14 = load i32, i32* %.1, align 4
  %.not = icmp eq i32 %13, %14
  br i1 %.not, label %16, label %15

15:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %9
  %17 = getelementptr inbounds i32, i32* %.1, i64 1
  %18 = call i32 @fne(i64 noundef %6, i64 noundef %12)
  %19 = load i32, i32* %17, align 4
  %.not13 = icmp eq i32 %18, %19
  br i1 %.not13, label %21, label %20

20:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %16
  %22 = getelementptr inbounds i32, i32* %.1, i64 2
  %23 = call i32 @flt(i64 noundef %6, i64 noundef %12)
  %24 = load i32, i32* %22, align 4
  %.not14 = icmp eq i32 %23, %24
  br i1 %.not14, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = getelementptr inbounds i32, i32* %.1, i64 3
  %28 = call i32 @fge(i64 noundef %6, i64 noundef %12)
  %29 = load i32, i32* %27, align 4
  %.not15 = icmp eq i32 %28, %29
  br i1 %.not15, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  %32 = getelementptr inbounds i32, i32* %.1, i64 4
  %33 = call i32 @fgt(i64 noundef %6, i64 noundef %12)
  %34 = load i32, i32* %32, align 4
  %.not16 = icmp eq i32 %33, %34
  br i1 %.not16, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  %37 = getelementptr inbounds i32, i32* %.1, i64 5
  %38 = call i32 @fle(i64 noundef %6, i64 noundef %12)
  %39 = load i32, i32* %37, align 4
  %.not17 = icmp eq i32 %38, %39
  br i1 %.not17, label %41, label %40

40:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  %42 = getelementptr inbounds i32, i32* %.1, i64 6
  %43 = call i32 @fltu(i64 noundef %6, i64 noundef %12)
  %44 = load i32, i32* %42, align 4
  %.not18 = icmp eq i32 %43, %44
  br i1 %.not18, label %46, label %45

45:                                               ; preds = %41
  call void @abort() #3
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %41
  %47 = getelementptr inbounds i32, i32* %.1, i64 7
  %48 = call i32 @fgeu(i64 noundef %6, i64 noundef %12)
  %49 = load i32, i32* %47, align 4
  %.not19 = icmp eq i32 %48, %49
  br i1 %.not19, label %51, label %50

50:                                               ; preds = %46
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %46
  %52 = getelementptr inbounds i32, i32* %.1, i64 8
  %53 = call i32 @fgtu(i64 noundef %6, i64 noundef %12)
  %54 = load i32, i32* %52, align 4
  %.not20 = icmp eq i32 %53, %54
  br i1 %.not20, label %56, label %55

55:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %51
  %57 = getelementptr inbounds i32, i32* %.1, i64 9
  %58 = call i32 @fleu(i64 noundef %6, i64 noundef %12)
  %59 = getelementptr inbounds i32, i32* %.1, i64 10
  %60 = load i32, i32* %57, align 4
  %.not21 = icmp eq i32 %58, %60
  br i1 %.not21, label %62, label %61

61:                                               ; preds = %56
  call void @abort() #3
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !4

65:                                               ; preds = %7
  br label %66

66:                                               ; preds = %65
  %67 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

68:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %68, %61, %55, %50, %45, %40, %35, %30, %25, %20, %15
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
