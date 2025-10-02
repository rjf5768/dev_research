; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-7.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i8 %1, i8 %2, i8 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiny, align 1
  %8 = alloca %struct.tiny, align 1
  %9 = alloca %struct.tiny, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i8 %1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  store i8 %2, i8* %13, align 1
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  store i8 %3, i8* %14, align 1
  store i32 %0, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  call void @abort() #2
  unreachable

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 11
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @abort() #2
  unreachable

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 12
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @abort() #2
  unreachable

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 123
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #2
  unreachable

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.tiny], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tiny, %struct.tiny* %3, i32 0, i32 0
  store i8 10, i8* %4, align 1
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %6 = getelementptr inbounds %struct.tiny, %struct.tiny* %5, i32 0, i32 0
  store i8 11, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i8 12, i8* %8, align 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @f(i32 noundef 3, i8 %13, i8 %15, i8 %17, i64 noundef 123)
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
