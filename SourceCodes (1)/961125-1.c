; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961125-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961125-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 3
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @begfield(i32 noundef 58, i8* noundef %6, i8* noundef %7, i32 noundef 1, i32 noundef 1)
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = icmp ne i8* %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #2
  unreachable

13:                                               ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @begfield(i32 noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %19, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  br label %25, !llvm.loop !4

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %44, %40
  br label %14, !llvm.loop !6

48:                                               ; preds = %22
  br label %51

49:                                               ; preds = %5
  br label %50

50:                                               ; preds = %49, %50
  br label %50

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ule i8* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
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
