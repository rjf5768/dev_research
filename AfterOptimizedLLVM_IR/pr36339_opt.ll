; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36339.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @try_a(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64* %5, i64** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %6, i64* %8, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = bitcast i64* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = ptrtoint i8* %13 to i64
  %15 = call i32 @check_a(i64 noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_a(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %4, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 42
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @try_a(i64 noundef 42)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
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
