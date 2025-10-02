; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36093.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36093.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Foo = type { [4 x %struct.Bar], [124 x i8] }
%struct.Bar = type { [129 x i8] }

@foo = dso_local global [4 x %struct.Foo] zeroinitializer, align 128

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.Foo*, align 8
  %5 = alloca %struct.Bar*, align 8
  store i32 0, i32* %1, align 4
  store %struct.Foo* getelementptr inbounds ([4 x %struct.Foo], [4 x %struct.Foo]* @foo, i64 0, i64 0), %struct.Foo** %4, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.Foo*, %struct.Foo** %4, align 8
  %11 = getelementptr inbounds %struct.Foo, %struct.Foo* %10, i32 0, i32 0
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x %struct.Bar], [4 x %struct.Bar]* %11, i64 0, i64 %13
  store %struct.Bar* %14, %struct.Bar** %5, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %27, %9
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 129
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 97, %19
  %21 = trunc i32 %20 to i8
  %22 = load %struct.Bar*, %struct.Bar** %5, align 8
  %23 = getelementptr inbounds %struct.Bar, %struct.Bar* %22, i32 0, i32 0
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [129 x i8], [129 x i8]* %23, i64 0, i64 %25
  store i8 %21, i8* %26, align 1
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %15, !llvm.loop !4

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %6, !llvm.loop !6

34:                                               ; preds = %6
  %35 = load i8, i8* getelementptr inbounds ([4 x %struct.Foo], [4 x %struct.Foo]* @foo, i64 0, i64 0, i32 0, i64 3, i32 0, i64 128), align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 100
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @abort() #2
  unreachable

39:                                               ; preds = %34
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
