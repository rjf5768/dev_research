; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990811-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990811-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 0, label %7
    i32 1, label %13
    i32 2, label %17
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.s*
  %10 = getelementptr inbounds %struct.s, %struct.s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i16*
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  call void @abort() #2
  unreachable

23:                                               ; preds = %17, %13, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  %3 = alloca [10 x i16], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  store i64 1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 1
  store i32 2, i32* %7, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %0
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = trunc i32 %12 to i16
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i16], [10 x i16]* %3, i64 0, i64 %15
  store i16 %13, i16* %16, align 2
  %17 = load i32, i32* %5, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8, !llvm.loop !4

25:                                               ; preds = %8
  %26 = bitcast %struct.s* %2 to i8*
  %27 = call i32 @foo(i32 noundef 0, i8* noundef %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @abort() #2
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = call i32 @foo(i32 noundef 1, i8* noundef %32)
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void @abort() #2
  unreachable

36:                                               ; preds = %30
  %37 = getelementptr inbounds [10 x i16], [10 x i16]* %3, i64 0, i64 0
  %38 = getelementptr inbounds i16, i16* %37, i64 3
  %39 = bitcast i16* %38 to i8*
  %40 = call i32 @foo(i32 noundef 2, i8* noundef %39)
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @abort() #2
  unreachable

43:                                               ; preds = %36
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
