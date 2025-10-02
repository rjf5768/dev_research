; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950607-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950607-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Point, align 8
  %9 = alloca %struct.Point, align 8
  %10 = alloca %struct.Point, align 8
  %11 = alloca i64, align 8
  %12 = bitcast %struct.Point* %8 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  %15 = bitcast %struct.Point* %9 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %3, i64* %17, align 8
  %18 = bitcast %struct.Point* %10 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %4, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %5, i64* %20, align 8
  %21 = getelementptr inbounds %struct.Point, %struct.Point* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = getelementptr inbounds %struct.Point, %struct.Point* %10, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = mul nsw i64 %25, %30
  %32 = getelementptr inbounds %struct.Point, %struct.Point* %9, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = getelementptr inbounds %struct.Point, %struct.Point* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = mul nsw i64 %36, %41
  %43 = sub nsw i64 %31, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %52

47:                                               ; preds = %6
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %52

51:                                               ; preds = %47
  store i32 2, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %50, %46
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Point, align 8
  %3 = alloca %struct.Point, align 8
  %4 = alloca %struct.Point, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 0
  store i64 -23250, i64* %6, align 8
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 1
  store i64 23250, i64* %7, align 8
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 0
  store i64 23250, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 1
  store i64 -23250, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 0
  store i64 -23250, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  store i64 -23250, i64* %11, align 8
  %12 = bitcast %struct.Point* %2 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %struct.Point* %3 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %struct.Point* %4 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @f(i64 %14, i64 %16, i64 %19, i64 %21, i64 %24, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  call void @abort() #2
  unreachable

31:                                               ; preds = %0
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
