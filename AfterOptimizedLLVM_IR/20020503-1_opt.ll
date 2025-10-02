; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020503-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020503-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %5 = call i8* @inttostr(i64 noundef -1, i8* noundef %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 45
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @inttostr(i64 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 127
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8 0, i8* %10, align 1
  %11 = load i64, i64* %3, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %24, %16
  %18 = load i64, i64* %5, align 8
  %19 = urem i64 %18, 10
  %20 = add i64 48, %19
  %21 = trunc i64 %20 to i8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %6, align 8
  store i8 %21, i8* %23, align 1
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 10
  store i64 %26, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %17, label %28, !llvm.loop !4

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** %6, align 8
  store i8 45, i8* %33, align 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %6, align 8
  ret i8* %35
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
