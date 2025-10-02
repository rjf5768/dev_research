; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"1234111111\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"1234111127\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @str2llu(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = sub nsw i32 %8, 48
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %2, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %27

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 48
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* %3, align 8
  %23 = mul i64 %22, 10
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %23, %25
  store i64 %26, i64* %3, align 8
  br label %11

27:                                               ; preds = %18
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sqrtllu(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i64, i64* %4, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = lshr i64 %9, 1
  store i64 %10, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %6, !llvm.loop !4

13:                                               ; preds = %6
  %14 = load i64, i64* %4, align 8
  %15 = lshr i64 %14, 1
  %16 = shl i64 1, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = lshr i64 %21, 1
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %20, %13
  br label %26

26:                                               ; preds = %34, %25
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = udiv i64 %27, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %30, %31
  %33 = lshr i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %26, label %38, !llvm.loop !6

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @plist(i64 noundef %0, i64 noundef %1, i64* noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  store i64* %12, i64** %10, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @sqrtllu(i64 noundef %19)
  store i64 %20, i64* %9, align 8
  store i64 3, i64* %8, align 8
  br label %21

21:                                               ; preds = %33, %18
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = urem i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 2
  store i64 %35, i64* %8, align 8
  br label %21, !llvm.loop !7

36:                                               ; preds = %21
  %37 = load i64, i64* %7, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %10, align 8
  store i64 %37, i64* %38, align 8
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %7, align 8
  br label %14, !llvm.loop !8

44:                                               ; preds = %14
  %45 = load i64*, i64** %10, align 8
  store i64 0, i64* %45, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = ptrtoint i64* %46 to i64
  %49 = ptrtoint i64* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i64], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i64 @str2llu(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @str2llu(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %11 = call i32 @plist(i64 noundef %8, i64 noundef %9, i64* noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = icmp ne i64 %13, 1234111117
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 1234111121
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 2
  %21 = load i64, i64* %20, align 16
  %22 = icmp ne i64 %21, 1234111127
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %2
  call void @abort() #2
  unreachable

28:                                               ; preds = %23
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
