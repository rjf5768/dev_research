; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43220.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %40, %0
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 1000
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1, i32* %14, align 16
  %15 = load i32, i32* %2, align 4
  %16 = srem i32 %15, 1000
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32 2, i32* %18, align 4
  %19 = bitcast i32* %13 to i8*
  store volatile i8* %19, i8** @p, align 8
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %22)
  %23 = load i32, i32* %2, align 4
  %24 = srem i32 %23, 1000
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %5, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 16
  %30 = load i32, i32* %2, align 4
  %31 = srem i32 %30, 1000
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32 2, i32* %33, align 4
  %34 = bitcast i32* %28 to i8*
  store volatile i8* %34, i8** @p, align 8
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  %37 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 1000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  br label %7

41:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
