; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-9.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i16 %1, i16 %2, i16 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiny, align 1
  %8 = alloca %struct.tiny, align 1
  %9 = alloca %struct.tiny, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.tiny* %7 to i16*
  store i16 %1, i16* %12, align 1
  %13 = bitcast %struct.tiny* %8 to i16*
  store i16 %2, i16* %13, align 1
  %14 = bitcast %struct.tiny* %9 to i16*
  store i16 %3, i16* %14, align 1
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
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 20
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @abort() #2
  unreachable

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 11
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @abort() #2
  unreachable

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 21
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @abort() #2
  unreachable

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 12
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @abort() #2
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 22
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @abort() #2
  unreachable

50:                                               ; preds = %44
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 123
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @abort() #2
  unreachable

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  ret i32 %55
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
  %10 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  store i8 20, i8* %10, align 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 1
  store i8 21, i8* %12, align 1
  %13 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %13, i32 0, i32 1
  store i8 22, i8* %14, align 1
  %15 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %16 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %17 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %18 = bitcast %struct.tiny* %15 to i16*
  %19 = load i16, i16* %18, align 1
  %20 = bitcast %struct.tiny* %16 to i16*
  %21 = load i16, i16* %20, align 1
  %22 = bitcast %struct.tiny* %17 to i16*
  %23 = load i16, i16* %22, align 1
  %24 = call i32 @f(i32 noundef 3, i16 %19, i16 %21, i16 %23, i64 noundef 123)
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
