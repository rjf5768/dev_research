; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34176.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mult_index = type { i32, i32 }

@foo.count = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hash_find_entry(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  store i64 2, i64* %3, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.mult_index* @foo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @foo.count, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @foo.count, align 4
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  ret %struct.mult_index* null
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mult_index*, align 8
  %6 = alloca %struct.mult_index*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %8

8:                                                ; preds = %29, %0
  %9 = call i32 @hash_find_entry(i64* noundef %3)
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %36

18:                                               ; preds = %8
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.mult_index* @foo(i64 noundef %19)
  store %struct.mult_index* %20, %struct.mult_index** %6, align 8
  %21 = load %struct.mult_index*, %struct.mult_index** %6, align 8
  store %struct.mult_index* %21, %struct.mult_index** %5, align 8
  br label %22

22:                                               ; preds = %26, %18
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %4, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.mult_index*, %struct.mult_index** %5, align 8
  %28 = getelementptr inbounds %struct.mult_index, %struct.mult_index* %27, i32 1
  store %struct.mult_index* %28, %struct.mult_index** %5, align 8
  br label %22, !llvm.loop !4

29:                                               ; preds = %22
  %30 = load %struct.mult_index*, %struct.mult_index** %5, align 8
  %31 = load %struct.mult_index*, %struct.mult_index** %6, align 8
  %32 = ptrtoint %struct.mult_index* %30 to i64
  %33 = ptrtoint %struct.mult_index* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  store i64 %35, i64* %2, align 8
  br label %8

36:                                               ; preds = %17
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
