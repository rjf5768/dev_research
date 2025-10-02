; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33669.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33669.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_t = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(%struct.foo_t* noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.foo_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.foo_t* %0, %struct.foo_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %14 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = srem i64 %12, %16
  %18 = sub nsw i64 %11, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %23, %24
  %26 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %27 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  %30 = sub i32 %29, 1
  %31 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %32 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = udiv i32 %30, %33
  %35 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %36 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %40 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %61

45:                                               ; preds = %3
  %46 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %47 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %50 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %55 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.foo_t*, %struct.foo_t** %5, align 8
  %58 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %45
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %44
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo_t, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %2, i32 0, i32 0
  store i32 8192, i32* %4, align 4
  %5 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %2, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = call i64 @foo(%struct.foo_t* noundef %2, i64 noundef 0, i32 noundef 4096)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
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
