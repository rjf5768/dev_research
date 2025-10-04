; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inside_main = external dso_local global i32, align 4
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @my_memcpy to i8*), i8* bitcast (void (i8*, i8*, i64)* @my_bcopy to i8*), i8* bitcast (i8* (i8*, i8*, i64)* @my_memmove to i8*), i8* bitcast (i8* (i8*, i32, i64)* @my_memset to i8*), i8* bitcast (void (i8*, i64)* @my_bzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @my_memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %6, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %16, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  br label %11, !llvm.loop !4

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_bcopy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp uge i8* %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %6, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 %22, i8* %23, align 1
  br label %15, !llvm.loop !6

25:                                               ; preds = %15
  br label %44

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %37, %26
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %7, align 8
  store i8 %40, i8* %42, align 1
  br label %33, !llvm.loop !7

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @my_memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp uge i8* %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %6, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 %22, i8* %23, align 1
  br label %15, !llvm.loop !8

25:                                               ; preds = %15
  br label %44

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %37, %26
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %7, align 8
  store i8 %40, i8* %42, align 1
  br label %33, !llvm.loop !9

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @my_memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %6, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  br label %9, !llvm.loop !10

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_bzero(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %4, align 8
  %10 = icmp ne i64 %8, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i8 0, i8* %12, align 1
  br label %7, !llvm.loop !11

14:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @my_memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* @inside_main, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @abort() #2
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bcopy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @my_bcopy(i8* noundef %7, i8* noundef %8, i64 noundef %9)
  %10 = load i32, i32* @inside_main, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @abort() #2
  unreachable

13:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @my_memset(i8* noundef %8, i32 noundef %9, i64 noundef %10)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* @inside_main, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @abort() #2
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bzero(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  call void @my_bzero(i8* noundef %5, i64 noundef %6)
  %7 = load i32, i32* @inside_main, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #2
  unreachable

10:                                               ; preds = %2
  ret void
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
