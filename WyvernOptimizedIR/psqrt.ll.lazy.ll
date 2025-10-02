; ModuleID = './psqrt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pzero = external dso_local global i16*, align 8
@.str = private unnamed_addr constant [6 x i8] c"psqrt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @psqrt(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  store i16* null, i16** %2, align 8
  store i16* null, i16** %3, align 8
  %.not = icmp eq i16* %0, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = load i16, i16* %0, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %0, align 2
  br label %7

7:                                                ; preds = %4, %1
  %8 = call i32 @pcmpz(i16* noundef %0) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i16*, i16** @pzero, align 8
  %12 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %11) #2
  br label %35

13:                                               ; preds = %7
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = call i16* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #2
  %17 = call i16* @psetq(i16** noundef nonnull %2, i16* noundef %16) #2
  br label %34

18:                                               ; preds = %13
  %19 = call i16* @psetq(i16** noundef nonnull %2, i16* noundef %0) #2
  br label %20

20:                                               ; preds = %28, %18
  %21 = load i16*, i16** %2, align 8
  %22 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %21) #2
  %23 = load i16*, i16** %2, align 8
  %24 = call i16* @pdivmod(i16* noundef %0, i16* noundef %23, i16** noundef nonnull inttoptr (i64 -1 to i16**), i16** noundef null) #2
  %25 = call i16* @padd(i16* noundef %23, i16* noundef %24) #2
  %26 = call i16* @phalf(i16* noundef %25) #2
  %27 = call i16* @psetq(i16** noundef nonnull %2, i16* noundef %26) #2
  br label %28

28:                                               ; preds = %20
  %29 = load i16*, i16** %2, align 8
  %30 = load i16*, i16** %3, align 8
  %31 = call i32 @pcmp(i16* noundef %29, i16* noundef %30) #2
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %20, label %33, !llvm.loop !4

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %15
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i16*, i16** %2, align 8
  %.not1 = icmp eq i16* %36, null
  br i1 %.not1, label %45, label %37

37:                                               ; preds = %35
  %38 = load i16*, i16** %2, align 8
  %39 = load i16, i16* %38, align 2
  %40 = add i16 %39, -1
  store i16 %40, i16* %38, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i16*, i16** %2, align 8
  %44 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %43) #2
  br label %45

45:                                               ; preds = %42, %37, %35
  %.not2 = icmp eq i16* %0, null
  br i1 %.not2, label %52, label %46

46:                                               ; preds = %45
  %47 = load i16, i16* %0, align 2
  %48 = add i16 %47, -1
  store i16 %48, i16* %0, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %0) #2
  br label %52

52:                                               ; preds = %50, %46, %45
  %53 = load i16*, i16** %3, align 8
  %54 = call i16* @presult(i16* noundef %53) #2
  ret i16* %54
}

declare dso_local i32 @pcmpz(i16* noundef) #1

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i16* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i16* @phalf(i16* noundef) #1

declare dso_local i16* @padd(i16* noundef, i16* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

declare dso_local i32 @pcmp(i16* noundef, i16* noundef) #1

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
