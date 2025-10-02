; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000808-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000808-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.Point* noundef byval(%struct.Point) align 8 %6, %struct.Point* noundef byval(%struct.Point) align 8 %7, %struct.Point* noundef byval(%struct.Point) align 8 %8) #0 {
  %10 = alloca %struct.Point, align 8
  %11 = alloca %struct.Point, align 8
  %12 = alloca %struct.Point, align 8
  %13 = bitcast %struct.Point* %10 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %1, i64* %15, align 8
  %16 = bitcast %struct.Point* %11 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %3, i64* %18, align 8
  %19 = bitcast %struct.Point* %12 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %4, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %5, i64* %21, align 8
  %22 = getelementptr inbounds %struct.Point, %struct.Point* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.Point, %struct.Point* %10, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 1
  br i1 %28, label %69, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Point, %struct.Point* %11, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %11, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Point, %struct.Point* %12, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Point, %struct.Point* %12, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, -1
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, -1
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Point, %struct.Point* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 1
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Point, %struct.Point* %7, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Point, %struct.Point* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, -1
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 1
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %9
  call void @abort() #2
  unreachable

70:                                               ; preds = %65
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca %struct.Point, align 8
  %2 = alloca %struct.Point, align 8
  %3 = alloca %struct.Point, align 8
  %4 = alloca %struct.Point, align 8
  %5 = alloca %struct.Point, align 8
  %6 = alloca %struct.Point, align 8
  call void @bar()
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 0
  store i64 -1, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 0
  store i64 1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 1
  store i64 -1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 0
  store i64 -1, i64* %13, align 8
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  store i64 1, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %5, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.Point, %struct.Point* %5, i32 0, i32 1
  store i64 -1, i64* %16, align 8
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %6, i32 0, i32 0
  store i64 1, i64* %17, align 8
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %6, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = bitcast %struct.Point* %1 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.Point* %2 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %struct.Point* %3 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  call void @f(i64 %21, i64 %23, i64 %26, i64 %28, i64 %31, i64 %33, %struct.Point* noundef byval(%struct.Point) align 8 %4, %struct.Point* noundef byval(%struct.Point) align 8 %5, %struct.Point* noundef byval(%struct.Point) align 8 %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
