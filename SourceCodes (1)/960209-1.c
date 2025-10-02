; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960209-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960209-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type { i8 }

@yabba = dso_local global i32 1, align 4
@an_array = dso_local global [5 x %struct.a_struct] zeroinitializer, align 1
@a_ptr = dso_local global %struct.a_struct* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = trunc i32 %0 to i8
  store i8 %12, i8* %4, align 1
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %2
  %16 = load i32, i32* @yabba, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %75

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = udiv i64 4000000, %20
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %59, %19
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %23, 11
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %27, 256
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub nsw i64 %30, %31
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %11, align 8
  %36 = sub nsw i64 0, %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i64 [ %36, %34 ], [ 0, %37 ]
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* %11, align 8
  %46 = sub nsw i64 0, %45
  br label %49

47:                                               ; preds = %38
  %48 = load i64, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i64 [ %46, %44 ], [ %48, %47 ]
  %51 = icmp slt i64 %39, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %26, !llvm.loop !4

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %22, !llvm.loop !6

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* @yabba, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %75

67:                                               ; preds = %63
  %68 = load i8, i8* %4, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [5 x %struct.a_struct], [5 x %struct.a_struct]* @an_array, i64 0, i64 %69
  store %struct.a_struct* %70, %struct.a_struct** @a_ptr, align 8
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i8
  %73 = load %struct.a_struct*, %struct.a_struct** @a_ptr, align 8
  %74 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %73, i32 0, i32 0
  store i8 %72, i8* %74, align 1
  br label %75

75:                                               ; preds = %67, %66, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 noundef 1, i64 noundef 0)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
