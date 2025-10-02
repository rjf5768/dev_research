; ModuleID = './str.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @strncmpic(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %47, %3
  %.03 = phi i32 [ %2, %3 ], [ %50, %47 ]
  %.02 = phi i8* [ %0, %3 ], [ %48, %47 ]
  %.01 = phi i8* [ %1, %3 ], [ %49, %47 ]
  %5 = icmp sgt i32 %.03, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load i8, i8* %.01, align 1
  %8 = icmp ne i8 %7, 0
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i1 [ false, %4 ], [ %8, %6 ]
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %9
  %12 = call i16** @__ctype_b_loc() #2
  %13 = load i16*, i16** %12, align 8
  %14 = load i8, i8* %.02, align 1
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds i16, i16* %13, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = and i16 %17, 256
  %.not12 = icmp eq i16 %18, 0
  br i1 %.not12, label %23, label %19

19:                                               ; preds = %11
  %20 = load i8, i8* %.02, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, 32
  br label %26

23:                                               ; preds = %11
  %24 = load i8, i8* %.02, align 1
  %25 = sext i8 %24 to i32
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %22, %19 ], [ %25, %23 ]
  %28 = call i16** @__ctype_b_loc() #2
  %29 = load i16*, i16** %28, align 8
  %30 = load i8, i8* %.01, align 1
  %31 = sext i8 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = and i16 %33, 256
  %.not13 = icmp eq i16 %34, 0
  br i1 %.not13, label %39, label %35

35:                                               ; preds = %26
  %36 = load i8, i8* %.01, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, 32
  br label %42

39:                                               ; preds = %26
  %40 = load i8, i8* %.01, align 1
  %41 = sext i8 %40 to i32
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %38, %35 ], [ %41, %39 ]
  %44 = icmp eq i32 %27, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  br label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.02, i64 1
  %49 = getelementptr inbounds i8, i8* %.01, i64 1
  %50 = add nsw i32 %.03, -1
  br label %4, !llvm.loop !4

.loopexit:                                        ; preds = %9
  br label %51

51:                                               ; preds = %.loopexit, %46
  %52 = icmp sgt i32 %.03, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %51
  %54 = call i16** @__ctype_b_loc() #2
  %55 = load i16*, i16** %54, align 8
  %56 = load i8, i8* %.02, align 1
  %57 = sext i8 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = and i16 %59, 256
  %.not = icmp eq i16 %60, 0
  br i1 %.not, label %65, label %61

61:                                               ; preds = %53
  %62 = load i8, i8* %.02, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, 32
  br label %68

65:                                               ; preds = %53
  %66 = load i8, i8* %.02, align 1
  %67 = sext i8 %66 to i32
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i32 [ %64, %61 ], [ %67, %65 ]
  %70 = call i16** @__ctype_b_loc() #2
  %71 = load i16*, i16** %70, align 8
  %72 = load i8, i8* %.01, align 1
  %73 = sext i8 %72 to i64
  %74 = getelementptr inbounds i16, i16* %71, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = and i16 %75, 256
  %.not10 = icmp eq i16 %76, 0
  br i1 %.not10, label %81, label %77

77:                                               ; preds = %68
  %78 = load i8, i8* %.01, align 1
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, 32
  br label %84

81:                                               ; preds = %68
  %82 = load i8, i8* %.01, align 1
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i32 [ %80, %77 ], [ %83, %81 ]
  %86 = sub nsw i32 %69, %85
  br label %88

87:                                               ; preds = %51
  br label %88

88:                                               ; preds = %87, %84
  %.0 = phi i32 [ %86, %84 ], [ 0, %87 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @strcmpic(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %41, %2
  %.01 = phi i8* [ %0, %2 ], [ %42, %41 ]
  %.0 = phi i8* [ %1, %2 ], [ %43, %41 ]
  %4 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %3
  %6 = call i16** @__ctype_b_loc() #2
  %7 = load i16*, i16** %6, align 8
  %8 = load i8, i8* %.01, align 1
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %7, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 256
  %.not9 = icmp eq i16 %12, 0
  br i1 %.not9, label %17, label %13

13:                                               ; preds = %5
  %14 = load i8, i8* %.01, align 1
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 %15, 32
  br label %20

17:                                               ; preds = %5
  %18 = load i8, i8* %.01, align 1
  %19 = sext i8 %18 to i32
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %16, %13 ], [ %19, %17 ]
  %22 = call i16** @__ctype_b_loc() #2
  %23 = load i16*, i16** %22, align 8
  %24 = load i8, i8* %.0, align 1
  %25 = sext i8 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = and i16 %27, 256
  %.not10 = icmp eq i16 %28, 0
  br i1 %.not10, label %33, label %29

29:                                               ; preds = %20
  %30 = load i8, i8* %.0, align 1
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %31, 32
  br label %36

33:                                               ; preds = %20
  %34 = load i8, i8* %.0, align 1
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %35, %33 ]
  %38 = icmp eq i32 %21, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %41

40:                                               ; preds = %36
  br label %44

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, i8* %.01, i64 1
  %43 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %3, !llvm.loop !6

.loopexit:                                        ; preds = %3
  br label %44

44:                                               ; preds = %.loopexit, %40
  %45 = call i16** @__ctype_b_loc() #2
  %46 = load i16*, i16** %45, align 8
  %47 = load i8, i8* %.01, align 1
  %48 = sext i8 %47 to i64
  %49 = getelementptr inbounds i16, i16* %46, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = and i16 %50, 256
  %.not6 = icmp eq i16 %51, 0
  br i1 %.not6, label %56, label %52

52:                                               ; preds = %44
  %53 = load i8, i8* %.01, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %54, 32
  br label %59

56:                                               ; preds = %44
  %57 = load i8, i8* %.01, align 1
  %58 = sext i8 %57 to i32
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ]
  %61 = call i16** @__ctype_b_loc() #2
  %62 = load i16*, i16** %61, align 8
  %63 = load i8, i8* %.0, align 1
  %64 = sext i8 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = and i16 %66, 256
  %.not7 = icmp eq i16 %67, 0
  br i1 %.not7, label %72, label %68

68:                                               ; preds = %59
  %69 = load i8, i8* %.0, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %70, 32
  br label %75

72:                                               ; preds = %59
  %73 = load i8, i8* %.0, align 1
  %74 = sext i8 %73 to i32
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %71, %68 ], [ %74, %72 ]
  %77 = sub nsw i32 %60, %76
  ret i32 %77
}

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
