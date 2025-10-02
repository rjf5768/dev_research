; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-13.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 %1, i32 %2, i32 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiny, align 1
  %8 = alloca %struct.tiny, align 1
  %9 = alloca %struct.tiny, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.tiny* %7 to i32*
  store i32 %1, i32* %12, align 1
  %13 = bitcast %struct.tiny* %8 to i32*
  store i32 %2, i32* %13, align 1
  %14 = bitcast %struct.tiny* %9 to i32*
  store i32 %3, i32* %14, align 1
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
  %27 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 30
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @abort() #2
  unreachable

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 40
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @abort() #2
  unreachable

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 11
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void @abort() #2
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 21
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  call void @abort() #2
  unreachable

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 31
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @abort() #2
  unreachable

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 41
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @abort() #2
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 12
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void @abort() #2
  unreachable

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 22
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void @abort() #2
  unreachable

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 32
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  call void @abort() #2
  unreachable

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 42
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  call void @abort() #2
  unreachable

86:                                               ; preds = %80
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 123
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @abort() #2
  unreachable

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  ret i32 %91
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
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %15, i32 0, i32 2
  store i8 30, i8* %16, align 1
  %17 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %18 = getelementptr inbounds %struct.tiny, %struct.tiny* %17, i32 0, i32 2
  store i8 31, i8* %18, align 1
  %19 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %20 = getelementptr inbounds %struct.tiny, %struct.tiny* %19, i32 0, i32 2
  store i8 32, i8* %20, align 1
  %21 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %22 = getelementptr inbounds %struct.tiny, %struct.tiny* %21, i32 0, i32 3
  store i8 40, i8* %22, align 1
  %23 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %24 = getelementptr inbounds %struct.tiny, %struct.tiny* %23, i32 0, i32 3
  store i8 41, i8* %24, align 1
  %25 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %26 = getelementptr inbounds %struct.tiny, %struct.tiny* %25, i32 0, i32 3
  store i8 42, i8* %26, align 1
  %27 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %29 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %30 = bitcast %struct.tiny* %27 to i32*
  %31 = load i32, i32* %30, align 1
  %32 = bitcast %struct.tiny* %28 to i32*
  %33 = load i32, i32* %32, align 1
  %34 = bitcast %struct.tiny* %29 to i32*
  %35 = load i32, i32* %34, align 1
  %36 = call i32 @f(i32 noundef 3, i32 %31, i32 %33, i32 %35, i64 noundef 123)
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
