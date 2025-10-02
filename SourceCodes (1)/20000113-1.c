; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000113-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foobar(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.x, align 4
  %8 = alloca %struct.x, align 4
  %9 = alloca %struct.x*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.x* %7 to i8*
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8, i8* %10, align 4
  %14 = and i8 %12, 1
  %15 = and i8 %13, -2
  %16 = or i8 %15, %14
  store i8 %16, i8* %10, align 4
  %17 = bitcast %struct.x* %7 to i8*
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8, i8* %17, align 4
  %21 = and i8 %19, 3
  %22 = shl i8 %21, 1
  %23 = and i8 %20, -7
  %24 = or i8 %23, %22
  store i8 %24, i8* %17, align 4
  %25 = bitcast %struct.x* %7 to i8*
  %26 = load i32, i32* %6, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i8, i8* %25, align 4
  %29 = and i8 %27, 7
  %30 = shl i8 %29, 3
  %31 = and i8 %28, -57
  %32 = or i8 %31, %30
  store i8 %32, i8* %25, align 4
  %33 = bitcast %struct.x* %8 to i8*
  %34 = load i32, i32* %4, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8, i8* %33, align 4
  %37 = and i8 %35, 1
  %38 = and i8 %36, -2
  %39 = or i8 %38, %37
  store i8 %39, i8* %33, align 4
  %40 = bitcast %struct.x* %8 to i8*
  %41 = load i32, i32* %5, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8, i8* %40, align 4
  %44 = and i8 %42, 3
  %45 = shl i8 %44, 1
  %46 = and i8 %43, -7
  %47 = or i8 %46, %45
  store i8 %47, i8* %40, align 4
  %48 = bitcast %struct.x* %8 to i8*
  %49 = load i32, i32* %6, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8, i8* %48, align 4
  %52 = and i8 %50, 7
  %53 = shl i8 %52, 3
  %54 = and i8 %51, -57
  %55 = or i8 %54, %53
  store i8 %55, i8* %48, align 4
  store %struct.x* %8, %struct.x** %9, align 8
  %56 = bitcast %struct.x* %7 to i8*
  %57 = load i8, i8* %56, align 4
  %58 = lshr i8 %57, 1
  %59 = and i8 %58, 3
  %60 = zext i8 %59 to i32
  %61 = bitcast %struct.x* %7 to i8*
  %62 = load i8, i8* %61, align 4
  %63 = and i8 %62, 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %60, %64
  %66 = load %struct.x*, %struct.x** %9, align 8
  %67 = bitcast %struct.x* %66 to i8*
  %68 = load i8, i8* %67, align 4
  %69 = lshr i8 %68, 1
  %70 = and i8 %69, 3
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %65, %71
  %73 = load %struct.x*, %struct.x** %9, align 8
  %74 = bitcast %struct.x* %73 to i8*
  %75 = load i8, i8* %74, align 4
  %76 = lshr i8 %75, 3
  %77 = and i8 %76, 7
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, %72
  %80 = trunc i32 %79 to i8
  %81 = load i8, i8* %74, align 4
  %82 = and i8 %80, 7
  %83 = shl i8 %82, 3
  %84 = and i8 %81, -57
  %85 = or i8 %84, %83
  store i8 %85, i8* %74, align 4
  %86 = zext i8 %82 to i32
  %87 = bitcast %struct.x* %7 to i8*
  %88 = load i8, i8* %87, align 4
  %89 = and i8 %88, 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %100, label %92

92:                                               ; preds = %3
  %93 = load %struct.x*, %struct.x** %9, align 8
  %94 = bitcast %struct.x* %93 to i8*
  %95 = load i8, i8* %94, align 4
  %96 = lshr i8 %95, 3
  %97 = and i8 %96, 7
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 5
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %3
  call void @abort() #2
  unreachable

101:                                              ; preds = %92
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foobar(i32 noundef 1, i32 noundef 2, i32 noundef 3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
