; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020201-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local global i8 7, align 1
@sx = dso_local global i16 14, align 2
@ix = dso_local global i32 21, align 4
@lx = dso_local global i64 28, align 8
@Lx = dso_local global i64 35, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i8, i8* @cx, align 1
  %8 = zext i8 %7 to i32
  %9 = sdiv i32 %8, 6
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %0
  %16 = load i8, i8* @cx, align 1
  %17 = zext i8 %16 to i32
  %18 = srem i32 %17, 6
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %2, align 1
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  call void @abort() #2
  unreachable

24:                                               ; preds = %15
  %25 = load i16, i16* @sx, align 2
  %26 = zext i16 %25 to i32
  %27 = sdiv i32 %26, 6
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %3, align 2
  %29 = load i16, i16* %3, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @abort() #2
  unreachable

33:                                               ; preds = %24
  %34 = load i16, i16* @sx, align 2
  %35 = zext i16 %34 to i32
  %36 = srem i32 %35, 6
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %3, align 2
  %38 = load i16, i16* %3, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  call void @abort() #2
  unreachable

42:                                               ; preds = %33
  %43 = load i32, i32* @ix, align 4
  %44 = udiv i32 %43, 6
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @abort() #2
  unreachable

48:                                               ; preds = %42
  %49 = load i32, i32* @ix, align 4
  %50 = urem i32 %49, 6
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #2
  unreachable

54:                                               ; preds = %48
  %55 = load i64, i64* @lx, align 8
  %56 = udiv i64 %55, 6
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void @abort() #2
  unreachable

60:                                               ; preds = %54
  %61 = load i64, i64* @lx, align 8
  %62 = urem i64 %61, 6
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @abort() #2
  unreachable

66:                                               ; preds = %60
  %67 = load i64, i64* @Lx, align 8
  %68 = udiv i64 %67, 6
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 5
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @abort() #2
  unreachable

72:                                               ; preds = %66
  %73 = load i64, i64* @Lx, align 8
  %74 = urem i64 %73, 6
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 5
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @abort() #2
  unreachable

78:                                               ; preds = %72
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
