; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-10-SignConversions.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-10-SignConversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"%d %d --> unsigned: us = %d, us2 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%d %d -->   signed:  s = %d,  s2 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d %d --> unsigned: uc = %d, uc2 = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%d %d -->   signed: sc = %d, sc2 = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @getUC() #0 {
  ret i8 -128
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @getSC() #0 {
  ret i8 -128
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %12 = call signext i8 @getSC()
  store i8 %12, i8* %2, align 1
  %13 = call zeroext i8 @getUC()
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %2, align 1
  %15 = sext i8 %14 to i16
  store i16 %15, i16* %4, align 2
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i8, i8* %2, align 1
  %19 = sext i8 %18 to i16
  store i16 %19, i16* %6, align 2
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i16
  store i16 %21, i16* %7, align 2
  %22 = load i8, i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29)
  %31 = load i8, i8* %2, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load i16, i16* %6, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* %7, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  %40 = load i8, i8* %2, align 1
  store i8 %40, i8* %8, align 1
  %41 = load i8, i8* %3, align 1
  store i8 %41, i8* %9, align 1
  %42 = load i8, i8* %2, align 1
  store i8 %42, i8* %10, align 1
  %43 = load i8, i8* %3, align 1
  store i8 %43, i8* %11, align 1
  %44 = load i8, i8* %2, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51)
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* %3, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %11, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60)
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
