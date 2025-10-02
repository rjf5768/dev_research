; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84169.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i128 0, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 0, i128* %3, align 16
  %7 = bitcast i128* %3 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i128 0, i128* %4, align 16
  %12 = bitcast i128* %4 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 16
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i128 0, i128* %5, align 16
  %17 = bitcast i128* %5 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 16
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call { i64, i64 } @foo(i64 noundef %9, i64 noundef %11, i64 noundef %14, i64 noundef %16, i64 noundef %19, i64 noundef %21, i128 noundef 0, i128 noundef 0, i128 noundef 4)
  %23 = bitcast i128* %6 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i64 } %22, 0
  store i64 %25, i64* %24, align 16
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i64 } %22, 1
  store i64 %27, i64* %26, align 8
  %28 = load i128, i128* %6, align 16
  store i128 %28, i128* %2, align 16
  %29 = load i128, i128* %2, align 16
  %30 = icmp ne i128 %29, -64
  br i1 %30, label %31, label %32

31:                                               ; preds = %0
  call void @abort() #3
  unreachable

32:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal { i64, i64 } @foo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i128 noundef %6, i128 noundef %7, i128 noundef %8) #0 {
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = bitcast i128* %11 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %0, i64* %21, align 16
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %1, i64* %22, align 8
  %23 = load i128, i128* %11, align 16
  %24 = bitcast i128* %12 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %2, i64* %25, align 16
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %3, i64* %26, align 8
  %27 = load i128, i128* %12, align 16
  %28 = bitcast i128* %13 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  store i64 %4, i64* %29, align 16
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  store i64 %5, i64* %30, align 8
  %31 = load i128, i128* %13, align 16
  store i128 %23, i128* %14, align 16
  store i128 %27, i128* %15, align 16
  store i128 %31, i128* %16, align 16
  store i128 %6, i128* %17, align 16
  store i128 %7, i128* %18, align 16
  store i128 %8, i128* %19, align 16
  %32 = load i128, i128* %19, align 16
  %33 = trunc i128 %32 to i8
  %34 = zext i8 %33 to i129
  %35 = call { i129, i1 } @llvm.smul.with.overflow.i129(i129 %34, i129 -16)
  %36 = extractvalue { i129, i1 } %35, 1
  %37 = extractvalue { i129, i1 } %35, 0
  %38 = trunc i129 %37 to i128
  %39 = zext i128 %38 to i129
  %40 = icmp ne i129 %37, %39
  %41 = or i1 %36, %40
  store i128 %38, i128* %19, align 16
  %42 = load i128, i128* @b, align 16
  %43 = load i128, i128* %19, align 16
  %44 = add i128 %42, %43
  store i128 %44, i128* %10, align 16
  %45 = bitcast i128* %10 to { i64, i64 }*
  %46 = load { i64, i64 }, { i64, i64 }* %45, align 16
  ret { i64, i64 } %46
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i129, i1 } @llvm.smul.with.overflow.i129(i129, i129) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
