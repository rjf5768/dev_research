; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69447.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69447.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i8 noundef zeroext %0, i16 noundef zeroext %1, i64 noundef %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i64 noundef %5, i64 noundef %6, i8 noundef zeroext %7, i64 noundef %8) #0 {
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  store i8 %0, i8* %10, align 1
  store i16 %1, i16* %11, align 2
  store i64 %2, i64* %12, align 8
  store i8 %3, i8* %13, align 1
  store i16 %4, i16* %14, align 2
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i8 %7, i8* %17, align 1
  store i64 %8, i64* %18, align 8
  %19 = load i64, i64* %15, align 8
  %20 = mul i64 %19, 30512
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %18, align 8
  %22 = load i64, i64* %18, align 8
  %23 = mul i64 %22, %21
  store i64 %23, i64* %18, align 8
  %24 = load i64, i64* %18, align 8
  %25 = load i16, i16* %14, align 2
  %26 = zext i16 %25 to i64
  %27 = or i64 %26, %24
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %14, align 2
  %29 = load i64, i64* %18, align 8
  %30 = sub i64 %29, 2
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i8, i8* %17, align 1
  %33 = zext i8 %32 to i64
  %34 = udiv i64 %33, %31
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* %17, align 1
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 3
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %10, align 1
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i64
  %42 = load i64, i64* %18, align 8
  %43 = urem i64 %42, %41
  store i64 %43, i64* %18, align 8
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %45, 1
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %10, align 1
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %53, %54
  %56 = load i8, i8* %13, align 1
  %57 = zext i8 %56 to i64
  %58 = add i64 %55, %57
  %59 = load i16, i16* %14, align 2
  %60 = zext i16 %59 to i64
  %61 = add i64 %58, %60
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %61, %62
  %64 = load i8, i8* %17, align 1
  %65 = zext i8 %64 to i64
  %66 = add i64 %63, %65
  %67 = load i64, i64* %18, align 8
  %68 = add i64 %66, %67
  ret i64 %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i64 @foo(i8 noundef zeroext 1, i16 noundef zeroext 1, i64 noundef 1, i8 noundef zeroext 1, i16 noundef zeroext 1, i64 noundef 1, i64 noundef 1, i8 noundef zeroext 1, i64 noundef 1)
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 30519
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
