; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60960.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = alloca <4 x i8>, align 4
  %3 = alloca <4 x i8>, align 4
  %4 = alloca <4 x i8>, align 4
  %5 = bitcast <4 x i8>* %3 to i32*
  store i32 %0, i32* %5, align 4
  %6 = load <4 x i8>, <4 x i8>* %3, align 4
  store <4 x i8> %6, <4 x i8>* %4, align 4
  %7 = load <4 x i8>, <4 x i8>* %4, align 4
  %8 = udiv <4 x i8> %7, <i8 2, i8 2, i8 2, i8 2>
  store <4 x i8> %8, <4 x i8>* %2, align 4
  %9 = bitcast <4 x i8>* %2 to i32*
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = alloca <4 x i8>, align 4
  %3 = alloca <4 x i8>, align 4
  %4 = alloca <4 x i8>, align 4
  %5 = alloca <4 x i8>, align 4
  %6 = bitcast <4 x i8>* %3 to i32*
  store i32 %0, i32* %6, align 4
  %7 = load <4 x i8>, <4 x i8>* %3, align 4
  store <4 x i8> %7, <4 x i8>* %4, align 4
  %8 = load <4 x i8>, <4 x i8>* %4, align 4
  store <4 x i8> <i8 2, i8 2, i8 2, i8 2>, <4 x i8>* %5, align 4
  %9 = load <4 x i8>, <4 x i8>* %5, align 4
  %10 = udiv <4 x i8> %8, %9
  store <4 x i8> %10, <4 x i8>* %2, align 4
  %11 = bitcast <4 x i8>* %2 to i32*
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca <4 x i8>, align 4
  %4 = alloca <4 x i8>, align 4
  %5 = alloca <4 x i8>, align 4
  %6 = alloca <4 x i8>, align 4
  %7 = alloca <4 x i8>, align 4
  %8 = bitcast <4 x i8>* %4 to i32*
  store i32 %0, i32* %8, align 4
  %9 = load <4 x i8>, <4 x i8>* %4, align 4
  %10 = bitcast <4 x i8>* %5 to i32*
  store i32 %1, i32* %10, align 4
  %11 = load <4 x i8>, <4 x i8>* %5, align 4
  store <4 x i8> %9, <4 x i8>* %6, align 4
  store <4 x i8> %11, <4 x i8>* %7, align 4
  %12 = load <4 x i8>, <4 x i8>* %6, align 4
  %13 = load <4 x i8>, <4 x i8>* %7, align 4
  %14 = udiv <4 x i8> %12, %13
  store <4 x i8> %14, <4 x i8>* %3, align 4
  %15 = bitcast <4 x i8>* %3 to i32*
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i8>, align 4
  %3 = alloca <4 x i8>, align 4
  %4 = alloca <4 x i8>, align 4
  %5 = alloca <4 x i8>, align 4
  %6 = alloca <4 x i8>, align 4
  %7 = alloca <4 x i8>, align 4
  %8 = alloca <4 x i8>, align 4
  %9 = alloca <4 x i8>, align 4
  %10 = alloca <4 x i8>, align 4
  %11 = alloca <4 x i8>, align 4
  store i32 0, i32* %1, align 4
  store <4 x i8> <i8 5, i8 5, i8 5, i8 5>, <4 x i8>* %2, align 4
  store <4 x i8> <i8 2, i8 2, i8 2, i8 2>, <4 x i8>* %3, align 4
  %12 = load <4 x i8>, <4 x i8>* %2, align 4
  store <4 x i8> %12, <4 x i8>* %5, align 4
  %13 = bitcast <4 x i8>* %5 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @f1(i32 noundef %14)
  %16 = bitcast <4 x i8>* %6 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load <4 x i8>, <4 x i8>* %6, align 4
  store <4 x i8> %17, <4 x i8>* %4, align 4
  %18 = bitcast <4 x i8>* %3 to i8*
  %19 = bitcast <4 x i8>* %4 to i8*
  %20 = call i32 @memcmp(i8* noundef %18, i8* noundef %19, i64 noundef 4) #3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  call void @abort() #4
  unreachable

23:                                               ; preds = %0
  %24 = load <4 x i8>, <4 x i8>* %2, align 4
  store <4 x i8> %24, <4 x i8>* %7, align 4
  %25 = bitcast <4 x i8>* %7 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @f2(i32 noundef %26)
  %28 = bitcast <4 x i8>* %8 to i32*
  store i32 %27, i32* %28, align 4
  %29 = load <4 x i8>, <4 x i8>* %8, align 4
  store <4 x i8> %29, <4 x i8>* %4, align 4
  %30 = bitcast <4 x i8>* %3 to i8*
  %31 = bitcast <4 x i8>* %4 to i8*
  %32 = call i32 @memcmp(i8* noundef %30, i8* noundef %31, i64 noundef 4) #3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  call void @abort() #4
  unreachable

35:                                               ; preds = %23
  %36 = load <4 x i8>, <4 x i8>* %2, align 4
  %37 = load <4 x i8>, <4 x i8>* %3, align 4
  store <4 x i8> %36, <4 x i8>* %9, align 4
  %38 = bitcast <4 x i8>* %9 to i32*
  %39 = load i32, i32* %38, align 4
  store <4 x i8> %37, <4 x i8>* %10, align 4
  %40 = bitcast <4 x i8>* %10 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @f3(i32 noundef %39, i32 noundef %41)
  %43 = bitcast <4 x i8>* %11 to i32*
  store i32 %42, i32* %43, align 4
  %44 = load <4 x i8>, <4 x i8>* %11, align 4
  store <4 x i8> %44, <4 x i8>* %4, align 4
  %45 = bitcast <4 x i8>* %3 to i8*
  %46 = bitcast <4 x i8>* %4 to i8*
  %47 = call i32 @memcmp(i8* noundef %45, i8* noundef %46, i64 noundef 4) #3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  call void @abort() #4
  unreachable

50:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
