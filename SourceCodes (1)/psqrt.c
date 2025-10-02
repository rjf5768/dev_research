; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psqrt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pzero = external dso_local global i16*, align 8
@.str = private unnamed_addr constant [6 x i8] c"psqrt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @psqrt(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  store i16* null, i16** %4, align 8
  store i16* null, i16** %5, align 8
  %6 = load i16*, i16** %2, align 8
  %7 = icmp ne i16* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i16*, i16** %2, align 8
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = load i16*, i16** %2, align 8
  %18 = call i32 @pcmpz(i16* noundef %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i16*, i16** @pzero, align 8
  %23 = call i16* @psetq(i16** noundef %5, i16* noundef %22)
  br label %50

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i16* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i16* @psetq(i16** noundef %4, i16* noundef %28)
  br label %49

30:                                               ; preds = %24
  %31 = load i16*, i16** %2, align 8
  %32 = call i16* @psetq(i16** noundef %4, i16* noundef %31)
  br label %33

33:                                               ; preds = %43, %30
  %34 = load i16*, i16** %4, align 8
  %35 = call i16* @psetq(i16** noundef %5, i16* noundef %34)
  %36 = load i16*, i16** %4, align 8
  %37 = load i16*, i16** %2, align 8
  %38 = load i16*, i16** %4, align 8
  %39 = call i16* @pdivmod(i16* noundef %37, i16* noundef %38, i16** noundef inttoptr (i64 -1 to i16**), i16** noundef null)
  %40 = call i16* @padd(i16* noundef %36, i16* noundef %39)
  %41 = call i16* @phalf(i16* noundef %40)
  %42 = call i16* @psetq(i16** noundef %4, i16* noundef %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i16*, i16** %4, align 8
  %45 = load i16*, i16** %5, align 8
  %46 = call i32 @pcmp(i16* noundef %44, i16* noundef %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %33, label %48, !llvm.loop !4

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i16*, i16** %4, align 8
  %52 = icmp ne i16* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i16*, i16** %4, align 8
  %55 = load i16, i16* %54, align 2
  %56 = add i16 %55, -1
  store i16 %56, i16* %54, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i16*, i16** %4, align 8
  %61 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %60)
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %53, %50
  %64 = phi i1 [ false, %53 ], [ false, %50 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i16*, i16** %2, align 8
  %67 = icmp ne i16* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i16*, i16** %2, align 8
  %70 = load i16, i16* %69, align 2
  %71 = add i16 %70, -1
  store i16 %71, i16* %69, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i16*, i16** %2, align 8
  %76 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %75)
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %74, %68, %63
  %79 = phi i1 [ false, %68 ], [ false, %63 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i16*, i16** %5, align 8
  %82 = call i16* @presult(i16* noundef %81)
  ret i16* %82
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
