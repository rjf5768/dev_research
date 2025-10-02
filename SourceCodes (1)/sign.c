; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/sign.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"x = %d, ux = %u, y=%d, uy = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"z=%d, uz=%u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i32 (...) @rand()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1804289384
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* noundef %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 14638709
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %42, i32 noundef %43)
  %45 = load i32, i32* %8, align 4
  %46 = srem i32 %45, 314
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = urem i32 %47, 314
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %49, i32 noundef %50)
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 314
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = udiv i32 %54, 314
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %56, i32 noundef %57)
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 3880
  %61 = sdiv i32 %60, 314
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 3880
  %64 = udiv i32 %63, 314
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %65, i32 noundef %66)
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 580
  %70 = sdiv i32 %69, 314
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub i32 %71, 580
  %73 = udiv i32 %72, 314
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %74, i32 noundef %75)
  ret i32 0
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @atoi(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
