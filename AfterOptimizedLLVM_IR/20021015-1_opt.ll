; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021015-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021015-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_list = dso_local global [1 x i8] c"1", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8** noundef %3, i8** noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %11 = load i8**, i8*** %10, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, getelementptr inbounds ([1 x i8], [1 x i8]* @g_list, i64 0, i64 0)
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  call void @abort() #2
  unreachable

15:                                               ; preds = %5
  %16 = load i8**, i8*** %10, align 8
  %17 = load i8*, i8** %16, align 8
  store i8 0, i8* %17, align 1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @g_list, i64 0, i64 0), i8** %2, align 8
  store i32 100, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* %5, align 4
  call void @g(i8* noundef null, i8* noundef %14, i32 noundef %15, i8** noundef %3, i8** noundef %2)
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7, !llvm.loop !4

28:                                               ; preds = %7
  ret i32 0
}

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
