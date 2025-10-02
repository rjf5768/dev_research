; ModuleID = './ppowmod.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ppowmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pone = external dso_local global i16*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @ppowmod(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  store i16* null, i16** %4, align 8
  store i16* null, i16** %5, align 8
  store i16* null, i16** %6, align 8
  %.not = icmp eq i16* %2, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %3
  %8 = load i16, i16* %2, align 2
  %9 = add i16 %8, 1
  store i16 %9, i16* %2, align 2
  br label %10

10:                                               ; preds = %7, %3
  %.not1 = icmp eq i16* %0, null
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %12 = load i16, i16* %0, align 2
  %13 = add i16 %12, 1
  store i16 %13, i16* %0, align 2
  br label %14

14:                                               ; preds = %11, %10
  %15 = call i16* @psetq(i16** noundef nonnull %5, i16* noundef %0) #2
  %.not2 = icmp eq i16* %1, null
  br i1 %.not2, label %19, label %16

16:                                               ; preds = %14
  %17 = load i16, i16* %1, align 2
  %18 = add i16 %17, 1
  store i16 %18, i16* %1, align 2
  br label %19

19:                                               ; preds = %16, %14
  %20 = call i16* @psetq(i16** noundef nonnull %6, i16* noundef %1) #2
  %21 = load i16*, i16** @pone, align 8
  %22 = call i16* @psetq(i16** noundef nonnull %4, i16* noundef %21) #2
  br label %23

23:                                               ; preds = %45, %19
  %24 = load i16*, i16** %6, align 8
  %25 = call i32 @podd(i16* noundef %24) #2
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %32, label %26

26:                                               ; preds = %23
  %27 = load i16*, i16** %5, align 8
  %28 = load i16*, i16** %4, align 8
  %29 = call i16* @pmul(i16* noundef %27, i16* noundef %28) #2
  %30 = call i16* @pdivmod(i16* noundef %29, i16* noundef %2, i16** noundef null, i16** noundef nonnull inttoptr (i64 -1 to i16**)) #2
  %31 = call i16* @psetq(i16** noundef nonnull %4, i16* noundef %30) #2
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i16*, i16** %6, align 8
  %34 = call i16* @phalf(i16* noundef %33) #2
  %35 = call i16* @psetq(i16** noundef nonnull %6, i16* noundef %34) #2
  %36 = load i16*, i16** %6, align 8
  %37 = call i32 @pcmpz(i16* noundef %36) #2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %46

40:                                               ; preds = %32
  %41 = load i16*, i16** %5, align 8
  %42 = call i16* @pmul(i16* noundef %41, i16* noundef %41) #2
  %43 = call i16* @pdivmod(i16* noundef %42, i16* noundef %2, i16** noundef null, i16** noundef nonnull inttoptr (i64 -1 to i16**)) #2
  %44 = call i16* @psetq(i16** noundef nonnull %5, i16* noundef %43) #2
  br label %45

45:                                               ; preds = %40
  br i1 true, label %23, label %.loopexit

.loopexit:                                        ; preds = %45
  br label %46

46:                                               ; preds = %.loopexit, %39
  %47 = load i16*, i16** %5, align 8
  %.not4 = icmp eq i16* %47, null
  br i1 %.not4, label %56, label %48

48:                                               ; preds = %46
  %49 = load i16*, i16** %5, align 8
  %50 = load i16, i16* %49, align 2
  %51 = add i16 %50, -1
  store i16 %51, i16* %49, align 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i16*, i16** %5, align 8
  %55 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %54) #2
  br label %56

56:                                               ; preds = %53, %48, %46
  %57 = load i16*, i16** %6, align 8
  %.not5 = icmp eq i16* %57, null
  br i1 %.not5, label %66, label %58

58:                                               ; preds = %56
  %59 = load i16*, i16** %6, align 8
  %60 = load i16, i16* %59, align 2
  %61 = add i16 %60, -1
  store i16 %61, i16* %59, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i16*, i16** %6, align 8
  %65 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %64) #2
  br label %66

66:                                               ; preds = %63, %58, %56
  %.not6 = icmp eq i16* %0, null
  br i1 %.not6, label %73, label %67

67:                                               ; preds = %66
  %68 = load i16, i16* %0, align 2
  %69 = add i16 %68, -1
  store i16 %69, i16* %0, align 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %0) #2
  br label %73

73:                                               ; preds = %71, %67, %66
  %.not7 = icmp eq i16* %1, null
  br i1 %.not7, label %80, label %74

74:                                               ; preds = %73
  %75 = load i16, i16* %1, align 2
  %76 = add i16 %75, -1
  store i16 %76, i16* %1, align 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %1) #2
  br label %80

80:                                               ; preds = %78, %74, %73
  %.not8 = icmp eq i16* %2, null
  br i1 %.not8, label %87, label %81

81:                                               ; preds = %80
  %82 = load i16, i16* %2, align 2
  %83 = add i16 %82, -1
  store i16 %83, i16* %2, align 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %2) #2
  br label %87

87:                                               ; preds = %85, %81, %80
  %88 = load i16*, i16** %4, align 8
  %89 = call i16* @presult(i16* noundef %88) #2
  ret i16* %89
}

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i32 @podd(i16* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

declare dso_local i16* @pmul(i16* noundef, i16* noundef) #1

declare dso_local i16* @phalf(i16* noundef) #1

declare dso_local i32 @pcmpz(i16* noundef) #1

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
