; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930930-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930930-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem = dso_local global [100 x i64] zeroinitializer, align 16
@wm_TR = dso_local global i64* null, align 8
@wm_HB = dso_local global i64* null, align 8
@wm_SPB = dso_local global i64* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64* noundef %0, i64* noundef %1, i64* noundef %2, i64* noundef %3, i64* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64*, i64** %7, align 8
  store i64* %13, i64** %12, align 8
  br label %14

14:                                               ; preds = %36, %5
  %15 = load i64*, i64** %10, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = icmp ult i64* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %39

19:                                               ; preds = %14
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ult i64* %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64*, i64** %8, align 8
  %30 = icmp uge i64* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 -1
  store i64* %35, i64** %7, align 8
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %25, %19
  %37 = load i64*, i64** %10, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 -1
  store i64* %38, i64** %10, align 8
  br label %14

39:                                               ; preds = %18
  %40 = load i64*, i64** %12, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = icmp ne i64* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @abort() #2
  unreachable

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 ptrtoint ([100 x i64]* @mem to i64), i64* getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99), align 8
  %2 = call i32 @f(i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 1, i64 0), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 6), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 8), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99))
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
