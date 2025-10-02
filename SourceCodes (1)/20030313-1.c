; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030313-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030313-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i64, i64, i64, i64 }

@x = dso_local global %struct.A { i64 13, i64 14, i64 15, i64 16 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 12
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 11
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8
  call void @abort() #2
  unreachable

19:                                               ; preds = %13
  %20 = load i64*, i64** %3, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** %3, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 12
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  call void @abort() #2
  unreachable

30:                                               ; preds = %24
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 3
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 13
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  call void @abort() #2
  unreachable

41:                                               ; preds = %35
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 14
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  call void @abort() #2
  unreachable

52:                                               ; preds = %46
  %53 = load i64*, i64** %3, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 5
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i64*, i64** %3, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 15
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  call void @abort() #2
  unreachable

63:                                               ; preds = %57
  %64 = load i64*, i64** %3, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 10
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 6
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i64*, i64** %3, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 11
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 16
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %63
  call void @abort() #2
  unreachable

74:                                               ; preds = %68
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [40 x i64], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %6
  store i64 1, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %10
  store i64 11, i64* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %14
  store i64 2, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %18
  store i64 12, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %22
  store i64 3, i64* %23, align 8
  %24 = call %struct.A* @bar()
  %25 = getelementptr inbounds %struct.A, %struct.A* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %29
  store i64 %26, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %33
  store i64 4, i64* %34, align 8
  %35 = call %struct.A* @bar()
  %36 = getelementptr inbounds %struct.A, %struct.A* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %40
  store i64 %37, i64* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %44
  store i64 5, i64* %45, align 8
  %46 = call %struct.A* @bar()
  %47 = getelementptr inbounds %struct.A, %struct.A* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %51
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %55
  store i64 6, i64* %56, align 8
  %57 = call %struct.A* @bar()
  %58 = getelementptr inbounds %struct.A, %struct.A* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 %62
  store i64 %59, i64* %63, align 8
  %64 = getelementptr inbounds [40 x i64], [40 x i64]* %2, i64 0, i64 0
  %65 = load i32, i32* %3, align 4
  call void @foo(i64* noundef %64, i32 noundef %65)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.A* @bar() #0 {
  %1 = alloca %struct.A*, align 8
  store %struct.A* @x, %struct.A** %1, align 8
  %2 = load %struct.A*, %struct.A** %1, align 8
  ret %struct.A* %2
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
