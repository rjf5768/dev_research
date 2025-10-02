; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920411-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920411-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %5, align 8
  %8 = bitcast i64* %6 to i8*
  store i8* %8, i8** %7, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %20, i8* %23, align 1
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %13, !llvm.loop !4

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %9, !llvm.loop !6

34:                                               ; preds = %9
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  store i32 0, i32* %1, align 4
  store i32 8, i32* %2, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %10
  store i8 32, i8* %11, align 1
  br label %4, !llvm.loop !7

12:                                               ; preds = %4
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %14 = call i64 @f(i8* noundef %13)
  %15 = icmp ne i64 %14, 2314885530818453536
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @abort() #2
  unreachable

17:                                               ; preds = %12
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
