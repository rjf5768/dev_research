; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.baz* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.baz*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.baz* %0, %struct.baz** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.baz*, %struct.baz** %7, align 8
  %14 = getelementptr inbounds %struct.baz, %struct.baz* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %52, label %17

17:                                               ; preds = %6
  %18 = load %struct.baz*, %struct.baz** %7, align 8
  %19 = getelementptr inbounds %struct.baz, %struct.baz* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = load %struct.baz*, %struct.baz** %7, align 8
  %24 = getelementptr inbounds %struct.baz, %struct.baz* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  %28 = load %struct.baz*, %struct.baz** %7, align 8
  %29 = getelementptr inbounds %struct.baz, %struct.baz* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load %struct.baz*, %struct.baz** %7, align 8
  %34 = getelementptr inbounds %struct.baz, %struct.baz* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 5
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 6
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 7
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 8
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 9
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46, %43, %40, %37, %32, %27, %22, %17, %6
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0, %struct.baz* noundef byval(%struct.baz) align 8 %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %2, i8** %5, align 8
  call void @bar(%struct.baz* noundef %1, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.baz, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 2
  store i32 3, i32* %5, align 4
  %6 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 3
  store i32 4, i32* %6, align 4
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 4
  store i32 5, i32* %7, align 4
  call void @foo(i8* noundef null, %struct.baz* noundef byval(%struct.baz) align 8 %2, i8* noundef null)
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
