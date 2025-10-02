; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020529-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, %struct.xx*, i16 }

@f1.beenhere = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.xx* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xx* %0, %struct.xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %52, %19, %4
  %11 = load %struct.xx*, %struct.xx** %5, align 8
  %12 = call i32 @f1(%struct.xx* noundef %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  ret i32 0

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %10

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = trunc i32 %21 to i16
  %23 = load %struct.xx*, %struct.xx** %5, align 8
  %24 = getelementptr inbounds %struct.xx, %struct.xx* %23, i32 0, i32 2
  store i16 %22, i16* %24, align 8
  %25 = load %struct.xx*, %struct.xx** %5, align 8
  %26 = getelementptr inbounds %struct.xx, %struct.xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  call void @f2()
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @f2()
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.xx*, %struct.xx** %5, align 8
  %36 = getelementptr inbounds %struct.xx, %struct.xx* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 8
  %38 = sext i16 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %51 [
    i32 1, label %40
  ]

40:                                               ; preds = %34
  %41 = load %struct.xx*, %struct.xx** %5, align 8
  %42 = getelementptr inbounds %struct.xx, %struct.xx* %41, i32 0, i32 1
  %43 = load %struct.xx*, %struct.xx** %42, align 8
  %44 = icmp ne %struct.xx* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @f2()
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void @f2()
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %34, %50
  br label %52

52:                                               ; preds = %51
  br label %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(%struct.xx* noundef %0) #0 {
  %2 = alloca %struct.xx*, align 8
  store %struct.xx* %0, %struct.xx** %2, align 8
  %3 = load i32, i32* @f1.beenhere, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @f1.beenhere, align 4
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  %8 = load i32, i32* @f1.beenhere, align 4
  %9 = icmp sgt i32 %8, 1
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xx, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 0
  store i32 0, i32* %3, align 8
  %4 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 1
  store %struct.xx* %2, %struct.xx** %4, align 8
  %5 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 2
  store i16 23, i16* %5, align 8
  %6 = call i32 @foo(%struct.xx* noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 1
  %14 = load %struct.xx*, %struct.xx** %13, align 8
  %15 = icmp ne %struct.xx* %14, %2
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xx, %struct.xx* %2, i32 0, i32 2
  %18 = load i16, i16* %17, align 8
  %19 = sext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %12, %8, %0
  call void @abort() #2
  unreachable

22:                                               ; preds = %16
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
