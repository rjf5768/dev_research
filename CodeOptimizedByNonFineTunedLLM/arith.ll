; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/arith.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 2097151, align 4
@y = dso_local global i32 1048575, align 4
@.str = private unnamed_addr constant [12 x i8] c"temp = %hd\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"i_temp = %x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %6, align 2
  %15 = load i16, i16* %6, align 2
  %16 = sext i16 %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %16)
  %18 = load i32, i32* %1, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %6, align 2
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %6, align 2
  %31 = load i16, i16* %6, align 2
  %32 = sext i16 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %32)
  %34 = load i32, i32* %2, align 4
  %35 = mul nsw i32 %34, 120
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %6, align 2
  %41 = load i16, i16* %6, align 2
  %42 = sext i16 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %42)
  %44 = load i32, i32* %2, align 4
  %45 = mul nsw i32 %44, -176
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load i16, i16* %6, align 2
  %52 = sext i16 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %52)
  store i32 120, i32* %4, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = srem i32 %57, 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %6, align 2
  %61 = load i16, i16* %6, align 2
  %62 = sext i16 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %62)
  store i32 -217, i32* %4, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %1, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %1, align 4
  %70 = udiv i32 %67, %69
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %6, align 2
  %73 = load i16, i16* %6, align 2
  %74 = sext i16 %73 to i32
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %74)
  %76 = load i32, i32* @x, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @x, align 4
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %79)
  %81 = load i32, i32* @x, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @x, align 4
  %83 = load i32, i32* @x, align 4
  %84 = load i32, i32* @y, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %87)
  %89 = load i32, i32* @x, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @y, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %94)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @my_test()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
