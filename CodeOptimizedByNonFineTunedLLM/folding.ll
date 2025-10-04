; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/folding.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/folding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myConst = dso_local constant i32 1, align 4
@myConst2 = dso_local constant i32 32767, align 4
@.str = private unnamed_addr constant [24 x i8] c"error1: x = %d, y = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error2: x = %d, y = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"error3: x = %d, y = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"error4: x = %d, y = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 8, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %13, i32 noundef %14)
  br label %16

16:                                               ; preds = %12, %0
  store i32 128, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp ne i32 %19, 9
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %22, i32 noundef %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 32767
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef %32, i32 noundef %33)
  br label %35

35:                                               ; preds = %31, %25
  store i32 127, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %41, i32 noundef %42)
  br label %44

44:                                               ; preds = %40, %35
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
