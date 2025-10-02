; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f1(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 5
  %15 = zext i32 %14 to i128
  %16 = shl i128 %12, %15
  store i128 %16, i128* %6, align 16
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i128
  %19 = load i128, i128* %6, align 16
  %20 = add nsw i128 %19, %18
  store i128 %20, i128* %6, align 16
  %21 = load i128, i128* %6, align 16
  store i128 %21, i128* %4, align 16
  %22 = bitcast i128* %4 to { i64, i64 }*
  %23 = load { i64, i64 }, { i64, i64 }* %22, align 16
  ret { i64, i64 } %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f2(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 5
  %15 = zext i32 %14 to i128
  %16 = ashr i128 %12, %15
  store i128 %16, i128* %6, align 16
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i128
  %19 = load i128, i128* %6, align 16
  %20 = add nsw i128 %19, %18
  store i128 %20, i128* %6, align 16
  %21 = load i128, i128* %6, align 16
  store i128 %21, i128* %4, align 16
  %22 = bitcast i128* %4 to { i64, i64 }*
  %23 = load { i64, i64 }, { i64, i64 }* %22, align 16
  ret { i64, i64 } %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f3(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 5
  %15 = zext i32 %14 to i128
  %16 = lshr i128 %12, %15
  store i128 %16, i128* %6, align 16
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i128
  %19 = load i128, i128* %6, align 16
  %20 = add i128 %19, %18
  store i128 %20, i128* %6, align 16
  %21 = load i128, i128* %6, align 16
  store i128 %21, i128* %4, align 16
  %22 = bitcast i128* %4 to { i64, i64 }*
  %23 = load { i64, i64 }, { i64, i64 }* %22, align 16
  ret { i64, i64 } %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 2658455991569831745807614120560689152, i128* %2, align 16
  %14 = load i128, i128* %2, align 16
  store i128 %14, i128* %4, align 16
  %15 = bitcast i128* %4 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 16
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call { i64, i64 } @f1(i64 noundef %17, i64 noundef %19, i32 noundef 12)
  %21 = bitcast i128* %5 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %20, 0
  store i64 %23, i64* %22, align 16
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %20, 1
  store i64 %25, i64* %24, align 8
  %26 = load i128, i128* %5, align 16
  store i128 %26, i128* %3, align 16
  %27 = load i128, i128* %3, align 16
  %28 = icmp ne i128 %27, 42535295865117307932921825928971026444
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %0
  store i128 -170141183460469231731687303715884105728, i128* %6, align 16
  %31 = load i128, i128* %6, align 16
  store i128 %31, i128* %8, align 16
  %32 = bitcast i128* %8 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 16
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call { i64, i64 } @f2(i64 noundef %34, i64 noundef %36, i32 noundef 12)
  %38 = bitcast i128* %9 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 16
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 8
  %43 = load i128, i128* %9, align 16
  store i128 %43, i128* %7, align 16
  %44 = load i128, i128* %7, align 16
  %45 = icmp ne i128 %44, -10633823966279326983230456482242756596
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  call void @abort() #2
  unreachable

47:                                               ; preds = %30
  store i128 -170141183460469231731687303715884105728, i128* %10, align 16
  %48 = load i128, i128* %6, align 16
  store i128 %48, i128* %12, align 16
  %49 = bitcast i128* %12 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 16
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call { i64, i64 } @f3(i64 noundef %51, i64 noundef %53, i32 noundef 12)
  %55 = bitcast i128* %13 to { i64, i64 }*
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = extractvalue { i64, i64 } %54, 0
  store i64 %57, i64* %56, align 16
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = extractvalue { i64, i64 } %54, 1
  store i64 %59, i64* %58, align 8
  %60 = load i128, i128* %13, align 16
  store i128 %60, i128* %11, align 16
  %61 = load i128, i128* %11, align 16
  %62 = icmp ne i128 %61, 10633823966279326983230456482242756620
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  call void @abort() #2
  unreachable

64:                                               ; preds = %47
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
