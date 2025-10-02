; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i16, [2 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.x, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 44, i32* %9, align 4
  store i32 -13, i32* %10, align 4
  %11 = bitcast %struct.x* %6 to i16*
  %12 = load i16, i16* %11, align 4
  %13 = and i16 %12, -16257
  %14 = or i16 %13, 7808
  store i16 %14, i16* %11, align 4
  store i32 61, i32* %7, align 4
  %15 = bitcast %struct.x* %6 to i16*
  %16 = load i16, i16* %15, align 4
  %17 = and i16 %16, -128
  %18 = or i16 %17, 115
  store i16 %18, i16* %15, align 4
  store i32 -13, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = urem i32 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  call void @abort() #2
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = urem i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @abort() #2
  unreachable

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %struct.x* %6 to i16*
  %35 = load i16, i16* %34, align 4
  %36 = lshr i16 %35, 7
  %37 = and i16 %36, 127
  %38 = zext i16 %37 to i32
  %39 = srem i32 %33, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  call void @abort() #2
  unreachable

43:                                               ; preds = %32
  %44 = bitcast %struct.x* %6 to i16*
  %45 = load i16, i16* %44, align 4
  %46 = shl i16 %45, 9
  %47 = ashr i16 %46, 9
  %48 = sext i16 %47 to i32
  %49 = bitcast %struct.x* %6 to i16*
  %50 = load i16, i16* %49, align 4
  %51 = lshr i16 %50, 7
  %52 = and i16 %51, 127
  %53 = zext i16 %52 to i32
  %54 = srem i32 %48, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  call void @abort() #2
  unreachable

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = bitcast %struct.x* %6 to i16*
  %61 = load i16, i16* %60, align 4
  %62 = lshr i16 %61, 7
  %63 = and i16 %62, 127
  %64 = zext i16 %63 to i32
  %65 = urem i32 %59, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  call void @abort() #2
  unreachable

69:                                               ; preds = %58
  %70 = bitcast %struct.x* %6 to i16*
  %71 = load i16, i16* %70, align 4
  %72 = shl i16 %71, 9
  %73 = ashr i16 %72, 9
  %74 = sext i16 %73 to i32
  %75 = bitcast %struct.x* %6 to i16*
  %76 = load i16, i16* %75, align 4
  %77 = lshr i16 %76, 7
  %78 = and i16 %77, 127
  %79 = zext i16 %78 to i32
  %80 = urem i32 %74, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  call void @abort() #2
  unreachable

84:                                               ; preds = %69
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
