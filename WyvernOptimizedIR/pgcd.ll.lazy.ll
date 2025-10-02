; ModuleID = './pgcd.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pgcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @pgcd(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %.not = icmp eq i16* %0, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %2
  %8 = load i16, i16* %0, align 2
  %9 = add i16 %8, 1
  store i16 %9, i16* %0, align 2
  br label %10

10:                                               ; preds = %7, %2
  %11 = call i16* @pabs(i16* noundef %0) #2
  %12 = call i16* @pnew(i16* noundef %11) #2
  store i16* %12, i16** %3, align 8
  %.not1 = icmp eq i16* %1, null
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %10
  %14 = load i16, i16* %1, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %1, align 2
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i16* @pabs(i16* noundef %1) #2
  %18 = call i16* @pnew(i16* noundef %17) #2
  store i16* %18, i16** %4, align 8
  store i16* null, i16** %5, align 8
  store i16* null, i16** %6, align 8
  br label %19

19:                                               ; preds = %22, %16
  %20 = load i16*, i16** %4, align 8
  %21 = call i32 @pcmpz(i16* noundef %20) #2
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %30, label %22

22:                                               ; preds = %19
  %23 = load i16*, i16** %3, align 8
  %24 = load i16*, i16** %4, align 8
  %25 = call i16* @pdivmod(i16* noundef %23, i16* noundef %24, i16** noundef nonnull %5, i16** noundef nonnull %6) #2
  %26 = load i16*, i16** %4, align 8
  %27 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %26) #2
  %28 = load i16*, i16** %6, align 8
  %29 = call i16* @psetq(i16** noundef nonnull %4, i16* noundef %28) #2
  br label %19, !llvm.loop !4

30:                                               ; preds = %19
  %31 = load i16*, i16** %4, align 8
  %.not3 = icmp eq i16* %31, null
  br i1 %.not3, label %40, label %32

32:                                               ; preds = %30
  %33 = load i16*, i16** %4, align 8
  %34 = load i16, i16* %33, align 2
  %35 = add i16 %34, -1
  store i16 %35, i16* %33, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i16*, i16** %4, align 8
  %39 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %38) #2
  br label %40

40:                                               ; preds = %37, %32, %30
  %41 = load i16*, i16** %5, align 8
  %.not4 = icmp eq i16* %41, null
  br i1 %.not4, label %50, label %42

42:                                               ; preds = %40
  %43 = load i16*, i16** %5, align 8
  %44 = load i16, i16* %43, align 2
  %45 = add i16 %44, -1
  store i16 %45, i16* %43, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i16*, i16** %5, align 8
  %49 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %48) #2
  br label %50

50:                                               ; preds = %47, %42, %40
  %51 = load i16*, i16** %6, align 8
  %.not5 = icmp eq i16* %51, null
  br i1 %.not5, label %60, label %52

52:                                               ; preds = %50
  %53 = load i16*, i16** %6, align 8
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, -1
  store i16 %55, i16* %53, align 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i16*, i16** %6, align 8
  %59 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %58) #2
  br label %60

60:                                               ; preds = %57, %52, %50
  %.not6 = icmp eq i16* %0, null
  br i1 %.not6, label %67, label %61

61:                                               ; preds = %60
  %62 = load i16, i16* %0, align 2
  %63 = add i16 %62, -1
  store i16 %63, i16* %0, align 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %0) #2
  br label %67

67:                                               ; preds = %65, %61, %60
  %.not7 = icmp eq i16* %1, null
  br i1 %.not7, label %74, label %68

68:                                               ; preds = %67
  %69 = load i16, i16* %1, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %1, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %1) #2
  br label %74

74:                                               ; preds = %72, %68, %67
  %75 = load i16*, i16** %3, align 8
  %76 = call i16* @presult(i16* noundef %75) #2
  ret i16* %76
}

declare dso_local i16* @pnew(i16* noundef) #1

declare dso_local i16* @pabs(i16* noundef) #1

declare dso_local i32 @pcmpz(i16* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i32 @pfree(...) #1

declare dso_local i16* @presult(i16* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
