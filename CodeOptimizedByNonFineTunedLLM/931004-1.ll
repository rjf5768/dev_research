; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 %1, i32 %2, i32 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiny, align 4
  %8 = alloca %struct.tiny, align 4
  %9 = alloca %struct.tiny, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store i32 %0, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  call void @abort() #2
  unreachable

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 11
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @abort() #2
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 12
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #2
  unreachable

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 123
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.tiny], align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tiny, %struct.tiny* %3, i32 0, i32 0
  store i32 10, i32* %4, align 4
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %6 = getelementptr inbounds %struct.tiny, %struct.tiny* %5, i32 0, i32 0
  store i32 11, i32* %6, align 4
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @f(i32 noundef 3, i32 %13, i32 %15, i32 %17, i64 noundef 123)
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
