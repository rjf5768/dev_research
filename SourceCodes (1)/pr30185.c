; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr30185.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr30185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local { i8, i64 } @foo(i8 %0, i64 %1, i8 %2, i64 %3) #0 {
  %5 = alloca %struct.S, align 8
  %6 = alloca %struct.S, align 8
  %7 = alloca %struct.S, align 8
  %8 = bitcast %struct.S* %6 to { i8, i64 }*
  %9 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %8, i32 0, i32 0
  store i8 %0, i8* %9, align 8
  %10 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = bitcast %struct.S* %7 to { i8, i64 }*
  %12 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %11, i32 0, i32 0
  store i8 %2, i8* %12, align 8
  %13 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sdiv i64 %15, %17
  %19 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = bitcast %struct.S* %5 to { i8, i64 }*
  %21 = load { i8, i64 }, { i8, i64 }* %20, align 8
  ret { i8, i64 } %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  %3 = alloca %struct.S, align 8
  %4 = alloca %struct.S, align 8
  %5 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i64 32, i64* %6, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i64 4, i64* %7, align 8
  %8 = bitcast %struct.S* %2 to { i8, i64 }*
  %9 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = bitcast %struct.S* %3 to { i8, i64 }*
  %14 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %13, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call { i8, i64 } @foo(i8 %10, i64 %12, i8 %15, i64 %17)
  %19 = bitcast %struct.S* %4 to { i8, i64 }*
  %20 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i8, i64 } %18, 0
  store i8 %21, i8* %20, align 8
  %22 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i8, i64 } %18, 1
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %0
  call void @abort() #2
  unreachable

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i64 -8, i64* %29, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i64 -2, i64* %30, align 8
  %31 = bitcast %struct.S* %2 to { i8, i64 }*
  %32 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %struct.S* %3 to { i8, i64 }*
  %37 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call { i8, i64 } @foo(i8 %33, i64 %35, i8 %38, i64 %40)
  %42 = bitcast %struct.S* %5 to { i8, i64 }*
  %43 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %42, i32 0, i32 0
  %44 = extractvalue { i8, i64 } %41, 0
  store i8 %44, i8* %43, align 8
  %45 = getelementptr inbounds { i8, i64 }, { i8, i64 }* %42, i32 0, i32 1
  %46 = extractvalue { i8, i64 } %41, 1
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  call void @abort() #2
  unreachable

51:                                               ; preds = %28
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
